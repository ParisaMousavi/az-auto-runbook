# Push changes in Azure DevOps Repo & GitHub
```
git remote set-url --add --push origin https://p-moosavinezhad@dev.azure.com/p-moosavinezhad/az-iac/_git/az-auto-runbook

git remote set-url --add --push origin https://github.com/ParisaMousavi/az-auto-runbook.git
```

# Create a new tag
```
git tag -a <year.month.day> -m "description"

git push origin <year.month.day>

```