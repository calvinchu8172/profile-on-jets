Jets.application.routes.draw do
  # root "jets/public#show"
  root "profiles#en"
  resources :profiles, only: [] do
    collection do
      get "en"
      get "tw"
    end
  end
  resources :recommendation_letters, only: [] do
    collection do
      get "eiji_sakai"
      get "gary_hsu"
      get "hideo_kataoka"
    end
  end

  # The jets/public#show controller can serve static utf8 content out of the public folder.
  # Note, as part of the deploy process Jets uploads files in the public folder to s3
  # and serves them out of s3 directly. S3 is well suited to serve static assets.
  # More info here: https://rubyonjets.com/docs/extras/assets-serving/
  any "*catchall", to: "jets/public#show"
end
