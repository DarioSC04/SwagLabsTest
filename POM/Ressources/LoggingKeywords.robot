*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***

OpenbrowserKeyword
    Open Browser    ${URL}  chrome
    Maximize Browser Window

ClosebrowserKeyword
    Close Browser

LoginKeyword
    [Arguments]     ${USERNAME}    ${PASSWORD}
    Input text    ${txt_login_username}    ${USERNAME}
    Input text    ${txt_login_password}    ${PASSWORD}
    Click Element    ${btn_login_login}

LogoutKeyword
    Wait Until Element Is Visible    ${btn_login_login}    3s
    Click Element    ${btn_login_login}