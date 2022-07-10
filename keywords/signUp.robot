*** Settings ***

Resource   ../variables/globalVariables.robot
*** Keywords ***
I open ${browser} on ${url}
    Open Browser     ${url}     ${browser}
    Maximize Browser Window

I sign up with username and email and password
    ${random} =    Generate Random String      7
    Input Text    ${username_textbox}    ${random}
    Input Text    ${email_textbox}    ${random}@gmail.com
    Input Text    ${password_textbox}    ${random}
    Click Element    ${signIn_btn}

I sign in with username: ${username} and password: ${password}
    Input Text    ${email_textbox}    ${username}
    Input Text    ${password_textbox}   ${password}
    Click Element    ${signIn_btn}