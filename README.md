# BASH RANDOM SCRIPT GENERATOR

## USAGE

```bash
git clone git@github.com:the-middle/random_string.git
cd random_string
bash random_string.sh -c 4 -l 1 -o l
```

Script will output help, when executed without arguments.

Print help:

```bash
bash random_string.sh
```

- `-c` - integer, amount of characters to print;
- `-l` - integer, amount of lines to print;
- `-o` - string, optional, l - lowercase; u - uppercase. Output will be mixed case without this parameter.
