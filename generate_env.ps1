# PowerShell 스크립트로 .env 파일 생성

param (
    [string]$TargetDir
)

# 디버깅 출력
Write-Output "Target Directory: $TargetDir"

# 빈 문자열이 전달되었는지 확인
if ([string]::IsNullOrWhiteSpace($TargetDir)) {
    Write-Error "Target directory is not specified or is empty."
    exit 1
}

# .env 파일 내용
$envContent = @"
# please replace 'your_api_key_here' with your actual API key
GOOGLE_API_KEY=your_api_key_here
GPT_API_KEY=your_api_key_here
# Other environment variables can be added here
"@

# .env 파일 생성
$envFilePath = Join-Path -Path $TargetDir -ChildPath ".env"
Write-Output "Creating .env file at: $envFilePath"

# UTF-8 인코딩으로 파일 생성
$envContent | Out-File -FilePath $envFilePath -Encoding utf8
