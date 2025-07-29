*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}     chrome
${URL}         https://www.google.com

*** Test Cases ***
Open Google Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s
    Close Browser