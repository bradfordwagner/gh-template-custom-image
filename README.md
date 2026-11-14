# gh-template-custom-image
- Template for building custom container images with the `custom` flavor of [gh-template-lib](https://github.com/bradfordwagner/gh-template-lib)
- `Dockerfile` receives `OS` (`<upstream.repo>:<upstream.tag>-<os>`) plus every `builds[].args` entry from `config.yaml` as build args
- one image is built per `os` x `arch`, then stitched into a multi-arch manifest at `<target_repo>:<version>-<os>`
