*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          http://192.168.1.2:8888/sga64/
${BROWSER}      chrome
${LOGIN}        automation
${PASSWORD}     123

*** Keywords ***
# Setupe e Teardown
Abrir navegador
    Open Browser    about:blank  ${BROWSER}

Fechar navegador
    Close Browser

#Teste passo-a-passo
Acessar a página home do site
    Go To               ${URL}
    Title Should Be     Gestão do Atendimento | Log in

Digitar o login no campo "Usuário"
    Input Text          name=user  ${LOGIN}

Digitar o senha no campo "Password"
    Input Password      name=password  ${PASSWORD}

Clicar no botão entrar
    Click Element   xpath=//button[contains(@type,'submit')]

Conferir se está na área logada
    Title Should Be     ${LOGIN} - Gestão do Atendimento

#Clicar no botão "Emissão de Bilhetes"
#   Click Element   xpath=//span[contains(.,'Atendimento')]






