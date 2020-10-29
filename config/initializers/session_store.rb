if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_outxplore", domain: "https://nameless-waters-17056.herokuapp.com/"
else
  Rails.application.config.session_store :cookie_store, key: "_outxplore"
end