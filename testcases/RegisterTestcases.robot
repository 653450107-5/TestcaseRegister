*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register and wait OTP
    When user register to future skill platform with ${email} and ${Firstname} and ${Lastname} and ${phone} and ${password} and ${password}
    Then future skill should display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    Close Browser