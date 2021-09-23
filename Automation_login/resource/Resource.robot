*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
#Setup e Teardown
Abrir navegador
    Open Browser    about:blank  ${BROWSER}

Fechar navegador
    Close Browser

#Teste passo-a-passo
Dado que acesso a página de login
    Go To                           ${URL}
    Page Should Contain Element     xpath=//i[contains(.,'Login')]

Quando submeto meu }"${LOGIN}"
    Input Text              id=userId   ${LOGIN}

E submeto minha "${PASSWORD}"
    Input Password          id=passId   ${PASSWORD}

Então devo ser direcionado para área logada
    Click Element           xpath=//i[contains(@class,'fa fa-2x fa-sign-in')]
    Page Should Contain Element     xpath=//div[contains(@class,'flash success')]
    Sleep    2

Então devo receber um alerta: "O usuário informado não está cadastrado!"
    Click Element           xpath=//i[contains(@class,'fa fa-2x fa-sign-in')]
    Page Should Contain Element     xpath=//div[contains(@class,"flash error")]

Então devo receber um alerta: "Senha é invalida!"
    Click Element           xpath=//i[contains(@class,'fa fa-2x fa-sign-in')]
    Page Should Contain Element     xpath=//div[contains(@class,'flash error')]