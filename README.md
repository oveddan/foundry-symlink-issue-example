# Forge cannot read files from symlinks examples

This repo shows how forge cannot read files from symlinks, even when the path is explicitly allowed in foundry config.

## Steps to reproduce

Install dependencies:

```bash
yarn
```

Run forge tests in contracts package:

```bash
cd packages/contracts
forge test
```

You will get an error: `Reason: the path node_modules/@repo/imported/files/config.json is not allowed to be accessed for read operations` even though the path is allowed in foundry config. The error happens cause the path is a symlink.
