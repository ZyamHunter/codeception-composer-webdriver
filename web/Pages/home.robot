*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/home.robot


*** Keywords ***
Então será logado no Internet Banking
    ${LOGO}    Run Keyword And Return Status    Wait Until Element Is Visible    ${LOGO_IMAGE}    30s

    IF    ${LOGO}
        Log To Console    Logo está na página!
    ELSE
        Log To Console    Logo não está na página!
        Fatal Error    Logo não está na página!
    END
