# README for Username Validation Script

## Author Information
- **Name:** Owen Hickey
- **Course:** CPSC 293
- **Assignment:** Username Validation
- **Date:** Jan 20 2026 

## Program Description
This script validates usernames entered by the user according to specific formatting rules. It uses a while loop to repeatedly prompt for input until a valid username is provided, checking each entry  against a regular expression pattern with grep

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
The script uses a while loop to continuously prompt the user for a username until a valid one is entered. Each input is piped to the grep command. The `-E` flag enables extended regex syntax, allowing the use of special characters like `+`, `{n,m}`, and `$` without escaping them. The `-q` flag runs grep in quiet mode, suppressing output and only returning an exit code.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
'js' - INVALID
'jsmith' - VALID
'j' - INVALID
'smith' - VALID
'jsmith123' - VALID
'jsmith12345678' - INVALID
'jSmith' - INVALID
'jsmith!' - INVALID
'jsmith_2023' - VALID
'dev_user' - VALID
'test123' - VALID
'admin' - VALID
'user' - VALID
'a' - INVALID
'ab' - INVALID
'john_doe' - VALID
'user123456' - VALID
'test-user' - INVALID
'TEST123' - INVALID
'testuser12345678' - INVALID
'_' - INVALID
'__test' - INVALID
'123abc' - INVALID
- How you used the username-input file to test


## Resources
CLUADE CODE - bug fixes and running Shellcheck. 
- it helped me update homebrew 
- Helped summerize in README

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
