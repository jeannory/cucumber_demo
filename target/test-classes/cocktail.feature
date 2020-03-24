Feature: Cocktail Ordering

  As Romeo, I want to offer a drink to Juliette so that we can discuss together (and maybe more).

  Scenario: Creating an empty order
    Given Romeo who wants to buy a drink
    When an order is declared for Juliette
    Then there is 0 cocktails in the order

  Scenario Outline: Sending a message with an order
    Given Romeo who wants to buy a drink
    When an order is declared for <to>
    And a message saying "<message>" is added
    Then the ticket must say "<expected>"

    Examples:
      | to       | message     | expected                            |
      | Juliette | Wanna chat? | From Romeo to Juliette: Wanna chat? |
      | Jerry    | Hei!        | From Romeo to Jerry: Hei!           |