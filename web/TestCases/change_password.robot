*** Settings ***
Documentation       Teste regressivo para verificar a troca de senha do usuário no IBK

Resource            ../Steps/change_password.robot


*** Keywords ***
CT: Troca de senha
    Dado que o usuário esteja logado no sistema
    E esteja na tela de perfil
    Quando clicar em ALTERAR MINHA SENHA
    E preencher as informações corretamente
    Então sua senha será alterada
