*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     OperatingSystem
Library     Process

*** Variables ***
${Browser}      ${SELENIUM_BROWSER}

#${Capabilities}
#    ...  browsername: ${SELENIUM_BROWSER},
#    ...  platform: ${SELENIUM_PLATFORM},

*** Keywords ***
Base Test Setup
    [Arguments]  ${Browser_type}
    open browser  about:    browser=${Browser_type}
    ${ImplicitWait} =   set selenium implicit wait  5 seconds
    maximize browser window
    delete all cookies

Base Tear Down
    close all browsers