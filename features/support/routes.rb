require 'require_all'

PageObject::PageFactory.routes = {
    default: [[HomePage, :select_puppy],
              [DetailsPage, :add_to_cart],
              [ShoppingCartPage, :proceed_to_checkout],
              [CheckoutPage, :checkout]]
}
