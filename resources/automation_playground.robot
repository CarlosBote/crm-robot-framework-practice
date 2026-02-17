*** Settings ***
Documentation       This file contains keywords used in the automation playground tests
Library             SeleniumLibrary

*** Keywords ***
login
    go to                   https://automationplayground.com/crm/

    wait until page contains     Customers Are Priority One!

    click link              id=SignIn
    page should contain     Login

    input text              id=email-id      admin@robotframeworktutorial.com
    input text              id=password      qwe
    click button            id=submit-id
    page should contain     Our Happy Customers

add new customer
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