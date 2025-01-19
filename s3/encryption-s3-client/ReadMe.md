## Create a bucket
```sh
    aws s3 mb s3://encrypt-client-fun-gk-2255
```

## Create a new file
```sh
    echo "HelloWorld" > hello.txt
```

## Ruby

### Init
```sh
bundle init
bundle install
```

### Run our our SDK ruby script
```sh
bundle exec ruby encrypt.rb
```

### Cleanup
```sh
aws s3 rm s3://encrypt-client-fun-gk-2255/hello.txt \
aws s3 rb s3://encrypt-client-fun-gk-2255
```

