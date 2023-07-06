## Prerequisites/Setup

Run `yarn` to install the npm package @openapitools/openapi-generator-cli

[Make sure this jar is installed](https://openapi-generator.tech/docs/installation#jar) for the use of the npm package @openapitools/openapi-generator-cli

My steps (YMMV)
1. `brew install wget` takes a while
2. `wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.6.0/openapi-generator-cli-6.6.0.jar -O openapi-generator-cli.jar`

Java Runtime with asdf

0. (optional) install asdf (not that simple but worth it)
1. asdf install java adoptopenjdk-11.0.16+8
2. asdf local java adoptopenjdk-11.0.16+8  
3. source your .zshrc again
4. java -version

## Generate

yarn generate

## How this project was bootsrapped

```
docker volume create ruby-bundle-cache-play-with-openapi-generator
docker run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache-play-with-openapi-generator:/bundle -p 3000:3000 [IMAGE ID] rails new api --database postgresql --force --api --skip-test --version 7
```

Instead of using the **ghcr.io/rails/cli** image shown [here](https://github.com/rails/docked), in a command above, we use the image built using this project's Dockerfile. It's necessary when developing with M1 macs to take extra steps and certain precautions compared to intel macs, when using Docker.
