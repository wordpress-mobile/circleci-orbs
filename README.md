# CircleCI Orbs

[![CircleCI](https://circleci.com/gh/wordpress-mobile/circleci-orbs.svg?style=svg)](https://circleci.com/gh/wordpress-mobile/circleci-orbs)

The source code for some [CircleCI orbs](https://circleci.com/orbs/) published by wordpress-mobile.



## Validation

This command will validate all the Orbs in `src/`:

```
./scripts/validate-orbs.sh
```

## Publishing

Maintainers can publish a new version of the Orbs by making a new release on Github [here](https://github.com/wordpress-mobile/circleci-orbs/releases/new). This will cause this release to be published to the CircleCI Orb registry. See `.circleci/config.yml` for details.
