Datadog.configure do |c|
    c.use :rails, service_name: 'rails_products_api'
  end

  
Datadog.configure { |c| c.analytics_enabled = true }