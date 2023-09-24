*** Settings ***
Documentation       Teste regressivo para verificar a recuperação do login com sucesso do usuário no APP

Resource            ../Pages/home.robot
Resource            ../Pages/forgot_login.robot


*** Keywords ***
CT: Recuperar login com sucesso
    Dado que esteja na página de login do APP
    Quando clicar no botão de Esqueceu o login?
    E preencher o CPF/CNPJ corretamente na tela de recuperação de login
    Então um email com o login será enviado para o email cadastrado na conta do usuário
