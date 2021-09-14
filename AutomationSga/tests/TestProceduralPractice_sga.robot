*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador


*** Test Cases ***
Caso de Teste 01: Realizar login
    Acessar a página home do site
    Digitar o login no campo "Usuário"
    Digitar o senha no campo "Password"
    Clicar no botão entrar
    Conferir se está na área logada
    #Clicar no botão "Emissão de Bilhetes"

#Caso de Teste 02: Gerar bilhetes
