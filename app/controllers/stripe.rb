get '/charge/' do
  erb :stripe
end

post '/charge/:id' do
  @project = Project.find(params[:id])
  @amount = 500

  customer = Stripe::Customer.create(
    :email => 'customer@example.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => "#{@project.id}",
    :currency    => 'usd',
    :customer    => customer
  )

  erb :charge
end
