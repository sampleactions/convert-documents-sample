# プロジェクト名
variable "project_name" {
  description = "プロジェクトの名前。リソースの命名に使用されます。"
  type        = string
  default     = "sample-project"
}

# 環境名
variable "environment" {
  description = "デプロイ環境（例: dev, staging, production）"
  type        = string
  default     = "dev"
}

# リージョン
variable "aws_region" {
  description = "AWSリージョン"
  type        = string
  default     = "ap-northeast-1"
}

# インスタンスタイプ
variable "instance_type" {
  description = "EC2インスタンスのタイプ"
  type        = string
  default     = "t3.micro"
}

# 許可するIPアドレス
variable "allowed_cidr_blocks" {
  description = "アクセスを許可するCIDRブロックのリスト"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

# タグ
variable "tags" {
  description = "リソースに付与する共通タグ"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "DocumentConvert"
  }
}

# 有効化フラグ
variable "enable_monitoring" {
  description = "CloudWatch監視を有効にするかどうか"
  type        = bool
  default     = true
}

