# Packer AMI builder

## How to build ami image

```
$ cd `git rev-parse --show-toplevel`
$ packer validate packer/build-script.json
$ packer build    packer/build-script.json
```

## Change aws profile
[Amazon AMI \- Builders \- Packer by HashiCorp](https://www.packer.io/docs/builders/amazon.html)

```
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"

$ export AWS_DEFAULT_REGION="$(aws configure get region)" ;\
  export AWS_ACCESS_KEY_ID="$(aws configure get aws_access_key_id)" ;\
  export AWS_SECRET_ACCESS_KEY="$(aws configure get aws_secret_access_key)" ;\
  echo $AWS_DEFAULT_REGION $AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY

$ packer build packer.json
```

## Set variable
[User Variables \- Templates \- Packer by HashiCorp](https://www.packer.io/docs/templates/user-variables.html)
