Feature: Marking a guess
In order to get more information about the secret code
As a code breaker
I would like to see marks for my guess
 
  Scenario Outline: <Guess> marks as <Mark>
    Given the secret "r g y b"
    When I guess "<Guess>"
    Then I should get "<Mark>"
 
  Examples:
		| Guess   | Mark    |
		| c c c c |         |
		| b c c c | m       |
		| y b c c | m m     |
		| y b r c | m m m   |
		| y b r g | m m m m |
		| r c c c | p       |
		| r g c c | p p     |
		| r g y c | p p p   |
		| r g y b | p p p p |
		| r b c c | m p     |
		| r g b c | m p p   |
		| r b y g | m m p p |
