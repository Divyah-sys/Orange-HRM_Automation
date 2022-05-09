*** Settings ***
Documentation           This suite will handle valid credential
...       test    TC_OH2

Resource  ../Resource/common functionality.resource

Test Setup   Link Browser
Test Teardown   Close Browser

*** Test Cases ***
InValid Credential Test
     Input Text    id=txtUsername    John
  Input Password    id=txtPassword    john123
  Click Element    id=btnLogin
  Element Text Should Be    id=spanMessage    expected=Invalid credentials
