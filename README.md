# embark-container

## Getting started

Simple dockerfile that sets up and installs embark and ethereumjs-testrpc, so that you can easily get started building apps with Embark.

Run `build`, then run `shell` to get started.

## Basic usage

The most basic usage would be something like this:

```
./build
./shell
embark new my-app
cd my-app
```

## Advanced

The `shell` command will mount the `shared` folder as `/opt/shared` with the docker container.  This will allow apps created within the docker container to persist outside of it.  This also means you can edit those files from outside the container--for example, when you're writing tests, etc.

For even more helpfulness, try setting your `npm test` command to run `embark test`.

## About that comment in `Dockerfile`

So the current version of `embark` doesn't actually work when you try to run tests.  So, this will globally install my fork of embark, for now, which fixes a couple issues with testing.  See DeviateFish/embark-framework#fix/broken-test-deployment for more details.
