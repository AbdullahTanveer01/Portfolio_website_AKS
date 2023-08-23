/*provider "azurerm" {
  #features {}
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  default     = "portfolio-rg"
}

variable "location" {
  description = "Location for Azure resources"
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  default     = "portfolio-aks-cluster"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  default     = "portfoliocluster"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  default     = "portfolio6523"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  default     = "portfolio-app-service-plan"
}

variable "web_app_name" {
  description = "Name of the Azure Web App"
  default     = "my-portfolio-web-app45112"  # Updated name
}

resource "azurerm_resource_group" "portfolio_resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "portfolio_container_registry" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name
  location            = azurerm_resource_group.portfolio_resource_group.location
  sku                 = "Basic"
}

resource "azurerm_app_service_plan" "portfolio_app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.portfolio_resource_group.location
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "portfolio_web_app" {
  name                = var.web_app_name
  location            = azurerm_resource_group.portfolio_resource_group.location
  resource_group_name = azurerm_resource_group.portfolio_resource_group.name
  app_service_plan_id = azurerm_app_service_plan.portfolio_app_service_plan.id

  site_config {
    windows_fx_version = "DOTNET|5.0"
  }

  app_settings = {
    "GITHUB_REPO"   = "https://github.com/AbdullahTanveer01/Portfolio_website"
  }

  connection_string {
    name  = "MyDbConnStr"
    type  = "SQLAzure"
    value = "Server=tcp:mydbserver.database.windows.net,1433;Initial Catalog=mydb;"
  }
}
*/