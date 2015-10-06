Rails.application.routes.draw do
  resources :zombies
  resources :tweets

  root to: "tweets#index"
    #root_path
  #get '/new_tweet' => 'tweets#new'
  #get '/all' => 'tweets#index', as: 'all_tweets'
    #all_tweets_path
  #get '/all' => redirect('/tweets')
  #get '/g' => redirect('http://google.com')
  #get '/local_tweets/:zipcode' => 'tweets#index', as: 'local_tweets'
    #local_tweets_path(:zipcode)
    #/local_tweets/24232
  #get ':name' => 'tweets#index', as: 'zombie_tweets'
    #zombie_tweets_path(:name)
    #/ash   /bob  /elit
  get ':page_number' => 'tweets#index', as: 'page_number'
end
