#!/bin/bash
kubectl create -f - << EOF
---
kind: Pod   
apiVersion: v1
metadata:
  name: pod1
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
      claimName: pvc1
EOF
