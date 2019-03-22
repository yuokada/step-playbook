
```
$ export AWS_PROFILE= ;\
  export TF_VAR_region="$(aws configure --profile $AWS_PROFILE get region)" ;\
  export TF_VAR_prod_access_key="$(aws configure --profile $AWS_PROFILE get aws_access_key_id)" ;\
  export TF_VAR_prod_secret_key="$(aws configure --profile $AWS_PROFILE get aws_secret_access_key)" ;\
  echo $TF_VAR_region $TF_VAR_prod_access_key $TF_VAR_prod_secret_key
```


## Get IAM User id
```
$ aws iam get-user |jq ".User".UserId
```

## AWS Policy

```
{
  "Id": "Policy1553267026636",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1553267019759",
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::nobdata001/*",
      "Principal": "*"
    }
  ]
}
```


## Link

### S3 bucket

- [AWS: aws\_s3\_bucket \- Terraform by HashiCorp](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)

### AWS Policy

- [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)
- [S3でIP制限 \- Qiita](https://qiita.com/you_matz/items/b3885891e576f5604323)
- [Amazon S3のポリシーを設定してバケットの中身をすべて公開する \-\- ぺけみさお](https://www.xmisao.com/2013/02/03/s3-bucket-policy.html)

### Data Sources

- [Data Sources \- Configuration Language \- Terraform by HashiCorp](https://www.terraform.io/docs/configuration/data-sources.html)
- [Terraformでもいつでも最新AMIからEC2を起動したい ｜ DevelopersIO](https://dev.classmethod.jp/cloud/aws/launch-ec2-from-latest-ami-by-terraform/)
- [Terraformでテンプレートを使ってポリシーを定義する \- Qiita](https://qiita.com/ringo/items/9e05df9da984fdc059f3)

- [Template: template\_file \- Terraform by HashiCorp](https://www.terraform.io/docs/providers/template/d/file.html#)
