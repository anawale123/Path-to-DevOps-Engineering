Lesson 8: SSH & Key Management

SSH Keys Overview

SSH keys are used for secure, passwordless authentication to remote servers. They provide better security than passwords and allow automatic logins.

Generate SSH Key Pair

To create an SSH key pair (private and public key):

ssh-keygen -t rsa -b 4096

-t rsa specifies RSA algorithm

-b 4096 sets key length to 4096 bits (more secure than default 2048)

Follow the prompts:

Choose a location (default is ~/.ssh/id_rsa)

Optionally set a passphrase for extra security

Copy Public Key to Remote Server

To enable passwordless login, copy your public key to the remote server:

ssh-copy-id user@hostname

user@hostname is the server login and address

It automatically appends your public key to the ~/.ssh/authorized_keys file on the remote server

Manually Copy Public Key

If ssh-copy-id isn't available, you can manually copy the public key:

Display your public key:
cat ~/.ssh/id_rsa.pub

Copy the key’s contents and paste it into the ~/.ssh/authorized_keys file on the remote server

Test SSH Key Authentication

After copying the public key, test the connection:

ssh user@hostname

You should be logged in without being prompted for a password.

Managing SSH Keys

List your SSH keys:

ls ~/.ssh/

Private keys: id_rsa (should remain private)

Public keys: id_rsa.pub (can be shared with remote servers)

Remove an SSH Key

To delete an SSH key:

Delete the private key:
rm ~/.ssh/id_rsa

Delete the corresponding public key if no longer needed:
rm ~/.ssh/id_rsa.pub

Notes

Always protect your private key (id_rsa); it should not be shared with anyone

Public keys (id_rsa.pub) can be shared and copied to any remote server you want to access

Using SSH keys instead of passwords makes logging into remote servers more secure and efficient

To disable password login entirely, modify the /etc/ssh/sshd_config file on the server (PasswordAuthentication no)