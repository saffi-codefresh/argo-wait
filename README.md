# Wait


## Usage:
```
wait 5 

### with argo workflows

argo template create ./workflows/workflow-template.yaml # create the template

argo submit ./workflows/workflow.yaml -p seconds=5
```
# argo-wait
