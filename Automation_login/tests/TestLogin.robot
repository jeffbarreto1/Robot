*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador


*** Test Cases ***
Caso de Teste 01: Realizar login
    Dado que acesso a página de login
    Quando submeto meu login e senha
    Então devo ser direcionado para área logada

Caso de Teste 02: Usuário não cadastrado
    Dado que acesso a página de login
    Quando submeto um login não cadastrado
    Então devo receber um alerta: "O usuário informado não está cadastrado!"

Caso de Teste 03: Senha inválida!
    Dado que acesso a página de login
    Quando submeto a senha incorreta
    Então devo receber um alerta: "Senha é invalida!"




