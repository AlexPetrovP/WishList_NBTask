Feature: Product pages and wishlist

    Scenario Outline: Add a product to the wishlist
        Given a user is on a <page> with products
        When the user clicks the Wish List icon on a product
        Then the product is added to the wishlist

    Examples:
        | page      | 
        | Home Page |
        | ...       |

    Scenario Outline: Counter of the wishlist - add a product
        Given a user is on a <page> with products
        When the user clicks the Wish List icon on a product
        Then the Wish List counter increases by one

    Examples:
        | page      | 
        | Home Page |
        | ...       |       

    Scenario: Remove a product from the wishlist
        Given a user has at least one product in the wishlist
        And the user is on a page with products that has at least one of the items
        When the user clicks on the Wish List icon
        Then the product is removed from the Wish List

    Scenario: Counter of the wishlist - remove a product
        Given a user has at least one product in the wishlist
        And the user is on a page with products that has at least one of the items
        When the user clicks on the Wish List icon
        Then the Wish List counter decreases by one

    Scenario Outline: Open the Wish List page
        Given the user is on any <page> of the website
        When the user clicks on the Wish List icon in the header
        Then the Wish List page is opened

    Examples:
        | page      | 
        | Home Page |
        | ...       |