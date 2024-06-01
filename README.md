# Temporal.io Development Server

This repository contains Dockerfiles for setting up the Temporal.io Development Server in two variants:

1. Generic: A flexible configuration suitable for general purposes.
2. GitHub Actions: A specialized configuration with defaults set for use in GitHub Actions workflows,
optimized for testing with a predefined namespace and only exposing port 7233.

# Introduction

Temporal.io is a microservices orchestration platform for running mission-critical code at any scale.
This repository provides Dockerfiles for setting up a Temporal.io development server in two distinct configurations
to aid in local development and continuous integration (CI) processes.

# Running the Container

Start the container using the appropriate variant:

## Generic

```shell
docker run -p 7233:7233 -p 8233:8233 ghcr.io/infinityflowapp/temporal-dev-server:<version>
```

## GitHub Actions Service

Add or update the services section of your workflow

```yaml
jobs:
  <job>:
    services:
      <service>:
        image: ghcr.io/infinityflowapp/temporal-gha-service:<version>
        ports:
          - 7233:7233
```

Use a client pointing to your service (pseudo code)

```java
var client = new TemporalClient("<service>:7233");
```

# License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
