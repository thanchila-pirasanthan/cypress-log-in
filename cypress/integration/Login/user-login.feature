Feature: Login

    Background: visit login page
        Given the user visit page 'practice-test-login/'

    Scenario: Test case 1: Positive LogIn test
        Given the user enters data 'student' into field '#username'
        And the user enters data 'Password123' into field '#password'
        When the user click '#submit'
        Then the url contains '/logged-in-successfully/'