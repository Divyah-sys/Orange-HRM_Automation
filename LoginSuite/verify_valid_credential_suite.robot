*** Settings ***
Documentation           This suite will handle valid credential
...       test    TC_OH2

Resource  ../Resource/common functionality.resource

Test Setup   Link Browser
Test Teardown   Close Browser

Test Template      Valid Credential Template


*** Test Cases ***
TC1   Admin   admin123     My Info
TC2   Admin   admin123   Welcome

*** Keywords ***
Valid Credential Template
     [Arguments]   ${username}  ${password}   ${expected}
     Input Text    id=txtUsername    ${username}
     Input Password    id=txtPassword    ${password}
     Click Element    id=btnLogin
     Page Should Contain          ${expected}


