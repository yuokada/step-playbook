## step server playbook & packer
[![Python CI](https://github.com/yuokada/step-playbook/actions/workflows/pythonpackage.yml/badge.svg)](https://github.com/yuokada/step-playbook/actions/workflows/pythonpackage.yml)


<!--
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
-->
