# Python Project Template

A Python project template repository using:

* `poetry` for dependencies management 
* `pytest` for unittesting
* GitHub Actions and `pre-commit` for CI
* `flake8` with `bugbear` and `bandit` plugins for static and security analysis
* `safety` for dependencies security scanning
* `black` for code style
* `sphinx` for documentation
* `make` for command shortcuts

## Getting started

### GitHub CI

TODO How to duplicate repo

In Settings / Branches add Branch Protection for main.

In Settings / Secrets and Variables / Actions / New Secret create new item called
`OPENAI_API_KEY` and insert your OpenAI token for AI generated code reviews.

### Locally

Have Python, pip and poetry:

```
sudo apt install python3-poetry
```
