## Encryption in S3

### Creating buccket
```sh
aws s3 mb s3://encryption-fun-gk
```

### Create a file and Put Object with encrpytion SS3-S3 (Default)

```sh
echo "Hello World" > hello.txt
aws s3 cp hello.txt  s3://encryption-fun-gk
```

### Put Object with encryption of SS3-KMS

```sh
aws s3api put-object \
--bucket encryption-fun-gk \
--key hello.txt \
--body hello.txt \
--server-side-encryption "aws:kms" \
--ssekms-key-id "[KMS KEY]"
```
### Put Object with SSE-C via aws s3

https://catalog.us-east-1.prod.workshops.aws/workshops/aad9ff1e-b607-45bc-893f-121ea5224f24/en-US/s3/serverside/ssec

```sh
openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-fun-gk/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key

aws s3 cp s3://encryption-fun-gk/hello.txt hello.txt --sse-c AES256 --sse-c-key fileb://ssec.key
```
Won't download without supplying the encryption