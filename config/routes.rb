AtlysVoting::Engine.routes.draw do
  resources :votes
  root to: "votes#index"
end
