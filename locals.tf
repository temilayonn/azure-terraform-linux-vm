locals {
  subscription_id = "599e07ba-b993-4525-8bf5-ee1832f2914c"
  tenant_id       = "27167de1-5481-4130-b8ff-0b34811b852e"
  location        = var.location
  
  tags = merge({
    deployed_by        = "TF-AUTO-SPN"
    ServiceClass       = "bronze"
    ApplicationName    = "FileShare"
    DataClassification = "internal"
    BusinessUnit       = "DASS"
    CostCenter         = "122138"
    OwnerEmail         = "SKothap2@rockwellautomation.com"
    Lifespan           = "years"
    ITManaged          = "true"
    Environment        = "development"
    UpdateGroup        = "N1"
  }, var.tags)
}
