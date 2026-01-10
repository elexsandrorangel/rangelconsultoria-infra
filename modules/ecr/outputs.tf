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

output "papyrus_api" {
  description = "Papyrus API ECR repository"
  value = {
    repository_url = "${aws_ecr_repository.papyrus-api.repository_url}"
    arn            = "${aws_ecr_repository.papyrus-api.arn}"
  }
}

output "papyrus_web" {
  description = "Papyrus Web ECR repository"
  value = {
    repository_url = "${aws_ecr_repository.papyrus-web.repository_url}"
    arn            = "${aws_ecr_repository.papyrus-web.arn}"
  }
}