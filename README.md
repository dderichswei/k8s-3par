# k8s - 3PAR Integration

## Kubernetes/OpenShift environment
Here is an example of the HPE Docker Volume plugin being used in an OpenShift environment:

![Screenshot](pictures/3PAR_k8_design_diagram.png)

### login to 3PAR

![Screenshot](pictures/k8s-show1.gif)

### start DORY

![Screenshot](pictures/k8s-start-dory.gif)


### create k8s create StorageClass

![Screenshot](pictures/k8-create-storageclass.gif)

### create k8s create Persistent Storage

![Screenshot](pictures/k8s-create-pvc.gif)

### create k8s create POD, create file within container, delete container

![Screenshot](pictures/k8s-create-pod1.gif)

### create k8s create second POD, and show that the file still exists

![Screenshot](pictures/k8s-create-pod2.gif)

