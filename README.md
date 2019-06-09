gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'rack-cors', require: 'rack/cors'


rails g model user username:string email:string password_digest:string



config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end