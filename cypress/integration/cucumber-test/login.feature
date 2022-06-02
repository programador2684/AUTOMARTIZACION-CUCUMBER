Feature: Login

    Scenario Outline: Login to demoqa

        Given User is at the login page
        When User enters username as '<username>' and password as '<pass>'
        And User clicks on login button
        Then User is able to successfully login to the Website
        Examples:
            | username | pass      |
            | francisco| @Fran1234 |
