*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/forgot_login.robot


*** Keywords ***
E preencher o CPF/CNPJ corretamente na tela de recuperação de login
    Wait Until Element Is Visible    ${INPUT_CPF/CNPJ}
    Input Text    ${INPUT_CPF/CNPJ}    61.113.892/0001-21

    Wait Until Element Is Visible    ${RECUPERATION_BUTTON}
    Click Element    ${RECUPERATION_BUTTON}
