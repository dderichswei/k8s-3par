#!/bin/bash
kubectl create -f - << EOF
---
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: dd3par
provisioner: hpe.com/hpe
parameters:
  size: "16"
EOF
