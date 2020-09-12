locals {
  environments = {
    acc  = "acceptance"
    dev  = "development"
    prod = "production"
    test = "test"
  }

  environment = lookup(local.environments, lower(var.environment), lower(var.environment))
  stack       = lower(var.stack)

  tags = {
    Env         = local.environment
    Environment = local.environment
    Stack       = local.stack
  }
}
