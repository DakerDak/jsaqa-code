Feature: buying tickets

        Scenario: the user select and book 2 seats
                Given user is on page
                When user choose 2-th day and movie
                And select 9 row and 4,5 seats
                Then ticket purchase is confirmed

        Scenario: the user select and book 3 seats next week
                Given user is on page
                When user choose 7-th day and movie
                And select 1 row and 1,2 seats
                Then ticket purchase is confirmed

        Scenario: the user trying to select reserved seats
                Given user is on page
                When user choose 2-th day and movie
                And select 9 row and 4 seat
                And user is on page
                When user choose 2-th day and movie
                Then booking is not possible
