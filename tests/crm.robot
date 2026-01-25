*** Settings ***
Documentation       This is some basic info about the whole suit
Library    SeleniumLibrary

#Run the script
#robot -d results tests/crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test@
    [Tags]                  1006    Smoke   Contacts

    #initialize Selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open the browser
    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/    chrome

    #resize browser window for recording
    maximize browser window

    wait until page contains     Customers Are Priority One!

    click link              id=SignIn
    page should contain     Login

    input text              id=email-id      admin@robotframeworktutorial.com
    input text              id=password      qwe
    click button            id=submit-id
    page should contain     Our Happy Customers

    click link              id=new-customer
    page should contain     Add Customer

    input text              id=EmailAddress    janedoe@gmail.com
    input text              id=FirstName       Jane
    input text              id=LastName        Doe
    input text              id=City            Dallas
    select from list by value    id=StateOrRegion       TX
    select radio button     gender      female
    select checkbox         name=promos-name
    click button            Submit
    wait until page contains    Success

    sleep                   3s
    close browser

*** Keywords ***
