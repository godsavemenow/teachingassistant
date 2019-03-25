Feature: auto-avaliação
As a aluno
I want to adicionar auto-avaliação.
so that Avaliar suas metas de acordo com seu desempenho.

Scenario: Adicionando auto-avaliação
Given Estou na “Tela de aluno”
And Me vejo sem auto-avaliação
When Me auto-avalio com “”
Then Recebo um alert com “Avaliação inválida”
And Retorno a tela e auto-avaliação  

Scenario: Adicionando auto-avaliação sem discrepância
Given Estou na “Tela de aluno”
And Me vejo sem auto-avaliação
When Me auto-avalio com “MA”
Then Recebo um alert com “Avaliação Válida”

Scenario: 1 aluno de 3 com discrepância
Given Estou na “Tela de professor”
And Vejo que 1 (33%) auto-avaliação está discrepante.
When Requisito alteração
Then Recebo um alert com “Alteração solicitada”
And Retorno a tela e auto-avaliação
Hello


