## What is terraform

[Terraform][1] provides a common configuration to launch infrastructure from physical and virtual servers to email and DNS providers. Once launched, [Terraform][1] safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

http://www.terraform.io/

## Dockerfile

This Docker image is based on the official [Alpine][2] 3.2 base image.

## Terraform configuration files

This container expects the user to mount in a directory, which will be mapped to the `/data` directory inside the container.  This is the directory from which [Terraform][1] is configured to read the configuration files referenced by the commands you call.

## How to run this image

For most terraform commands, the run command is as simple as:

```
docker run -it --rm clouddrove/terraform [--version] [--help] <command> [<args>]
```

### terraform apply

```
docker run -it --rm --net=host clouddrove/terraform apply [options]
```

### terraform destroy

```
docker run -it --rm  clouddrove/terraform destroy [options] [DIR]
```

### terraform get

```
docker run -it --rm  clouddrove/terraform get [options] PATH
```

### terraform graph

```
docker run -it --rm  clouddrove/terraform graph [options]
```

### terraform init

```
docker run -it --rm clouddrove/terraform init [options] SOURCE [PATH]
```

### terraform output

```
docker run -it --rm  clouddrove/terraform output [options] NAME
```

### terraform plan

```
docker run -it --rm --net=host clouddrove/terraform plan [options]
```

### terraform push

```
docker run -it --rm --net=host clouddrove/terraform push [options]
```

### terraform refresh

```
docker run -it --rm --net=host clouddrove/terraform refresh [options]
```

### terraform remote

```
docker run -it --rm --net=host clouddrove/terraform remote [options]
```

### terraform show

```
docker run -it --rm --net=host clouddrove/terraform show terraform.tfstate [options]
```

### terraform taint

```
docker run -it --rm --net=host clouddrove/terraform taint [options] name
```

### terraform version

```
docker run -it --rm clouddrove/terraform version
```

## 👬 Contribution
- Open pull request with improvements
- Discuss ideas in issues
- Reach out with any feedback [![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/anmol_nagpal.svg?style=social&label=Follow%20%40anmol_nagpal)](https://twitter.com/anmol_nagpal)
