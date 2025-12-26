# SRE Lab — Deploy Automatizado com Docker

Este repositório contém um laboratório prático desenvolvido para consolidar fundamentos de **Site Reliability Engineering (SRE)**, simulando um fluxo básico de deploy confiável para uma aplicação web containerizada.

## Descrição do Laboratório

O laboratório implementa uma aplicação web simples empacotada em Docker, com validação automatizada via testes, monitoramento básico de saúde e suporte a rollback manual. Todo o fluxo foi versionado e integrado ao GitHub com execução automática de testes a cada alteração no código.

## Tecnologias Utilizadas

- Docker
- Python 3
- Pytest
- GitHub Actions
- Bash
- Git

## Estrutura do Projeto

sre-lab/
├── app/
│ └── app.py
├── tests/
│ └── test_app.py
├── Dockerfile
├── requirements.txt
├── monitor.sh
├── .github/
│ └── workflows/
│ └── ci.yml
└── README.md


## Pipeline de Confiabilidade

A cada `push` ou `pull request` para a branch `main`, o GitHub Actions executa automaticamente:

1. Checkout do código
2. Build da imagem Docker
3. Execução dos testes automatizados com Pytest

O deploy só é considerado seguro caso todos os testes sejam aprovados.

## Monitoramento

A aplicação expõe um endpoint de saúde (`/health`) e possui um script de monitoramento simples (`monitor.sh`) que verifica periodicamente a disponibilidade do serviço via HTTP.

## Estratégia de Rollback

O rollback é realizado manualmente por meio da execução de uma versão anterior da imagem Docker, permitindo rápida recuperação em caso de falha após uma atualização.

## Objetivo Educacional

Este laboratório foi desenvolvido com foco em:
- Automação de validações antes do deploy
- Confiabilidade de aplicações
- Observabilidade básica
- Boas práticas de versionamento
- Documentação técnica clara

O projeto representa um cenário simplificado, porém alinhado a atividades reais de um **SRE Júnior** em ambientes produtivos.
