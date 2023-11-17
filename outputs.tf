output "dns_name" {
  value = aws_lb.main.dns_name
}
# the moment count comes its a list.. for list we use * and try function for public tuple empty it provides null there
output "listener" {
  value = try(aws_lb_listener.backend.*.arn[0], null)
}

output "alb_arn" {
  value = aws_lb.main.arn
}