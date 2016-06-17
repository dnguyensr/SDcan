get '/charge' do
  erb :stripe
end

post '/charge' do
  @amount = 500

  # customer = Stripe::Customer.create(
  #   :email => 'customer@example.com',
  #   :card  => params[:stripeToken]
  # )

  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer
  )

  erb :charge
end
