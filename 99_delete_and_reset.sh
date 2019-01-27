#!/bin/bash
oc delete pod ddpod1
oc delete pod ddpod2
oc delete pod ddpod3
oc delete pod ddpod4
oc delete pod ddpod5
oc delete pvc ddpvc1
oc delete pvc ddpvc1-clone
oc delete pvc ddpvc1-qos
oc delete pvc ddpvc1-virtual
oc delete storageclass dd3par
oc delete storageclass dd3par-cloneof-dd3par
oc delete storageclass dd3par-virtualcopyof-dd3par
oc delete storageclass dd3par-withqos

