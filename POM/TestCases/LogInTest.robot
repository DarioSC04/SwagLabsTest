*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/LoggingKeywords.robot

*** Test Cases ***
BasicLogin
    LoginSucess    standard_user  secret_sauce

LoginFail
    LoginUnSucess    not_standart_user  secret_sauce


*** Keywords ***
LoginSucess
    [Arguments]     ${USERNAME}    ${PASSWORD}
    OpenbrowserKeyword
    Sleep    1s
    LoginKeyword   ${USERNAME}    ${PASSWORD}
    Sleep    2s
    LogoutKeyword
    ClosebrowserKeyword

LoginUnSucess
    [Arguments]     ${USERNAME}    ${PASSWORD}
    OpenbrowserKeyword
    Sleep    1s
    LoginKeyword   ${USERNAME}    ${PASSWORD}
    Sleep    2s
    SeeIfFailedLoginKeyword
    ClosebrowserKeyword
