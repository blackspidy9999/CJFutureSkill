*** Settings ***
Library    SeleniumLibrary
Resource   ../keywords/RegisterKeywords.robot
Resource   ../keywords/HomePageKeywords.robot
Variables  ../resources/config/config.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser


*** Test Cases ***
As a user, I want to register success with valid credential
    ${email}    Set Variable    blackspidy105@gmail.com
    ${firstName}    Set Variable    black
    ${lastName}    Set Variable    Jinbo
    ${phoneNumber}    Set Variable    0970602499
    ${newPassword}    Set Variable    blackspidY88
    ${confirmPassword}    Set Variable    blackspidY88
    ${exepected text}    Set Variable    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
    user register to future skill platform with ${email}, ${firstName}, ${lastName}, ${phoneNumber}, ${newPassword}, ${confirmPassword}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${exepected text}

