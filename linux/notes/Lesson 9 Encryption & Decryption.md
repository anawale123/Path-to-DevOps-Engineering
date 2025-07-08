Lesson 9: Encryption & Decryption

GPG Overview

GPG (GNU Privacy Guard) is a tool for encrypting and signing data, making it secure for storage or transmission. It uses public-key cryptography to encrypt and decrypt files.

Generate a GPG Key Pair

To create a GPG key pair (public and private key):

gpg --full-generate-key

Choose key type (RSA and RSA is standard)

Set key size (2048 or 4096 bits for better security)

Set expiration (optional)

Provide user ID (usually your name and email)

Set a passphrase for extra protection of the private key

List GPG Keys

To list your available GPG keys:

gpg --list-keys

This shows both public and private keys, including key IDs, user IDs, and expiration dates.

Encrypt a File

To encrypt a file with a recipient’s public key:

gpg --encrypt --recipient recipient_email file.txt

Replace recipient_email with the email associated with the recipient’s GPG key

This creates an encrypted file (file.txt.gpg)

Decrypt a File

To decrypt a file with your private key:

gpg --decrypt file.txt.gpg

Enter your passphrase if prompted

Sign a File

To sign a file to prove it came from you:

gpg --sign file.txt

This creates a .gpg signature file, e.g., file.txt.gpg

Useful for ensuring authenticity and integrity of data

Verify a Signature

To verify a signed file’s authenticity:

gpg --verify file.txt.gpg

If the file has been tampered with, GPG will notify you that the signature is invalid.

Export a Public Key

To export your public key (to send to others):

gpg --export --armor your_email@example.com > mypubkey.asc

This exports the public key in ASCII format (--armor) to a file (mypubkey.asc)

Import a Public Key

To import someone else’s public key:

gpg --import pubkey.asc

Replace pubkey.asc with the file containing the recipient’s public key

Notes

GPG uses a key pair: the public key for encryption (which can be shared) and the private key for decryption (which should remain secret)

Always protect your private key with a strong passphrase

You can use GPG to sign files or emails to verify the sender's identity and ensure the content hasn't been tampered with

If you lose your private key or passphrase, you won't be able to decrypt the files anymore

