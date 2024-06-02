module "aws-prod" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao = "us-west-2"
    chave = "IaC-Prod"
    grupo_seguranca = "acesso_geral_prod"
    nome_servidor = "Produção"
}

output "IP_Prod" {
  value = module.aws-prod.IP_publico
}

