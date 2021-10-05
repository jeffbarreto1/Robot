*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Caso de Teste 01: Acessando Checkboxes
    Given que acesso a página inicial Training Wheel Protocol
    And e clico em Checkboxes
    Then a página Chekboxes deve ser exibida

