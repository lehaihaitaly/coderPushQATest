*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   ../variables/globalVariables.robot
Resource   ../variables/signUp.robot
Resource   ../keywords/signUp.robot
*** Test Cases ***

Sign up successfully
    Given I open chrome on https://react-redux.realworld.io/
    When Click Element    ${register_txt}
    And I sign up with username and email and password
    Then Wait Until Page Contains	     Your Feed
    Then Wait Until Page Contains	    Global Feed

Sign in with wrong email
    Given I open chrome on https://react-redux.realworld.io/
    When Click Element    ${signIn_txt}
    And I sign in with username: abc@gmail.com and password: abc
    Then Wait Until Page Contains     email or password is invalid






