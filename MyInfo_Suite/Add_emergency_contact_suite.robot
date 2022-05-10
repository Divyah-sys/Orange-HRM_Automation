*** Settings ***
Documentation           This suite will handle emergency contact
...       test    TC_OH2

Resource  ../Resource/common functionality.resource

Test Setup   Link Browser


*** Test Cases ***
Emergency Contact Test
   Input Text    id=txtUsername    Admin
  Input Password    id=txtPassword    admin123
  Click Element    id=btnLogin
   Page Should Contain    My Info
   Click Element    xpath=//b[contains(text(),'My Info')]
   Click Element    xpath=//a[contains(text(),'Emergency Contacts')]
   Click Element    xpath=//input[@id='btnAddContact']
   Input Text    id=emgcontacts_name    Divya
    Input Text    id=emgcontacts_relationship    Myself
   Input Text    id=emgcontacts_homePhone    9687452134
   Input Text    id=emgcontacts_mobilePhone    9685412347
   Input Text    id=emgcontacts_workPhone    044-584-148
   Click Element    id=btnSaveEContact
    Close Browser





