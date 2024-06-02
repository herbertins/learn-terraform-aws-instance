module "aws-dev" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao = "us-west-2"
    chave = "IaC-Dev"
    grupo_seguranca = "acesso_geral_dev"
    nome_servidor = "Desenvolvimento"
}

output "IP" {
  value = module.aws-dev.IP_publico
}