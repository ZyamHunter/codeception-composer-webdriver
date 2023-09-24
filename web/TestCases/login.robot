*** Settings ***
Documentation       Teste regressivo para verificar o login com sucesso do usuário no IBK

Resource            ../Pages/login.robot
Resource            ../Pages/login_sms.robot
Resource            ../Pages/home.robot


*** Keywords ***
CT: Logar no IBK com sucesso
    Dado que esteja na página de login do IBK
    E preencha as credenciais corretamente (Login)
    Quando clicar em entrar (Login)
    E confirmar o sms no 1° login
    Então será logado no Internet Banking
