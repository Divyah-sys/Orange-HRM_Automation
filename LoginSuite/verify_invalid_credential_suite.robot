*** Settings ***
Documentation           This suite will handle InValid credentials
...       test    TC_OH2

Resource  ../Resource/common functionality.resource

Test Setup   Link Browser
Test Teardown   Close Browser

Test Template     InValid Credential Template

*** Test Cases ***
TC1   john   john123     Invalid credentials
TC2   peter   peter123    Invalid credentials

*** Keywords ***
 InValid Credential Template
     [Arguments]  ${username}  ${password}   ${expected_error}
     Input Text    id=txtUsername    ${username}
     Input Password    id=txtPassword    ${password}
     Click Element    id=btnLogin
      Element Text Should Be    id=spanMessage    expected=${expected_error}
