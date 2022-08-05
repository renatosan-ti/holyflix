class Filme < ApplicationRecord
    has_one_attached :capa
    belongs_to :genero, required: false
    paginates_per 4    
    
    def self.buscar_filme(filme)
        if filme
            filme_id = self.select(:id).where("titulo LIKE ?", "%" + sanitize_sql_like(filme) + "%")
            if filme_id.exists?
                @filmes = Filme.where(id: filme_id)
            else
                @filmes = nil
            end
        else
            @filmes = Filme.all            
        end
    end
end