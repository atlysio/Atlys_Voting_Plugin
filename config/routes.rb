AtlysVoting::Engine.routes.draw do
  resources :votes
  resources :answers
  resources :questions
  root to: "questions#index"
end
