# Packer AMI builder

## How to build ami image

```
$ cd `git rev-parse --show-toplevel`
$ packer build build-script.json
$ packer validate build-script.json
```

## Change aws profile
[Amazon AMI \- Builders \- Packer by HashiCorp](https://www.packer.io/docs/builders/amazon.html)

```
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
$ packer build packer.json
```

## Set variable
[User Variables \- Templates \- Packer by HashiCorp](https://www.packer.io/docs/templates/user-variables.html)
