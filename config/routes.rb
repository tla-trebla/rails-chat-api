Rails.application.routes.draw do
  root to: proc { [200, {}, ['Hello from Rails on Railway!']] }
end
