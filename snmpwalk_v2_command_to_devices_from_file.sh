#!/bin/bash

# The script executes snmpwalk for every device IP read from a txt file.

read -p 'Enter file name with devices IP list: ' file
read -p 'Enter community string: ' snmp_community
read -p 'Enter SNMP OID to execute: ' snmp_oid

#file='devices.txt'
#snmp_oid='1.3.6.1.2.1.47.1.1.1.1.2.1001' # entPhysicalDescr

for ip in $(cat $file); do

  output=$(snmpwalk -v2c -c $snmp_community $ip $snmp_oid | cut -d ":" -f2)
  echo "IP: $ip => $output"

done

exit 0
