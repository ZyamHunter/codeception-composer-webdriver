*** Settings ***
Resource    ../TestCases/change_password.robot
Resource    ../TestCases/login.robot


*** Test Cases ***
login
    [Tags]    ibk - login
    CT: Logar no IBK com sucesso
    Sleep    5s

change_password
    [Tags]    ibk - troca de senha
    CT: Logar no IBK com sucesso
    CT: Troca de senha
