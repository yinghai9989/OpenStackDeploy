#!/bin/bash

#Used for all nodes, set different value on each node
NODE_HOST_NAME=controller
NODE_HOST_NAME_FQDN=controller.com

#Used for all keepalived nodes, set different value on each node
KEEPALIVED_ROUTER_ID=ka01
KEEPALIVED_INTERNAL_NET_PRIORITY=150
KEEPALIVED_EXTERNAL_NET_PRIORITY=150

#Used for all keepalived nodes, set value as "MASTER" or "BACKUP"
KEEPALIVED_STATE=MASTER

#Used for all keepalived nodes, set same value on each node
KEEPALIVED_INTERNAL_NET_VIRTUAL_ROUTER_ID=51
KEEPALIVED_EXTERNAL_NET_VIRTUAL_ROUTER_ID=61
KEEPALIVED_INTERNAL_NET_INTERFACE_NAME=eth0
KEEPALIVED_EXTERNAL_NET_INTERFACE_NAME=eth1
KEEPALIVED_NOTIFY_EMAIL=y-g.niu@163.com

#Used for all nodes, set same value on each node
KEEPALIVED_INTERNAL_NET_VIRTUAL_IP=172.16.0.20
KEEPALIVED_EXTERNAL_NET_VIRTUAL_IP=192.168.11.20
MY_DNS1=8.8.8.8
MY_DNS2=8.8.4.4

#Used for all haproxy nodes, set same value on each node
CONTROLLER_NODE_01_INTERNAL_IP=172.16.0.48
CONTROLLER_NODE_02_INTERNAL_IP=172.16.0.49
CONTROLLER_NODE_03_INTERNAL_IP=172.16.0.50

#Used for all database nodes, set value as "FirstNode" or "FollowNode"
DB_NODE_TYPE=FollowNode

#Used for all database nodes, set different value on each node
DB_NODE_SELF_IP=172.16.0.xxx

#Used for all nodes, set same value on each node
DB_NODE_01_IP=172.16.0.48
DB_NODE_02_IP=172.16.0.49
DB_NODE_03_IP=172.16.0.50 

#Used for all message queue nodes, set value as "FirstNode" or "FollowNode"
MQ_NODE_TYPE=FollowNode

#Used for all message queue nodes, set same value on each node
MQ_NODE_01_HOST_NAME=controller01
MQ_NODE_02_HOST_NAME=controller02
MQ_NODE_03_HOST_NAME=controller03

#Used for all nodes, set same value on each node
MQ_NODE_01_IP=172.16.0.48
MQ_NODE_02_IP=172.16.0.49
MQ_NODE_03_IP=172.16.0.50
RABBIT_HOSTS=$MQ_NODE_01_IP:5672,$MQ_NODE_02_IP:5672,$MQ_NODE_03_IP:5672 

#Used for all nodes, set same value on each node
CONTROLLER_NODE_MANAGEMENT_IP=$KEEPALIVED_INTERNAL_NET_VIRTUAL_IP
CONTROLLER_NODE_EXTERNAL_NET_IP=$KEEPALIVED_EXTERNAL_NET_VIRTUAL_IP
CONTROLLER_NODE_EXTERNAL_NET_GATEWAY=xxx.xxx.xxx.xxx

######

#Used for all nodes, set same value on each node, one of : neutron, nova-network.
NETWORK_API_CLASS=neutron

#Used for all nodes, set same value on each node, one of : FlatDHCPManager, VlanManager. When:( nova-network )
NETWORK_MANAGER=VlanManager

#Used for all nodes, set same value on each node. When:( nova-network )
NETWORK_SIZE=254
PUBLIC_INTERFACE=eth1
FIXED_RANGE_V4=10.10.10.0/24
FLOATING_IP_ALLOCATION_POOLS=192.168.11.100-192.168.11.105,192.168.11.108-192.168.11.122

#Used for all nodes, set same value on each node. When:( nova-network + FlatDHCPManager )
FLAT_NETWORK_BRIDGE=br100
FLAT_INTERFACE=eth0

#Used for all nodes, set same value on each node. When:( nova-network + VlanManager )
VLAN_INTERFACE=eth0
NUM_NETWORKS=1
VLAN_START=100

#Used for all nodes, set same value on each node. When:( neutron )
CORE_PLUGIN=ml2
SERVICE_PLUGINS=router
ALLOW_OVERLAPPING_IPS=True
VERBOSE=True
MECHANISM_DRIVERS=openvswitch
METADATA_PROXY_SHARED_SECRET=howareyouOpenStack_Nwg
NEUTRON_EXT_NET_CIDR=192.168.11.0/24
NEUTRON_EXT_NET_GATEWAY=192.168.11.1
NEUTRON_EXT_NET_IP_POOL_START=192.168.11.108
NEUTRON_EXT_NET_IP_POOL_END=192.168.11.122
NEUTRON_DNS_NAMESERVER_1=$MY_DNS1
NEUTRON_DNS_NAMESERVER_2=$MY_DNS2
NEUTRON_INT_NET_CIDR=10.10.10.0/24
NEUTRON_INT_NET_GATEWAY=10.10.10.1
NEUTRON_INT_NET_IP_POOL_START=10.10.10.2
NEUTRON_INT_NET_IP_POOL_END=10.10.10.254

