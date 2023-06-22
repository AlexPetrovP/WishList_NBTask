Feature: Wish List page

    Scenario: Wish List page with products
        Given a user has at least one product in the wishlist
        When he opens the Wish List page
        Then the product/s are displayed

    Scenario: Wish List page with no products
        Given a user has no products added to Wish List
        When he opens the Wish List page
        Then the page is empty

    Scenario: Add to cart button 
        Given a user has at least one product in the wishlist
        When the user observes the product
        Then an Add to cart button is present on the product

    Scenario: Add to cart from the wishlist
        Given a user has at least one product in the wishlist
        When the user clicks add to cart button on the product card
        Then the product is added to the cart

    Scenario: Product does not disappear from Wish List when it is added to the cart
        Given a user has at least one product in the wishlist
        When the user clicks add to cart button on the product card
        Then the product is not removed from the Wish List

    Scenario: Product with quantity 0 and add to cart
        Given a user has at least one product in the wishlist
        And the quantity of at least one product is 0
        When the user clicks add to cart button on the product card
        Then the product is not added to the cart
        And a message warning is displayed

    Scenario: Inactive product
        Given a product is present in a Wish List
        When the product becomes inactive
        Then the product disappears from all Wish Lists

    Scenario: Inactive product becomes active
        Given a product which now is inactive was part of a Wish List before
        When the product becomes active
        Then it is not added automatically to any Wish Lists

    Scenario: Add all products to cart
        Given a user has at least one product in the wishlist
        When the user clicks add all to cart button
        Then all products are added to the cart