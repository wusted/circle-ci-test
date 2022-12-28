# circle-ci-test
For Circle CI Testing Usage

# Pre-requisites
- Have a CircleCI and Docker accounts.
- Use DigitalOcean Cloud Provider.
- Get the respective token set as environment variables.
- For Terraform to connect to CircleCI and DigitalOcean
- Add the DOCKER_USER and DOCKER_PASS 
- envs to CircleCI for the project.

# Usage.

1. Deploy Cloud Infrastructure.
Kubernetes Cluster
Load Balancer
CircleCI
Output File
DNS Records and Domain

```
$ terraform init
$ terraform plan
$ terraform apply
```

2. Test Kubernetes Cluster

```
$ kubectl --kubeconfig=kubeconfig.yaml get nodes
```

3. 