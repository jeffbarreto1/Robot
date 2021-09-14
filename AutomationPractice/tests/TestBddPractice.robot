*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Variables ***
${URL}          http://automationpractice.com/
${BROWSER}      chrome

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    Dado que esto na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados da busca


Caso de Teste 02: Pesquisar produto não existente
    Dado que esto na página home do site
    Quando eu pesquisar pelo produto "ItemNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "ItemNãoExistente""
        
*** Keywords ***
Dado que esto na página home do site
    Acessar a página home do site

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo pesquisa
    Clicar no botão pesquisar

Então o produto "${PRODUTO}" deve ser listado na página de resultados da busca
    Conferir se o produto "${PRODUTO}" foi listado no site

Então a página deve exibir a mensagem "${NOTFOUND_ALERT}"
    Conferir mensagem de erro "${NOTFOUND_ALERT}"