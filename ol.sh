#!/bin/bash
read -s -p "Enter your password: " password
mfa=$(echo -e $ONE_LOGIN_MFA | oathtool - -b --totp)
csq ol login --user $CS_USER --password $password --mfa-code $mfa --mfa-device 3175113 --aws-account 248230147984 --aws-role as-platformers
