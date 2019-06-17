# Expekt Wiremock

Mock server proof of concept for automated tests on Expekt.

## Structure

This project is using wiremock, in order to serve expectable data (useful for testing purposes mainly).
It is delivered as a docker image.

## Build

To build the docker image: `docker build -t expekt-wiremock .`

## Execution

To run the mock server: `docker run --name my-wiremock -p 8080:8080 -d expekt-wiremock`

## Usage

1. Simply run the docker container, and access your environment (https://m-stg2.expekt.se/ for example);
2. Replace the backend urls to use the mock server instead:
```
e.g. window['TRANSFER_CACHE'].context.urls['/global'] = 'http://localhost/r2/svcshared/st02/svcglobalapi/api'
```