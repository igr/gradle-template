# Gradle Template

Gradle is cool, but scripts are getting large and repetitive. This is a simple tool that generates Gradle build script from various templates.

## Usage

1. Prepare `project.json` and `organization.json` in projects root.
2. Call the `make.sh` with template name as an argument.

## Available templates

| Name           | Version | vsc     | Maven        | Junit 5  | Code Coverage |
|----------------|---------|---------|--------------|----------|---------------|
| **java-maven** | v1.1.0  | github  | yes + plugin | included | JaCoCo        |

## Project organization

Each template is located in it's folder. Template name is equals to folder name. There can be any number of template files. Template file ends with `.tmpl`.

Special folder `_g` holds Gradle template _fragments_. They are simple piece of text that can be inserted into the template.

## Prerequisites

+ `gomplate`

```bash
    brew install hairyhenderson/tap/gomplate
```