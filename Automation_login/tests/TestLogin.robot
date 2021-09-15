*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Caso de Teste 01: Realizar login
    Dado que acesso a página de login
    Quando submeto meu "${LOGIN}"
    E submeto minha "${PASSWORD}"
    Então devo ser direcionado para área logada

Caso de Teste 02: Usuário não cadastrado
    Dado que acesso a página de login
    Quando submeto meu "${NOMEFAKE}"
    E submeto minha "${PASSWORDFAKE}"
    Então devo receber um alerta: "O usuário informado não está cadastrado!"

Caso de Teste 03: Senha inválida!
    Dado que acesso a página de login
    Quando submeto meu "${LOGIN}"
    E submeto minha "${PASSWORDFAKE}"
    Então devo receber um alerta: "Senha é invalida!"