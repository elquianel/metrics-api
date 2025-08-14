# Metrics API



## Para rodar o projeto

- ``` make setup ``` -> setup inicial será feito e os containers iniciados.
- ``` make  up ``` -> constrói a imagem da aplicação da API e outras
- ``` make  stop ``` -> para a aplicação
- ``` make  logs-api ``` -> mostra os logs do container da api
- ``` make  logs-db ``` -> mostra os logs do container do db
- ``` make  build ``` -> compila o binário do Go
- ``` make  run ``` -> roda o app localmente (sem a necessidade do docker)
- ``` make  test ``` -> roda todos os testes do projeto
- ``` make  clean ``` -> remove o binário gerado com o make build