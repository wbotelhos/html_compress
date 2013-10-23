require 'html_press'

module HtmlCompress
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, @response = @app.call env

      content_type = headers['Content-Type']

      compress_body! if content_type.present? && content_type.include?('text/html')

      [status, headers, @response]
    end

    private

    def compress_body!
      @response.body = HtmlPress.press @response.body
    end
  end
end
