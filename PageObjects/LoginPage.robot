*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Text_username}     xpath=''
${Text_password}     xpath=''

*** Keywords ***
Open Browser To Login Page
    go to  ${LOGIN_URL}

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Title Should Be    Welcome Page