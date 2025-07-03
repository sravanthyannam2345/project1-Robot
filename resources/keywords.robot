*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    id=username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Click Login Button
    Click Element    xpath=//span[contains(text(), 'Login')]
