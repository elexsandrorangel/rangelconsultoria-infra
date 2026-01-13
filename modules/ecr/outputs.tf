output "mywallet_api" {
  #description = "MyWallet API ECR repository"
  value = {
    repository_url = "${aws_ecr_repository.mywallet-api.repository_url}"
    arn            = "${aws_ecr_repository.mywallet-api.arn}"
  }
}

output "mywallet_ui" {
  description = "MyWallet UI ECR repository"
  value = {
    repository_url = "${aws_ecr_repository.mywallet-ui.repository_url}"
    arn            = "${aws_ecr_repository.mywallet-ui.arn}"
  }
}
