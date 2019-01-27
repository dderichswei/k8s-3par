#!/bin/bash
oc create -f - << EOF
---
kind: Pod   
apiVersion: v1
metadata:
  name: ddpod5
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
      claimName: ddpvc1-qos
EOF

watch oc describe pod ddpod5
