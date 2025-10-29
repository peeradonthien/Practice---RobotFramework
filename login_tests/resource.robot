*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         rentmyride-mu.vercel.app/
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      https://${SERVER}/auth/login
${WELCOME URL}    https://${SERVER}/
${ERROR URL}      https://${SERVER}/auth/login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    RentMyRide - Car Rental Platform

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Fill Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    xpath=//button[@type='submit']

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    RentMyRide - Car Rental Platform