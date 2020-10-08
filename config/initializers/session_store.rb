if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_outxplore", domain: "outxplore-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_outxplore"
end