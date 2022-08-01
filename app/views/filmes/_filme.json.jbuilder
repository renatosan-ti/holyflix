json.extract! filme, :id, :titulo, :url_capa, :capa, :ano, :idade, :elenco, :sinopse, :genero, :created_at, :updated_at
json.url filme_url(filme, format: :json)
