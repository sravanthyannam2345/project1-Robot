*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot
Resource   ../resources/variables.robot
Suite Setup     Open Browser To Login Page
Suite Teardown  Close Browser

*** Test Cases ***
Valid Login Should Succeed
    Click Login Button
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button
    Page Should Contain    Welcome

Invalid Login Should Fail
    Input Username    invalid
    Input Password    wrong
    Click Login Button
    Page Should Contain    Invalid credentials
