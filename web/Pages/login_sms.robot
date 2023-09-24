*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_sms.robot


*** Keywords ***
E confirmar o sms no 1° login
    ${FIELD_CODE}    Set Variable    xpath: //*[@testid="request-sms_SmsCode_code"]

    Wait Until Element Is Visible    ${FIELD_CODE}
    Sleep    5s
    Input Text    ${FIELD_CODE}    ${CODE}

    ${BUTTON_CONFIRM_SMS}    Set Variable    xpath: //*[@testid="request-sms_SmsCode_Submit"]

    Wait Until Element Is Visible    ${BUTTON_CONFIRM_SMS}
    Click Element    ${BUTTON_CONFIRM_SMS}
