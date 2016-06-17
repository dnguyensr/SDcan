


# set :publishable_key, ENV['PUBLISHABLE_KEY']
# set :secret_key, ENV['SECRET_KEY']

# PUBLISHABLE_KEY=pk_test_6pRNASCoBOKtIshFeQd4XMUh SECRET_KEY=sk_test_BQokikJOvBiI2HlWgH4olfQ2
# Stripe.api_key = settings.secret_key



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
