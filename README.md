# terraform

## prerequisites
1. update your ubuntu instance `sudo apt update`
2. install curl module `sudo apt install  software-properties-common gnupg2 curl`
3. import repository GPG key 1/2 `curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg`
4. import repository GPG key 2/2 `sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/`
5. add Hashicorp repository to your Ubuntu 22.04 `sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com focal main"`
6. add Hashicorp repository to your Ubuntu 20.04/18.04 `sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`
7. install terraform `sudo apt install terraform`
8. check terraform version `terraform --version`. If provided you install terraform correctly. Gratulation!

## how to create infrastrucutre
1. clone reposiotry from `https://github.com/mjaniszewski330/test-warez-terraform`
2. go into recently pulled repo `cd test-warez-terrafrom`
3. checkout for your branch `git checkout my-branch-name`
4. modify terraform code to preapre your own configuration
5. add access secret key pair
6. initialize terraform providers `terraform init`
7. preview of planned infrastrucutre creation/modification `terraform plan`
8. create/modify infrastructure 
```shell
terraform apply
```

## how to destroy infrastructure
```shell
terraform destroy
```
