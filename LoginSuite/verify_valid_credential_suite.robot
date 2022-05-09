*** Settings ***
Documentation           This suite will handle valid credential
...       test    TC_OH2

Resource  ../Resource/common functionality.resource

Test Setup   Link Browser
Test Teardown   Close Browser

*** Test Cases ***
Valid Credential Test
   Input Text    id=txtUsername    Admin
  Input Password    id=txtPassword    admin123
  Click Element    id=btnLogin
   Page Should Contain    My Info


