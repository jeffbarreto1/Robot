*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          https://training-wheels-protocol.herokuapp.com/login
${BROWSER}      chrome
${LOGIN}        stark
${PASSWORD}     jarvis!

*** Keywords ***
#Setup e Teardown
Abrir navegador
    Open Browser    about:blank  ${BROWSER}

Fechar navegador
    Close Browser

#Teste passo-a-passo
Acessar a página home do site
    Go To                           ${URL}
    Page Should Contain Element     xpath=//i[contains(.,'Login')]

Digitar o login no campo "Usuário"
    Input Text              id=userId   ${LOGIN}

Digitar o senha no campo "Password"
    Input Password          id=passId   ${PASSWORD}

Clicar no botão entrar
    Click Element           xpath=//i[contains(@class,'fa fa-2x fa-sign-in')]

Conferir se está na área logada
   Page Should Contain Element     xpath=//div[contains(@class,'flash success')]

Dado que acesso a página de login
    Acessar a página home do site

Quando submeto meu login e senha
    Digitar o login no campo "Usuário"
    Digitar o senha no campo "Password"
    Clicar no botão entrar

Então devo ser direcionado para área logada
    Conferir se está na área logada








