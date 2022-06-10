Feature: Login

    Background: visit login page
        Given the user visit page 'practice-test-login/'

    Scenario: Test case 1: Verify user can login successfully
        Given the user enters data 'student' into field '#username'
        And the user enters data 'Password123' into field '#password'
        When the user click '#submit'
        Then the url contains '/logged-in-successfully/'

    Scenario: Test case 2: Verfiy that all element exisit on login page
        Given the field '#username' is visible
        And  the field '#password' is visible
        And  the field '#submit' is visible

    Scenario Outline: Test case 3: Verfiy that the user cannot login with  <test>
        Given the user enters data '<username>' into field '#username'
        And the user enters data '<password' into field '#password'
        When the user click '#submit'
        Then the field '#error' contains '<error>'
        Examples:
            | test           | username      | password          | error                     |
            | Wrong username | incorrectUser | Password123       | Your username is invalid! |
            | Wrong password | student       | incorrectPassword | Your password is invalid! |