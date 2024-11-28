Import-Module AWS.Tools.S3

$region = "us-east-1"
$bucketName = Read-Host -Prompt 'Enter s3 bucket name'

Write-Host "Aws Region:$region"
Write-Host "s3 Bucket Name:$bucketName"

function BucketExists { 
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue
    return $null -ne $bucket
}

if(-not(BucketExists)){
    New-S3Bucket -BucketName $bucketName -Region $region
}
else{
    Write-Host "Bucket already exists"
}
# Create File Name
$fileName = "myFile.txt";
$filrContent = "Hello world";
Set-Content -Path $fileName -Value $filrContent

Write-S3Object -BucketName $bucketName -File $fileName -Key $fileName
