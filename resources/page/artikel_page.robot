*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/yashi/PycharmProjects/higo-web-automation/Locator/artikel_locator.robot

*** Variables ***
${chrome_browser}   Chrome
${based_url}        https://higo.id
${BUTTON_CLOSE}     //button[contains(@class, 'absolute right-4 top-4')]
${blog_url}         https://blog.higo.id/
@{list_filter_by_HIGO}    //div[text()='HIGOes Update']

*** Keywords ***
user open browser go to Blog Page
    Open Browser    ${based_url}    ${chrome_browser}
    Wait Until Element Is Visible    ${BUTTON_CLOSE}
    Click Element   ${BUTTON_CLOSE}
    Go To           ${blog_url}

user search artikel on Blog Page
    Wait Until Element Is Visible    ${SAERCH_ARTIKEL}
    Input Text    ${SAERCH_ARTIKEL}     Test
    Press Keys    ${SAERCH_ARTIKEL}     ENTER

user should not see title aritkel on Search Result Page
    Element Should Not Be Visible    ${LABEL_TITLE_ARTIKEL}

user click button filter by Higoes Update on Blog Page
    Wait Until Element Is Visible    ${LABEL_FILTER_BY_HIGO}
    Click Element    ${LABEL_FILTER_BY_HIGO}

user should see result filter by Higoes Update on Blog Page
    FOR    ${FILTER_BY_HIGO}    IN    @{list_filter_by_HIGO}
        Element Should Be Visible    ${FILTER_BY_HIGO}
    END