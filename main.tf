locals {
  environment = lower(var.environment)
  stack       = lower(var.stack)

  tags = {
    Environment = local.environment
    Stack       = local.stack
  }
}
