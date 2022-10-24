*** Settings ***

*** Keywords ***
I open ${url} on ${browser}
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


I click on section Pricing
    Click element   id=menu-item-36831

I click on section ${string}
    Click element     xpath=//a[@href="/sg/${string}-singapore/"]

I choose ${number} and the price is ${price}
    Scroll Element Into View        id=no_of_shareholders
    Select from list by label       no_of_shareholders       ${number}
     Wait Until Element Contains    id=text_new_amount          ${price}           timeout=10s
     sleep  3s


