*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/yashi/PycharmProjects/higo-web-automation/Locator/contact_us_locator.robot

*** Variables ***
${chrome_browser}   Chrome
${based_url}        https://higo.id
${BUTTON_CLOSE}     //button[contains(@class, 'absolute right-4 top-4')]
${contact_us_url}   https://higo.id/contact-us

*** Keywords ***
user open Browser go to Contact us Page
    Open Browser    ${based_url}      ${chrome_browser}
    Wait Until Element Is Visible    ${BUTTON_CLOSE}
    Click Element    ${BUTTON_CLOSE}
    Go To    ${contact_us_url}

user input name on Contact us Page
    Wait Until Element Is Visible    ${INPUT_NAME}
    Input Text    ${INPUT_NAME}    test user

user input phone number on Contact us Page
    Wait Until Element Is Visible    ${INPUT_PHONE}
    Input Text    ${INPUT_PHONE}    123456789

user input E-mail on Contact us Page
    Wait Until Element Is Visible    ${INPUT_EMAIL}
    Input Text    ${INPUT_EMAIL}    test@gmail.com

user input company or brand on Contact us Page
    Wait Until Element Is Visible    ${INPUT_COMPANY}
    Input Text    ${INPUT_COMPANY}    HIGO test

user choose service required on Contact us Page
    Click Element    ${CHOOSE_SERVICE}

user input questions for HIGO on Contact us Page
    Input Text    ${INPUT_MESSAGE}    test

user click button submit on Contact us Page
    Click Button    ${BUTTON_SUBMIT}

user should see message "${fufill_message}" on Contact us Page
    Wait Until Element Is Visible    ${LABEL_SUCCES}
    ${actual_message} =     Get Text    ${LABEL_SUCCES}
    Should Be Equal As Strings    ${fufill_message}    ${actual_message}


