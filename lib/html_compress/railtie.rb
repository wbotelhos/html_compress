module HtmlCompress
  class Railtie < Rails::Railtie
    initializer 'html_compress.insert_middleware' do |app|
      app.config.middleware.use 'HtmlCompress::Middleware'
    end
  end
end
