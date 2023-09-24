*** Settings ***
Resource    ../TestCases/forgot_login.robot


*** Test Cases ***
forgot_login
    [Tags]    app - recuperação de login
    CT: Recuperar login com sucesso
