# Pre-commit hooks

This repository includes the hooks for [pre-commit framework](https://github.com/pre-commit/pre-commit).

## PHP
### phpstan-analyze
[PHPStan](https://phpstan.org/) is required to be installed by a composer or globally.
The example configuration for `.pre-commit-config.yaml` is next.
```yaml
repos:
- repo: git@github.com:at-ishikawa/pre-commit-hooks
  rev: master
  hooks:
  - id: phpstan-analyze
```
- `args` of this hook can be set to pass the options to the command `phpstan analyze`.
