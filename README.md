# Project- Deploy MongoDB Replica-set in Oracle Cloud
<h1 align="center">Welcome!!</h1>
<p>
  <a href="https://github.com/Code-Neptune/Project-Terraform-MongoDB-Oracle-Cloud#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/Documentation-yes-brightgreen.svg" />
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/github/license/Code-Neptune/Project-Terraform-MongoDB-Oracle-Clou" />
  </a>
  <a href="https://twitter.com/shashank_jadon" target="_blank">
    <img alt="Twitter: shashank_jadon" src="https://img.shields.io/twitter/follow/shashank_jadon.svg?style=social" />
  </a>
   </a>
  <a href="https://www.linkedin.com/in/shashankjadon/" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/LinkedIn-shashankjadon-blue" />
  </a>
</p>


### 🏠 [Homepage](https://github.com/Code-Neptune/Project-Terraform-MongoDB-Oracle-Cloud#readme)


## Goal

* Deploy MongoDB replica-set cluster at Oracle Cloud with minimum interaction

## Objectives

1. Setup required cloud infrastructure and resources.
2. Install required packages in all virtual machines.
3. Deploy docker container with replica-set authentication key.
4. Initiate replica-set and add all virtual machine containers.

## Result

- First objective is accomplised using Terraform, which created Oracle cloud resources (Virtual Machine, Virtual Cloud Network, Internet Gateway, Subnet etc.)

- Second objective is accomplised using Cloud-init scipt, which installed all required packages (Installing docker, Add firewall rule to connect 27017 etc.)

- Third objective is also accomplised using Cloud-init script which build docker image with replica-set authentication key and deployed it using docker-compose.

- Fourth objective is accomplished by running few commands manually in any one of the virtual machines.


## How you can use this script :-

* Generate Replica-set authentication key using command - ```openssl rand -base64 756 > replica-set.key``` and store key file package folder.

* Compress package folder and upload it to oracle cloud object storage.

* Create Pre-Athenticated Request(PAR) and put link it in "packagelink" variable in mongo-install.sh file

* Edit main.tf Terraform file and ocid values according to your envionment.

* Run ```terraform plan``` then ```terraform apply```


## Author

👤 **Shashank Jadon**

* Website: https://shashankjadon.tech
* Twitter: [@shashank_jadon](https://twitter.com/shashank_jadon)
* Github: [@Code-Neptune](https://github.com/Code-Neptune)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/Code-Neptune/Project-Terraform-MongoDB-Oracle-Cloud/issuess).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

This project is [MIT](https://github.com/Code-Neptune/Project-Terraform-MongoDB-Oracle-Cloud/LICENSE) licensed.

***
