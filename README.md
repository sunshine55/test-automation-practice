# Automation Test with Playwright

Leverage Playwright to automate tasks that requires browser interaction

## Prequisites

VSCode, Docker Engine (or Docker Desktop)

## Practice

```bash
# Create root directory
mkdir test-autmation-practice && cd test-automation-practice

# Enhance the practice on Playwright
mkdir playwright && cd playwright
git init
git add remote origin https://github.com/sunshine55/test-automation-practice.git
git fetch origin feature/playwright
git checkout feature/playwright
docker compose up -d
```

Connect to the container using VSCode's `ms-vscode-remote.remote-containers` plugin

See. [Playright Docs](https://playwright.dev/docs/docker)
