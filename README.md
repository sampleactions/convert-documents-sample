# ドキュメント変換サンプル ✨

このプロジェクトは、様々な形式のドキュメントを変換するためのサンプルコードです。

## 概要 📝

このプロジェクトでは、以下の機能を提供します：

- ドキュメント形式の変換 🔄
- 複数のファイル形式のサポート 📁
- バッチ処理機能 ⚙️

## 機能 🚀

### サポートされている形式 📂

- **Markdown** (.md) ✍️
- **PDF** (.pdf) 📄
- **Word** (.docx) 📝
- **HTML** (.html) 🌐

### 主な機能 🧰

1. **形式変換**: 異なるドキュメント形式間での変換をサポート 🔀
2. **バッチ処理**: 複数のファイルを一度に処理 🧮
3. **カスタマイズ可能**: 設定ファイルで動作をカスタマイズ可能 🧩

## 使い方 🧭

### インストール 📦

```bash
npm install
```

### 実行 ▶️

```bash
npm start
```

## ライセンス 📜

MIT License

## 貢献 🤝

プルリクエストやイシューの報告を歓迎します。


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidr_blocks"></a> [allowed\_cidr\_blocks](#input\_allowed\_cidr\_blocks) | アクセスを許可するCIDRブロックのリスト | `list(string)` | <pre>[<br/>  "10.0.0.0/8"<br/>]</pre> | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWSリージョン | `string` | `"ap-northeast-1"` | no |
| <a name="input_enable_monitoring"></a> [enable\_monitoring](#input\_enable\_monitoring) | CloudWatch監視を有効にするかどうか | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | デプロイ環境（例: dev, staging, production） | `string` | `"dev"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2インスタンスのタイプ | `string` | `"t3.micro"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | プロジェクトの名前。リソースの命名に使用されます。 | `string` | `"sample-project"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | リソースに付与する共通タグ | `map(string)` | <pre>{<br/>  "ManagedBy": "Terraform",<br/>  "Project": "DocumentConvert"<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | 作成されたEC2インスタンスのID |
| <a name="output_instance_public_dns"></a> [instance\_public\_dns](#output\_instance\_public\_dns) | EC2インスタンスのパブリックDNS名 |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | EC2インスタンスのパブリックIPアドレス |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | 作成されたセキュリティグループのID |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | 作成されたパブリックサブネットのID |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | 作成されたVPCのID |
| <a name="output_web_server_url"></a> [web\_server\_url](#output\_web\_server\_url) | WebサーバーにアクセスするためのURL |
<!-- END_TF_DOCS -->