*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Caso de Teste 01: Pesquisando um produto válido
    Dado que acesso a página home do site
    Quando pesquiso pela oferta "Xbox Series S"
    E clico no produto pesquisado
    E Clico em comprar
    Então devo ser direcionado para realizar login

Caso de Teste 02: Pesquisando outro produto válido
    Dado que acesso a página home do site
    Quando pesquiso pela oferta "Mouse Bluetooth"
    E clico no produto pesquisado
    E Clico em comprar
    Então devo ser direcionado para realizar login

Caso de Teste 03: Pesquisando um produto inválido
    Dado que acesso a página home do site
    Quando pesquiso pela oferta errada "Produto que não existe"
    Então devo encontrar um alerta de produto não encontrado

