module GenerosHelper
    def devolve_genero(filme_id)
        Genero.order(:nome).where(id: filme_id).pluck(:nome).join(', ')
    end
end