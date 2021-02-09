# energinet

## Table of Contents
[General](#General)  
[Kubernetes](#Kubernetes)  
[Helm](#Helm)  
[Github](#Github)

## Useful commands


### General
**Find string in folder**  
> grep -rnw '/path/' -e 'string'

**Change hostname**
> sudo hostnamectl set-hostname k8s-master

### Kubernetes
**Create namespace**  
> kubectl create namespace rook-ceph

**Untaint masternode**  
> kubectl taint node k8s-master node-role.kubernetes.io/master:NoSchedule-

**Generate join-token for nodes**  
> kubeadm token generate  
> kubeadm token create generated-token --print-join-command --ttl=0

**Set hostname for VM**  
> sudo hostnamectl set-hostname k8s-node-01

**Login to admin user**  
> su - k8s-admin

**Root access**  
> sudo su -

**Watch pods**  
> watch kubectl -n rook-ceph get pod

**Get services**
> kubectl -n rook-ceph get service

**Get password for dashboard** 

> kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo

**Describe pod**  
> kubectl describe pod -n rook-ceph pod-name

**Get logs from pod**  
> kubectl logs -n rook-ceph pod-name

**Bash into toolbox**
> kubectl -n rook-ceph exec -it deploy/rook-ceph-tools -- bash

**Bash into pod** 
> kubectl exec -it csirbd-demo-pod -n rook-ceph -- /bin/bash

**Root access**  
> sudo su -

**Root access**  
> sudo su -

**Root access**  
> sudo su -

### Helm
**Download Helm**  
> wget https://get.helm.sh/helm-v3.5.0-linux-amd64.tar.gz

**Unpack Helm**  
> tar -zxvf helm-v3.5.0-linux-amd64.tar.gz

**Move it to bin**  
> sudo mv linux-amd64/helm /usr/local/bin/helm

**Install chart**
> helm install -n rook-ceph rook-ceph ~/energinet/rook-ceph-stable/

**Upgrade chart**
> helm upgrade -n rook-ceph rook-ceph ~/energinet/rook-ceph-stable/

### Github
**Clone this repo**
> git clone https://github.com/jaxels10/ENRook.git
