require 'rack/cors'

class App
  def self.instance
    @instance ||= Rack::Builder.new do
      #enable CORS
      use Rack::Cors do
        allow do
          origins '*'
          resource '*', headers: :any, methods: [:get, :post, :patch, :delete]
        end
      end

      run App.new
    end.to_app
  end

  def call(env)
    # api
    response = API.call(env)
  end
end