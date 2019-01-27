#!/bin/bash
oc create -f - << EOF
---
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: ddpvc1-qos
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 20Gi
  storageClassName: dd3par-withqos
EOF


