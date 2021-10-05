*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
#Setup e Teardown
Abrir navegador
    Open Browser    about:blank  ${BROWSER}

Fechar navegador
    Close Browser

#Realizando a automatização
Given que acesso a página home do site
    Go To   ${URL}  
    Maximize Browser Window
    Wait Until Element Is Visible       ${ID_LOGO}    
    Title Should Be                     ${TITLE}
    
When pesquiso pela oferta "${OFERTA}"
    Input Text                          ${INPUT_BUSCA}    ${OFERTA}
    Click Element                       ${BOTAO_BUSCAR}
    Wait Until Element Is Visible       ${ELEMENTO_VOCEPESQUISOU}
    Page Should Contain Element         ${ELEMENTO_ORDENACAO} 

And clico no produto pesquisado
    Click Element                   ${IMAGEM_CLICK}
    Wait Until Element Is Visible   ${BLOCO_VALORES}
    Page Should Contain Element     ${INPUT_FRETE}

And Clico em comprar
    Click Element                   ${BOTAO_COMPRAR}
    Wait Until Element Is Visible   ${ELEMENTO_ADDCARRINHO}
    Wait Until Element Is Visible   ${BOTAO_GOCARRINHO}
    Click Element                   ${BOTAO_GOCARRINHO}
    Wait Until Element Is Visible   ${ELEMENTO_PASSOSCHACKOUT}
    Click Element                   ${BOTAO_GOPAGAMENTO}
    
Then devo ser direcionado para realizar login
    Wait Until Element Is Visible     ${ELEMENTO_ID}
    Page Should Contain Element       ${FORM_LOGIN}

When pesquiso pela oferta errada "${OFERTA}"
    Input Text      ${INPUT_BUSCA}     ${OFERTA}
    Click Element   ${BOTAO_BUSCAR}

Then devo encontrar um alerta de produto não encontrado
    Wait Until Element Is Visible     ${ELEMENTO_NOTFOUND}
    Page Should Contain Element       ${LOCATOR_NOTFOUND}