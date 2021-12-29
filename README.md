# argo-workflow-linter-action

A [GitHub Action](https://github.com/features/actions) for using [argo-workflow-linter-action](https://github.com/mojokb/arg-linter-action) in your workflows.

Lint only manifests of Workflows.

You can use the action as follows:

```yaml
on: push
name: Validate
jobs:
  kubeval:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: test
      uses: mojokb/argo-linter-action@master
```


