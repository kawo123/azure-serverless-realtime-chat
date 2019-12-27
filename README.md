# Azure Serverless Realtime Chat

Realtime chat application using Azure Functions and Azure SignalR

## Pre-requisite

- [Terraform](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
- [Azure Function Core Tools](https://docs.microsoft.com/en-us/azure/azure-functions/functions-run-local)
- [VS Code](https://code.visualstudio.com/download)
  - [VS Code: Azure Function Tutorial](https://code.visualstudio.com/tutorials/functions-extension/getting-started)

## Getting Started

- Clone the repository

- In `./terraform`:
  - Change `prefix` in `variables.tf` because Azure Storage and Azure Function names has to be globally unique
    - For the remainder of the documentation, the prefix `srvless-chat` **WILL BE ASSUMED**
  - Run `terraform init` to initialize Terraform
  - Run `terraform plan -out=out.tfplan`
  - Run `terraform apply out.tfplan`
  - Note the outputs of `terraform apply`

- In `./functions`
  - In `local.settings.json`, replace Azure SignalR connection string with placeholder `<<AzureSignalRConnectionString>>`
  - Run `func start` to start local instances of Azure Functions

- Open `./index.html` using any internet browser
  - When the page prompts for Azure Function app base URL, enter `http://localhost:7071`
  - When the page prompts for username, enter any username you like

## Next Steps

- [] Publish Azure Functions to Azure to test the functionality
- [] Documentation

---

### PLEASE NOTE FOR THE ENTIRETY OF THIS REPOSITORY AND ALL ASSETS

1. No warranties or guarantees are made or implied.
2. All assets here are provided by me "as is". Use at your own risk. Validate before use.
3. I am not representing my employer with these assets, and my employer assumes no liability whatsoever, and will not provide support, for any use of these assets.
4. Use of the assets in this repo in your Azure environment may or will incur Azure usage and charges. You are completely responsible for monitoring and managing your Azure usage.

---

Unless otherwise noted, all assets here are authored by me. Feel free to examine, learn from, comment, and re-use (subject to the above) as needed and without intellectual property restrictions.

If anything here helps you, attribution and/or a quick note is much appreciated.
