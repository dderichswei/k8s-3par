#!/bin/bash
oc create -f - << EOF
---
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: dd3par-withqos
provisioner: hpe.com/hpe
parameters:
  qos-name: docker_qos
EOF

