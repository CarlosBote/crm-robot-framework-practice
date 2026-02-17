*** Settings ***
Documentation       This is some basic info about the whole suit
Resource            ../resources/common.robot
Resource            ../resources/automation_playground.robot
Suite Setup    common.inserting testing data
Test Setup    common.Begin web test
Test Teardown    common.teardown
Suite Teardown    common.cleaning up testing data

*** Test Cases ***

Should be able to login
    [Documentation]         This is some basic info about the test@
    [Tags]                  1006    Smoke   Contacts

    automation_playground.login

Should be able to add new customer
    [Documentation]         This is some basic info about the test@
    [Tags]                  1006    Smoke   Contacts

    automation_playground.login
    automation_playground.add new customer

