class CheckoutPage
  include PageObject

  text_field(:name, id: 'order_name')
  textarea(:address, id: 'order_address')
  text_field(:email, id: 'order_email')
  select_list(:pay_type, id: 'order_pay_type')
  button(:place_order, value: 'Place Order')

  def checkout (data)
    self.name = data['name']
    self.address = data['address']
    self.email = data['email']
    self.pay_type = data['payment_type']
    place_order
  end
end