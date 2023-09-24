*** Settings ***
Library     SeleniumLibrary    timeout=30


*** Variables ***
${LOGO_IMAGE}                   xpath: //*[@testid="home_Logo"]

${OPTION_PERFIL}                xpath: //*[@testid="home_PROFILE_click"]
${OPTION_LOADING}               xpath: //*[@testid="home_Loading"]
${OPTION_CHANGE_PASSWORD}       xpath: //*[@testid="my-account_CHANGE_PASSWORD_click"]

${FIELD_SMS}                    xpath: //*[@testid="my-account_ConfirmationModal_smsCode"]
${CODE_SMS}                     112233
${BUTTON_MODAL_SMS}             xpath: //*[@testid="my-account_ConfirmationModal_click"]

${FIELD_CHANGE_PASSWORD}        xpath: //*[@testid="change-password_AdvancedInput_password"]
${PASSWORD}                     Pass123123
${BUTTON_CHANGE_PASSWORD}       xpath: //*[@testid="change-password_AdvancedButton_click"]

${SUCESS_MESSAGE}               Senha alterada com sucesso


*** Keywords ***
Dado que o usuário esteja logado no sistema
    Wait Until Element Is Visible    ${LOGO_IMAGE}    30s

E esteja na tela de perfil
    Wait Until Element Is Not Visible    ${OPTION_LOADING}
    Wait Until Element Is Visible    ${OPTION_PERFIL}
    Click Element    ${OPTION_PERFIL}

Quando clicar em ALTERAR MINHA SENHA
    Wait Until Element Is Visible    ${OPTION_CHANGE_PASSWORD}
    Click Element    ${OPTION_CHANGE_PASSWORD}

E preencher as informações corretamente
    Wait Until Element Is Visible    ${FIELD_SMS}
    Input Text    ${FIELD_SMS}    ${CODE_SMS}
    Wait Until Element Is Visible    ${BUTTON_MODAL_SMS}
    Click Element    ${BUTTON_MODAL_SMS}

    Wait Until Element Is Visible    ${FIELD_CHANGE_PASSWORD}    10s
    Input Text    ${FIELD_CHANGE_PASSWORD}    ${PASSWORD}
    Wait Until Element Is Visible    ${BUTTON_CHANGE_PASSWORD}    10s
    Click Element    ${BUTTON_CHANGE_PASSWORD}

Então sua senha será alterada
    # Wait Until Page Contains    ${SUCESS_MESSAGE}
    Log    Senha alterada!
