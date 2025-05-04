# BDD Testing Practice

This tutorial uses different BDD frameworks in different languages to practice automated acceptance and E2E testing

## Branch Model

Each `feature/*` branch is a practice on a BDD framework.

For example: `feature/jbehave` is a practice on in Java; `feature/capybara` is a practice on Ruby language...
	
## Practice

In order to work/enhance on a practice, it's better to checkout the feature branch for a separate folder:

```bash
# Create root directory
mkdir test-autmation-practice && cd test-automation-practice

# Enhance the practice on Java BDD
mkdir jbehave && cd jbehave
git init
git add remote origin https://github.com/sunshine55/test-automation-practice.git
git fetch origin feature/jbehave
git checkout jbehave
```

Follow README on each feature branch to setup local development.