Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://vue-chat-client-production.up.railway.app/'
    resource '*',
      headers: :any,
      methods: %i[get post put patch delete options head],
      credentials: false
  end
end