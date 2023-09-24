*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login.robot


*** Keywords ***
Dado que esteja na página de login do IBK
    init chrome
    Log To Console    Navegador iniciado com sucesso!

E preencha as credenciais corretamente (Login)
    ${FIELD_USER}    Set Variable    xpath: //*[@testid="login_AdvancedInput_username"]

    Wait Until Element Is Visible    ${FIELD_USER}
    Input Text    ${FIELD_USER}    ${USER}

    ${FIELD_PASSWORD}    Set Variable    xpath: //*[@testid="login_AdvancedInput_password"]

    Wait Until Element Is Visible    ${FIELD_PASSWORD}
    Input Text    ${FIELD_PASSWORD}    ${PASSWORD}

Quando clicar em entrar (Login)
    ${ENTER_BUTTON}    Set Variable    xpath: //*[@testid="login_Button_Submit"]

    Click Button    ${ENTER_BUTTON}

init chrome
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Call Method    ${options}    add_argument    --headless

    Create Webdriver    Chrome    options=${options}

    Go To    https://ibk.beta.bankeiro.com/

init edge
    Open Browser    https://ibk.beta.bankeiro.com/    edge
