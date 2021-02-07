module "dnaas" {
  source = "../"
  zone = local.zone
}

output "dnaas" {
    value = module.dnaas
}