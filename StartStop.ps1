param($activity='start',[Parameter(Mandatory)]$resourceGroup)

az account set --subscription "MCT subscription"
if ($activity='start')
{
    az vm start --ids $(az vm list --resource-group $resourceGroup --query "[].id" -o tsv)
}
else
{
    az vm stop --ids $(az vm list --resource-group $resourceGroup --query "[].id" -o tsv)
}