*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${password} and ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email                ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName            ${firstName}
    CommonKeywords.Wait until element is ready then input text        name=lastName             ${lastName}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber          ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword          ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword      ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@type="checkbox" and @name="consent"]
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

