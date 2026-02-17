*** Settings ***
Documentation       This file contains common keywords used across several tests
Library             SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Keywords ***

inserting testing data
    log    I am setting up the testing data

Begin web test
    set selenium speed      .2s
    set selenium timeout    10s

    log                     Starting the test case!
    open browser            about:blank   ${BROWSER}

    maximize browser window

tear down
    sleep                   3s
    close browser

cleaning up testing data
    log    I am cleaning up the testing data



