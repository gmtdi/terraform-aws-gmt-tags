locals {
  environments = {
    acc  = "acceptance"
    dev  = "development"
    prod = "production"
  }

  environment = lookup(local.environments, lower(var.environment), lower(var.environment))
  stack       = lower(var.stack)

  tags = {
    Environment = local.environment
    Stack       = local.stack
    env         = local.environment
  }
}
