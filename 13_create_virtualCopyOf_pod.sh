#!/bin/bash
oc create -f - << EOF
---
kind: Pod   
apiVersion: v1
metadata:
  name: ddpod3
spec:
  containers:
  - name: nginx
    image: nginx
    volumeMounts:
    - name: export
      mountPath: /export
  restartPolicy: Always
  volumes:
  - name: export
    persistentVolumeClaim:
      claimName: ddpvc1-virtual
EOF

watch oc describe pod ddpod3

