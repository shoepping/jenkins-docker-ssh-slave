if([System.String]::IsNullOrWhiteSpace($env:IMAGE_NAME)) {
    $env:IMAGE_NAME='jenkins4eval/ssh-agent:test-windows'
}

& docker build -f Dockerfile-windows -t $env:IMAGE_NAME .
