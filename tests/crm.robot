*** Settings ***
Documentation       This is some basic info about the whole suit
Resource            ../resources/common.robot
Resource            ../resources/automation_playground.robot

*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test@
    [Tags]                  1006    Smoke   Contacts

    common.Begin web test
    automation_playground.login
    automation_playground.add new customer
    common.tear down