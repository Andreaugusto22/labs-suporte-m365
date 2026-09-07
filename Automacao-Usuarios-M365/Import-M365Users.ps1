# 1. Conexão ao Tenant com escopo de administração de usuários
Write-Host "Iniciando autenticação no Microsoft Entra ID..." -ForegroundColor Cyan
Connect-MgGraph -Scopes "User.ReadWrite.All", "Directory.ReadWrite.All"

# 2. Caminho do arquivo CSV
$CsvPath = ".\usuarios.csv"

if (-not (Test-Path $CsvPath)) {
    Write-Error "O arquivo $CsvPath não foi encontrado. Verifique o diretório."
    exit
}

# 3. Importação e processamento dos usuários
$Users = Import-Csv -Path $CsvPath -Encoding UTF8

foreach ($User in $Users) {
    Write-Host "Processando criação do usuário: $($User.DisplayName)..." -ForegroundColor Yellow

    # Definição do perfil de senha temporária (Força troca no 1º logon)
    $PasswordProfile = @{
        Password = "SenhaTemporaria#2026!"
        ForceChangePasswordNextSignIn = $true
    }

    # Parâmetros de criação do usuário
    $UserParams = @{
        AccountEnabled    = $true
        DisplayName       = $User.DisplayName
        GivenName         = $User.GivenName
        Surname           = $User.Surname
        MailNickname      = $User.UserPrincipalName.Split("@")[0]
        UserPrincipalName = $User.UserPrincipalName
        PasswordProfile   = $PasswordProfile
        Department        = $User.Department
        JobTitle          = $User.JobTitle
        UsageLocation     = $User.UsageLocation
    }

    try {
        New-MgUser @UserParams | Out-Null
        Write-Host "[OK] Usuário $($User.UserPrincipalName) criado com sucesso!" -ForegroundColor Green
    }
    catch {
        Write-Host "[ERRO] Falha ao criar $($User.UserPrincipalName): $_" -ForegroundColor Red
    }
}

Write-Host "`nProcesso concluído com sucesso!" -ForegroundColor Cyan
