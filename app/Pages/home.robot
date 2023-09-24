*** Settings ***
Library     AppiumLibrary    timeout=500
Resource    ../Resources/home.robot


*** Keywords ***
Dado que esteja na página de login do APP
    Open Application
    ...    ${SERVER_APPIUM}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    deviceName=${ANDROID_DEVICENAME}
    ...    appPackage=${ANDROID_APPPACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    noReset=${True}

    Wait Until Element Is Visible    ${ENTER_BUTTON_HOME}
    Click Element    ${ENTER_BUTTON_HOME}

Quando clicar no botão de Esqueceu o login?
    Wait Until Element Is Visible    ${FORGOT_LOGIN_OPTION}
    Click Element    ${FORGOT_LOGIN_OPTION}

Então um email com o login será enviado para o email cadastrado na conta do usuário
    Wait Until Page Contains    ${NOTIFICATION}
