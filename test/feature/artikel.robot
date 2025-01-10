*** Settings ***
Library    SeleniumLibrary
Library    GherkinParser
Resource   C:/Users/yashi/PycharmProjects/higo-web-automation/resources/page/artikel_page.robot

*** Test Cases ***
Scenario : user should not see artikel because not relevan on Search Result Page
    Given user open browser go to Blog Page
    When user search artikel on Blog Page
    Then user should not see title aritkel on Search Result Page
    [Teardown]  Close Browser

Scenario : user see list artikel by filter HIGO updates on Blog Page
    Given user open browser go to Blog Page
    When user click button filter by Higoes Update on Blog Page
    Then user should see result filter by Higoes Update on Blog Page
    [Teardown]  Close Browser
