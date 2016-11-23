Rails.application.routes.draw do
  resources :question_choices
  resources :choices
  resources :questions
  resources :stances
  resources :referendas
  resources :decisions
  resources :terms
  resources :judges
  resources :candidates
  resources :voters
  resources :zips
  resources :divisions
  resources :precincts
  resources :cities
  resources :counties
  resources :states
  resources :countries
  resources :ballots
  get 'home/match_results', to: 'home#match_results', as: 'match_results'
  get 'home/match', to: 'home#match', as: 'match'
  get 'home/bond_detail', to: 'home#bond_detail', as: 'bond_detail'
  get 'home/bonds', to: 'home#bonds', as: 'bonds'
  get 'home/issue_detail', to: 'home#issue_detail', as: 'issue_detail'
  get 'home/issues', to: 'home#issues', as: 'issues'
  get 'home/judge_detail', to: 'home#judge_detail', as: 'judge_detail'
  get 'home/judges', to: 'home#judges', as: 'home_judges'
  get 'home/candidate_detail', to: 'home#candidate_detail', as: 'candidate_detail'
  get 'home/candidates', to: 'home#candidates', as: 'home_candidates'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
