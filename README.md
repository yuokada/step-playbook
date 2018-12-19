## MEMO

```
$ wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py ;\
  wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini

```

## Official AMI

- https://cloud-images.ubuntu.com/locator/ec2/
- https://aws.amazon.com/jp/amazon-linux-ami/

### EC2

- [Amazon マシンイメージ (AMI) - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/AMIs.html)
- [AnsibleによるEC2インスタンスの構築 ｜ DevelopersIO](https://dev.classmethod.jp/server-side/ansible/ec2_using_ansible/)
- [AMI をゼロから作る | KRAY Inc](http://kray.jp/blog/ami-%E3%82%92%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89%E4%BD%9C%E3%82%8B/)
- [EC2でCentOS6のEBS-Backed HVM方式 AMIをゼロから作る - Qiita](https://qiita.com/cs_sonar/items/caed4c543d79605e717d)

## Jpyter

- [Jupyter Advent Calendar 2017 - Qiita](https://qiita.com/advent-calendar/2017/jupyter)
- [Running a notebook server — Jupyter Notebook 5.7.2 documentation](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html#running-the-notebook-with-a-customized-url-prefix)
- [Deploying Jupyter in Ubuntu with Nginx and Supervisor | Albert Au Yeung](http://www.albertauyeung.com/post/setup-jupyter-nginx-supervisor/)

```ipnbpython
In [1]: from notebook.auth import passwd
In [2]: passwd()
Enter password:
Verify password:
Out[2]: 'sha1:67c9e60bb8b6:9ffede0825894254b2e042ea597d771089e11aed'
```

```python
c.NotebookApp.notebook_dir = '/path/to/notebook_directory'
c.NotebookApp.base_url = 'http://www.yourdomain.com/notebok'
c.NotebookApp.password = '...'
c.NotebookApp.port = 8888
c.NotebookApp.port_retries = 50
```

```nginx
location /notebook {
    proxy_pass http://localhost:8888;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header Host $http_host;
    proxy_http_version 1.1;
    proxy_redirect off;
    proxy_buffering off;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection "upgrade";
    proxy_read_timeout 86400;
}
```

## R-Lang

- [Installing R packages | R-bloggers](https://www.r-bloggers.com/installing-r-packages/)
- [IRkernel/IRkernel: R kernel for Jupyter](https://github.com/IRkernel/IRkernel)
- [JuniperKernel/JuniperKernel: R Kernel for Jupyter](https://github.com/JuniperKernel/JuniperKernel)

## Docker-compose

- [Compose file version 3 reference | Docker Documentation](https://docs.docker.com/compose/compose-file/#long-syntax)

## Link

- [» Ansibleの標準モジュールでEC2のサーバー構築をしてみる TECHSCORE BLOG](http://www.techscore.com/blog/2015/06/02/ansible%E3%81%AE%E6%A8%99%E6%BA%96%E3%83%A2%E3%82%B8%E3%83%A5%E3%83%BC%E3%83%AB%E3%81%A7ec2%E3%81%AE%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E6%A7%8B%E7%AF%89%E3%82%92%E3%81%97%E3%81%A6%E3%81%BF%E3%82%8B/)
- [AnsibleのDynamic InventoryでAWS EC2管理 - Qiita](https://qiita.com/teru1000/items/d8d292186aee6c631ee0)
- [\[AWS\]AnsibleのDynamic Inventoryを使って実行対象のEC2をタグ等で柔軟に指定する ｜ DevelopersIO](https://dev.classmethod.jp/cloud/aws/ansible-dynamic-inventory-2/)

----

```
ubuntu@ip-172-31-44-216 /o/redash ❯❯❯ sudo apt list nginx r-base
Listing... Done
nginx/bionic-updates,bionic-security,now 1.14.0-0ubuntu1.2 all [installed]
r-base/bionic,now 3.4.4-1ubuntu1 all [installed]
```