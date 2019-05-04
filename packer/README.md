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
$ export AWS_PROFILE=default ;\
  export AWS_DEFAULT_REGION="$(aws    configure --profile $AWS_PROFILE get region)" ;\
  export AWS_ACCESS_KEY_ID="$(aws     configure --profile $AWS_PROFILE get aws_access_key_id)" ;\
  export AWS_SECRET_ACCESS_KEY="$(aws configure --profile $AWS_PROFILE get aws_secret_access_key)" ;\
  echo $AWS_DEFAULT_REGION $AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY

$ packer build packer.json
```

## Set variable
[User Variables \- Templates \- Packer by HashiCorp](https://www.packer.io/docs/templates/user-variables.html)

## Change base AMI

- [Ubuntu Amazon EC2 AMI Finder](https://cloud-images.ubuntu.com/locator/ec2/ "Ubuntu Amazon EC2 AMI Finder")
- [Amazon EBS - Builders - Packer by HashiCorp](https://www.packer.io/docs/builders/amazon-ebs.html "Amazon EBS - Builders - Packer by HashiCorp")

```
% aws --profile packer ec2 describe-images --image-ids ami-033a0960d9d83ead0
```

### Example

```
% aws --profile packer ec2 describe-images --image-ids ami-033a0960d9d83ead0
{
    "Images": [
        {
            "Architecture": "x86_64",
            "CreationDate": "2019-05-01T11:45:45.000Z",
            "ImageId": "ami-033a0960d9d83ead0",
            "ImageLocation": "099720109477/ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20190429",
            "ImageType": "machine",
            "Public": true,
            "OwnerId": "099720109477",
            "State": "available",
            "BlockDeviceMappings": [
                {
                    "DeviceName": "/dev/sda1",
                    "Ebs": {
                        "DeleteOnTermination": true,
                        "SnapshotId": "snap-0a8a9392ce686c33c",
                        "VolumeSize": 8,
                        "VolumeType": "gp2",
                        "Encrypted": false
                    }
                },
                {
                    "DeviceName": "/dev/sdb",
                    "VirtualName": "ephemeral0"
                },
                {
                    "DeviceName": "/dev/sdc",
                    "VirtualName": "ephemeral1"
                }
            ],
            "Description": "Canonical, Ubuntu, 18.04 LTS, amd64 bionic image build on 2019-04-29",
            "EnaSupport": true,
            "Hypervisor": "xen",
            "Name": "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20190429",
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SriovNetSupport": "simple",
            "VirtualizationType": "hvm"
        }
    ]
}
```
