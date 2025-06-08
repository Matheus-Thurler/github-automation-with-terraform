module "sta_repository" {
  source = "./modules/sta-repository"
  repository_name = var.repository_name
  repository_description = var.repository_description
  visibility = var.visibility
  template_owner = var.template_owner
  template_repository = var.template_repository
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_region = var.aws_region
  aws_s3_bucket_name = var.aws_s3_bucket_name
}

# module "srv_repository" {
#   source = "./modules/srv-repository"
#   repository_name = var.repository_name
#   repository_description = var.repository_description
#   visibility = var.visibility
#   template_owner = var.template_owner
#   template_repository = var.template_repository
# }