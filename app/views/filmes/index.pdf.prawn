prawn_document do |pdf|
  pdf.text 'Filmes'
  pdf.move_down 20
  pdf.table @filmes.collect{|p| [p.titulo]}
end