#Used for all nodes, set same value on each node, one of : gre, vxlan. When:( neutron )
TYPE_DRIVERS=gre
TENANT_NETWORK_TYPES=gre

#Used for all Network nodes and Compute nodes, set different value on each node. When:( neutron )
INSTANCE_TUNNELS_INTERFACE_IP_ADDRESS=172.16.0.xx

#Used for all Network nodes, set same value on each node. When:( neutron )
EXTERNAL_NETWORK_INTERFACE_NAME=eth1

######

#Used for all corosync nodes, set same value on each node
COROSYNC_NODE_01_HOSTNAME=HK01
COROSYNC_NODE_02_HOSTNAME=HK02

COROSYNC_NODE_01_IP=172.16.0.12
COROSYNC_NODE_02_IP=172.16.0.13

COROSYNC_BINDNETADDR=172.16.0.0

#Used for all controller nodes, set value as "Yes" or "No"
FIRST_KEYSTONE_NODE=No
FIRST_GLANCE_NODE=No
FIRST_CINDER_NODE=No
FIRST_NOVA_NODE=No
FIRST_NEUTRON_NODE=No

#Used for all controller nodes, set same value on each node
FIRST_CONTROLLER_NODE_INTERNAL_NET_IP=172.16.0.48
FIRST_KEYSTONE_NODE_INTERNAL_NET_IP=$FIRST_CONTROLLER_NODE_INTERNAL_NET_IP

#Used for all controller nodes, set different value on each node
CONTROLLER_NODE_NOVA_MY_IP=172.16.0.xx
CONTROLLER_NODE_VNCSERVER_LISTEN=172.16.0.xx
CONTROLLER_NODE_VNCSERVER_PROXYCLIENT_ADDRESS=172.16.0.xx

#Used for all computer nodes, set same value on each node, one of : kvm, qemu
COMPUTE_NODE_LIBVIRT_TYPE=kvm

#Used for all computer nodes, set different value on each node
COMPUTE_NODE_NOVA_MY_IP=172.16.0.xx
COMPUTE_NODE_VNCSERVER_PROXYCLIENT_ADDRESS=172.16.0.xx

#Used for all nodes, set same value on each node

DATABASE_IP=$CONTROLLER_NODE_MANAGEMENT_IP
MESSAGE_QUEUE_IP=$CONTROLLER_NODE_MANAGEMENT_IP
GLANCE_HOST_IP=$CONTROLLER_NODE_MANAGEMENT_IP
CINDER_HOST_IP=$CONTROLLER_NODE_MANAGEMENT_IP

MYSQL_ROOT_PASSWORD=root123

KEYSTONE_ADMIN_TOKEN=helloOpenStack_Nwg
KEYSTONE_HOST_IP=$CONTROLLER_NODE_MANAGEMENT_IP
KEYSTONE_EXT_HOST_IP=$CONTROLLER_NODE_EXTERNAL_NET_IP
KEYSTONE_ADMIN_PASSWORD=admin123
KEYSTONE_SERVICE_PASSWORD=service123

KEYSTONE_USER=keystoneUser
KEYSTONE_PASS=keystonePass123

GLANCE_USER=glanceUser
GLANCE_PASS=glancePass123

NEUTRON_USER=neutronUser
NEUTRON_PASS=neutronPass123

NOVA_USER=novaUser
NOVA_PASS=novaPass123

CINDER_USER=cinderUser
CINDER_PASS=cinderPass123

CINDER_VOLUMES_FILE=/root/Openstack-Install-HA/my-cinder-volumes-file
CINDER_VOLUMES_FILE_SIZE=20G

NEW_UBUNTU_APT_SOURCES=172.16.0.63

#Used for all nodes, set same value on each node, one of : Yes, No.
USE_OTHER_UBUNTU_APT_SOURCES=No

#------ Here ------

#Used for all controller nodes, set same value on each node, one of : local_disk, ceph.
GLANCE_STORAGE=local_disk
CINDER_STORAGE=local_disk

#Used for all computer nodes, set same value on each node, one of : local_disk, ceph.
NOVA_STORAGE=local_disk

#Used for all nodes, set same value on each node, one of : "./icehouse", "."(when juno).
OPENSTACK_RELEASE=./icehouse



