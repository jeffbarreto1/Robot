*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Caso de Teste 01: Pesquisando um produto válido
    Given que acesso a página home do site
    When pesquiso pela oferta "Xbox Series S"
    And clico no produto pesquisado
    And Clico em comprar
    Then devo ser direcionado para realizar login

Caso de Teste 02: Pesquisando outro produto válido
    Given que acesso a página home do site
    When pesquiso pela oferta "Mouse Bluetooth"
    And clico no produto pesquisado
    And Clico em comprar
    Then devo ser direcionado para realizar login

Caso de Teste 03: Pesquisando um produto inválido
    Given que acesso a página home do site
    When pesquiso pela oferta errada "Produto que não existe"
    Then devo encontrar um alerta de produto não encontrado

