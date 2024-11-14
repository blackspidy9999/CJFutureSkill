*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display home page and display message as "${expected text}"
    CommonKeywords.Wait until page contains element then verify text    ${expected text}