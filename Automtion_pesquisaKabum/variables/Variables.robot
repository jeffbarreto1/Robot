*** Variables ***
${URL}                                  https://www.kabum.com.br/
${BROWSER}                              chrome
${TITLE}                                KaBuM! | Maior E-commerce de Tecnologia e Games da América Latina
${OFERTA}           
${NOTFOUND}                             Lamentamos, nenhum produto encontrado com esse critério de pesquisa.

#LOCATOR
${ID_LOGO}                              id=logoKabum
${INPUT_BUSCA}                          id=input-busca
${BOTAO_BUSCAR}                         xpath=//*[@id="barraBuscaKabum"]/div/form/button
${ELEMENTO_VOCEPESQUISOU}               id=listingBreadcrumbs
${ELEMENTO_ORDENACAO}                   id=listingOrdenation
${IMAGEM_CLICK}                         (//img[contains(@class,'imageCard')])[1]
${BLOCO_VALORES}                        id=blocoValores
${INPUT_FRETE}                          id=inputCalcularFrete
${BOTAO_COMPRAR}                        xpath=//button[contains(.,'COMPRAR')]
${ELEMENTO_ADDCARRINHO}                 xpath=//strong[contains(.,'PRODUTO ADICIONADO NO CARRINHO')]
${BOTAO_GOCARRINHO}                     xpath=//button[contains(@class,'buttonGoToCart')]
${ELEMENTO_PASSOSCHACKOUT}              xpath=//*[@id="stepperCheckout"]
${BOTAO_GOPAGAMENTO}                    xpath=//button[contains(@id,'buttonGoToPayment')]
${ELEMENTO_ID}                          xpath=//h1[contains(.,'Identificação')]
${FORM_LOGIN}                           id=formLogin
${ELEMENTO_NOTFOUND}                    id=listingEmpty
${LOCATOR_NOTFOUND}                     xpath=//b[contains(.,'${NOTFOUND}')]