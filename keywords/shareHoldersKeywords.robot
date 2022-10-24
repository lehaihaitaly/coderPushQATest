*** Settings ***

*** Keywords ***
I went to the Sleek SG "${page}" page
    Open Browser     https://sleek.com/sg/     chrome
    Maximize Browser Window

I click on the "${link}" link
    Click link      link:${link}

I should be navigated to the Sleek SG "${page}" page
     Wait Until Page Contains    Singapore's best value for money!

I click on section "${string}"
    Click element     xpath=//a[@href="/sg/${string}-singapore/"]

I am on the Sleek SG "${page}" page
    I went to the Sleek SG "${page}" page
    I click on the "${page}" link
    sleep   4s


I choose "${number}" and the price is "${price}"
    Scroll Element Into View        id=no_of_shareholders
    Select from list by label       no_of_shareholders       ${number}
    Wait Until Element Contains    id=text_new_amount          ${price}           timeout=10s
    sleep  4s


