#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

# Before

# fwa# ifconfig
# lo0: flags=2008049<UP,LOOPBACK,RUNNING,MULTICAST,LRO> mtu 32768
#         index 3 priority 0 llprio 3
#         groups: lo
#         inet6 ::1 prefixlen 128
#         inet6 fe80::1%lo0 prefixlen 64 scopeid 0x3
#         inet 127.0.0.1 netmask 0xff000000
# em0: flags=808843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST,AUTOCONF4> mtu 1500
#         lladdr 08:00:27:eb:32:82
#         index 1 priority 0 llprio 3
#         groups: egress
#         media: Ethernet autoselect (1000baseT full-duplex)
#         status: active
#         inet 172.20.10.12 netmask 0xfffffff0 broadcast 172.20.10.15
# enc0: flags=0<>
#         index 2 priority 0 llprio 3
#         groups: enc
#         status: active
# pflog0: flags=141<UP,RUNNING,PROMISC> mtu 33136
#         index 4 priority 0 llprio 3
#         groups: pflog

# Routing tables
# Internet:
# Destination        Gateway            Flags   Refs      Use   Mtu  Prio Iface
# default            172.20.10.1        UGS        5       12     -     8 em0
# 224/4              localhost          URS        0        0 32768     8 lo0
# 127/8              localhost          UGRS       0        0 32768     8 lo0
# localhost          localhost          UHhl       1        2 32768     1 lo0
# 172.20.10.0/28     172.20.10.12       UCn        2        9     -     4 em0
# 172.20.10.1        42:f9:46:4d:d9:64  UHLch      1       12     -     3 em0
# 172.20.10.2        b0:a4:60:d8:b7:65  UHLc       1       13     -     3 em0
# 172.20.10.12       08:00:27:eb:32:82  UHLl       0       10     -     1 em0
# 172.20.10.15       172.20.10.12       UHb        0        0     -     1 em0

# fwa# cat /etc/resolv.conf
# nameserver 172.20.10.1 # resolvd: em0
# lookup file bind

##########################################################
# Configure firewalll and NAT
##########################################################

cat <<"EOF" > /etc/hostname
console
EOF

# reconfigure to be trunk port

# dhcp
cat <<"EOF" > /etc/hostname.em0
up
EOF

cat <<"EOF" > /etc/hostname.em1
up
EOF

cat <<"EOF" > /etc/hostname.trunk0
trunkproto failover trunkport em0 trunkport em1
dhcp
EOF

sh /etc/netstart

# -bash-5.2$ ifconfig
# lo0: flags=2008049<UP,LOOPBACK,RUNNING,MULTICAST,LRO> mtu 32768
#         index 3 priority 0 llprio 3
#         groups: lo
#         inet6 ::1 prefixlen 128
#         inet6 fe80::1%lo0 prefixlen 64 scopeid 0x3
#         inet 127.0.0.1 netmask 0xff000000
# em0: flags=8b43<UP,BROADCAST,RUNNING,PROMISC,ALLMULTI,SIMPLEX,MULTICAST> mtu 1500
#         lladdr 08:00:27:eb:32:82
#         index 1 priority 0 llprio 3
#         trunk: trunkdev trunk0
#         media: Ethernet autoselect (1000baseT full-duplex)
#         status: active
# enc0: flags=0<>
#         index 2 priority 0 llprio 3
#         groups: enc
#         status: active
# trunk0: flags=808843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST,AUTOCONF4> mtu 1500
#         lladdr 08:00:27:eb:32:82
#         index 4 priority 0 llprio 3
#         trunk: trunkproto failover
#                 em0 port master,active
#         groups: trunk egress
#         media: Ethernet autoselect
#         status: active
#         inet 172.20.10.12 netmask 0xfffffff0 broadcast 172.20.10.15
# pflog0: flags=141<UP,RUNNING,PROMISC> mtu 33136
#         index 5 priority 0 llprio 3
#         groups: pflog

# See DNS server IP address

# fwa# cat /etc/resolv.conf
# nameserver 172.20.10.1 # resolvd: trunk0
# lookup file bind

# See routing table

# route show
# netstat -r
# netstat -r -n
# netstat -r -f inet -n # only IPv4

# Routing tables

# Destination        Gateway            Flags   Refs      Use   Mtu  Prio Iface
# default            172.20.10.1        UGS        5       23     -     8 trunk0
# base-address.mcast localhost          URS        0       10 32768     8 lo0
# 127/8              localhost          UGRS       0        0 32768     8 lo0
# localhost          localhost          UHhl       1        2 32768     1 lo0
# 172.20.10.0/28     172.20.10.12       UCn        2       30     -     4 trunk0
# 172.20.10.1        42:f9:46:4d:d9:64  UHLch      1       46     -     3 trunk0
# 172.20.10.2        b0:a4:60:d8:b7:65  UHLc       1       23     -     3 trunk0
# 172.20.10.12       08:00:27:eb:32:82  UHLl       0        7     -     1 trunk0
# 172.20.10.15       172.20.10.12       UHb        0        0     -     1 trunk0
