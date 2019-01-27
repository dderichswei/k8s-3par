#!/bin/bash
oc create -f - << EOF
---
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: ddpvc1-virtual
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
      expirationHours: 2
  storageClassName: dd3par-virtualcopyof-dd3par
EOF

