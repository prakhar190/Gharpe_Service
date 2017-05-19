Rails.configuration.stripe = {
  :publishable_key => 'pk_test_nED63A9fQyq4yKYxD1il0Ni8',
  :secret_key      => 'sk_test_HYUSJYm07HMka6u0H7s34HFt'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
