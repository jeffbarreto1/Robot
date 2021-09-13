*** Settings ***
Library SeleniumLibrary

*** Variables ***
${URL}          http://automationpractice.com/
${BROWSER}      chrome

*** Test Cases ***
Caso de Teste 01: Pesquiser produto existente
    Dado que esto na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultados da busca


Caso de Teste 02: Pesquisar produto não existente
    Dado que esto na página home do site
    Quando eu pesquisar pelo produto "ItemNãoExistente"
    Então a página deve exibir a mensagem "No results were found for you search "ItemNãoExistente""
        
*** Keywords ***
    