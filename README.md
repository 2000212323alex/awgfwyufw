# awgfwyufw

## OpenSSL Flag Decryption

This repository contains an encrypted flag file that can be decrypted using OpenSSL.

### Files

- `flag.enc` - Encrypted flag file (AES-256-CBC with PBKDF2)
- `decrypt.sh` - Decryption script
- `flag.txt` - Decrypted output (generated after decryption)

### Decryption

#### Method 1: Using the script

```bash
KEY='mysecretkey123' ./decrypt.sh
```

#### Method 2: Direct OpenSSL command

```bash
KEY='mysecretkey123'
openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -salt -in flag.enc -out flag.txt -pass pass:"$KEY"
cat flag.txt
```

#### Method 3: With sudo (if needed)

```bash
KEY='mysecretkey123'
sudo openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -salt -in flag.enc -out flag.txt -pass pass:"$KEY"
```

### Encryption Details

- Algorithm: AES-256-CBC
- Key Derivation: PBKDF2
- Iterations: 100,000
- Salt: Included in encrypted file

### Note

The key used for encryption is: `mysecretkey123`

**⚠️ Security Warning:** This key is provided for demonstration and testing purposes only. In production environments:
- Never commit encryption keys to version control
- Use secure key management systems (e.g., HashiCorp Vault, AWS KMS, Azure Key Vault)
- Use environment variables or secure configuration management
- Rotate keys regularly
- Follow your organization's security policies
