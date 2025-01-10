
*** Settings ***
Library    SeleniumLibrary
Library    GherkinParser
Resource   C:/Users/yashi/PycharmProjects/higo-web-automation/resources/page/contact_us_page.robot

*** Test Cases ***
Scenario: user succesfully submit message questions on Contact us Page
    Given user open Browser go to Contact us Page
    When user input name on Contact us Page
    And user input E-mail on Contact us Page
    And user input phone number on Contact us Page
    And user input company or brand on Contact us Page
    When user choose service required on Contact us Page
    And user input questions for HIGO on Contact us Page
    When user click button submit on Contact us Page
    Then user should see message "Pesan Anda berhasil terkirim." on Contact us Page
    [Teardown]  Close Browser


