#!/bin/bash
oc create -f - << EOF
---
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: dd3par-virtualcopyof-dd3par
provisioner: hpe.com/hpe
parameters:
  virtualCopyOf: $(kubectl get pvc ddpvc1 -o jsonpath='{.spec.volumeName}')
EOF

