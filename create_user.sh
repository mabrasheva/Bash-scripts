#!/bin/bash

# Creates a user

read -p 'Enter new username to add: ' username
sudo useradd -m -s /bin/bash "$username"
echo "Created user $username".

echo "Set password for the $username user".
passwd "$username"

echo "Done."

exit 0
