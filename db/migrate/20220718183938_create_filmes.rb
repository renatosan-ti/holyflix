class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :url_capa
      t.binary :capa
      t.string :ano
      t.string :idade
      t.string :elenco
      t.text :sinopse
      t.json :filme_genero

      t.timestamps
    end
  end
end
