# DevOps na Prática - Fase 2 🚀

Este arquivo README documenta as melhorias implementadas no projeto DevOps na Prática para a Fase 2.

## 🔧 Melhorias Realizadas na Fase 2

### 1. Expansão do Pipeline CI para CD

- **Melhorias**:
  - Pipeline CI/CD completo com GitHub Actions
  - Etapas de segurança 
  - Build e push de imagem Docker para registry
  - Deploy canário para produção
  - Verificação de saúde pós-deploy

📂 Arquivo: `.github/workflows/ci-cd.yml`

### 2. Containerização com Docker

- **Melhorias**:
  - Dockerfile multi-estágio:
     - Primeira fase para **build e testes** da aplicação.
     - Segunda fase contendo apenas arquivos essenciais para execução em produção.
  - Implementado uso de **usuário não-root**, aumentando a segurança do container.
  - Aplicação isolada dentro de um diretório `/app`.

📂 Arquivo: `Dockerfile`

### 3. Docker Compose e Stack Local

- Criação de um `docker-compose.yml` para orquestração local dos serviços.
- Facilidade para rodar, testar e monitorar o app de forma padronizada.

📂 Arquivo: `docker-compose.yml`

### 4. Scripts de Deploy Automatizado

- **Melhorias**:
  - Adição de scripts shell:
  - `deploy_railway.sh` para facilitar o deploy em ambiente externo (como Railway).
  - `rollback.sh` para restaurar versões anteriores rapidamente em caso de falhas.

📂 Arquivos: `deploy_railway.sh`, `rollback.sh`

### 5. Boas Práticas e Qualidade de Código

- Adição do arquivo `.eslintrc.json` para padronização e linting do código JavaScript.

📂 Arquivos: `.eslintrc.json`

### 6. Testes Mais Abrangentes

- **Melhorias**:
  - Testes unitários com Jest
  - Testes de performance básicos
  - Configuração de cobertura de código

📂 Arquivos: `tests/unit.test.js`, `tests/integration.test.js`

### 7. Monitoramento e Observabilidade

- **Melhorias**:
  - Configuração do Prometheus
  - Dashboard Grafana para visualização de métricas
  - Métricas de requisições, erros e performance

📂 Arquivos: `monitoring/prometheus.yml`, `monitoring/grafana-provisioning/dashboards/app-dashboard.json`


## Como Executar o Projeto

### Requisitos

- Docker e Docker Compose
- Node.js 
- Git

### Passos para Execução Local

1. **Clone o repositório**:
   ```
   git clone https://github.com/PedroBarp/PedroBarp-devops-na-pratica-fase_V3.git
   cd PedroBarp-devops-na-pratica-fase_V3
   ```

2. **Instale as dependências**:
   ```
   npm install
   ```

3. **Execute os testes**:
   ```
   npm test
   ```

4. **Inicie a aplicação com Docker Compose**:
   ```
   docker-compose up -d
   ```

5. **Acesse a aplicação e monitoramento**:
   - Aplicação: http://localhost:{port}
   - Prometheus: http://localhost:9090
   - Grafana: http://localhost:3001 (usuário: admin, senha: admin)

## Notas Adicionais

- O dashboard Grafana inclui métricas de requisições, tempo de resposta, taxa de erros e uso de memória.

