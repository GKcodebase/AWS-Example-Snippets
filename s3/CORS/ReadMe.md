# Create Website

## Create a bucket

```sh
aws s3 mb s3://cors-fun-ab-36252-gk
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-ab-36252-gk \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun-ab-36252-gk --policy file://bucket-policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-ab-36252 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin
```sh
aws s3 cp index.html s3://cors-fun-ab-36252-gk
```

## View the website and see if the index.html is there.

```sh
https://cors-fun-ab-36252-gk.s3.us-east-1.amazonaws.com/index.html
```

# Create Website - With Cors

```sh
aws s3 mb s3://cors-fun2-gk-36252
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun2-gk-36252 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun2-gk-36252 --policy file://bucket-policy2.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun2-gk-36252 --website-configuration file://website.json
```

## Upload our javascript file

```sh
aws s3 cp hello.js s3://cors-fun2-gk-36252

```

## Create API Gateway with mock response and then test the endpoint

```sh
curl -X POST -H "Content-Type: application/json" https://r9evnopf1c.execute-api.us-east-1.amazonaws.com/prd/hello

```

## Set CORS on our bucket
```sh
aws s3api put-bucket-cors --bucket cors-fun-ab-36252-gk  --cors-configuration file://cors.json
```

