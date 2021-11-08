Rails.application.routes.draw do
  # get '/', to: 'flats#index', as: :root
  root to: 'flats#index'
  get 'flats/:id', to: 'flats#show', as: :flat
end

# CRUD in Rails
  # READ
    # Index - display many
    # Show - display one
