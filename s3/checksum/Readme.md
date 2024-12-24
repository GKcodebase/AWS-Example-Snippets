## Create a new s3 Bucket

```md
aws s3 mb s3://checksum-example-gk-23
```


## Create a file

```
    echo "Hello World" > myfile.txt
```

## Get CheckSum for file

```
md5sum myfile.txt
```

## Upload file and get etags

```
 aws s3 cp myfile.txt  s3://checksum-example-gk-23
 aws s3api head-object --bucket checksum-example-gk-23  --key myfile.txt
```

## File Upload with a different checksum

```sh
rhash --crc32 --simple myfile.txt

```


```sh
aws s3api put-object \
    --bucket checksum-example-gk-23 \
    --key myfilesha1.txt \
    --body myfile.txt \
    --metadata x-amz-checksum-sha1=ZIpqb//9qgutsjuLr5C2Fo3Razo=
```
