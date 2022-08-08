header = %w[Título Ano Idade Gênero Sinopse]

prawn_document do |pdf|
  pdf.text "Catálogo HolyFlix"
  pdf.move_down 3
  pdf.text "Total de filmes: #{@filmes.count}"
  pdf.move_down 10

  pdf.table [header] + @filmes.collect {      
    |p| [p.titulo, p.ano, p.idade, devolve_genero(p.filme_genero), p.sinopse] },         
    header: true,  
    position: :left,  
    column_widths: [120, 32, 35, 70, 265],
    row_colors: ["f2f2f2", "ffffff"],
    cell_style: {       
      font_family: "Verdana, sans-serif",
      size: 8,
      border_width: 0,             
      text_color: "212529", 
      padding: 7      
      } do |table|        
        table.row(0).background_color = "212529"
        table.row(0).text_color = "ffffff"
        table.row(0).border_color = "212529"
        table.row(0).border_width = 1
        table.row(0).font_style = :bold
        table.row(1..-1).column(0).font_style = :bold
        table.row(1..-1).column(4).font_style = :italic
        table.row(0).align = :center                
        table.row(0..-1).column(1..3).align = :center
        table.row(0..-1).column(0).align = :right
      end
end

#prawn_document do |pdf|
#  t = pdf.make_table([ ["this is the first row"],
#  ["this is the second row"] ])
#  t.draw
#end

#prawn_document do |pdf|
#  pdf.table([
#    #["Filme 1", {:content => "2x1", :colspan => 2}, "Sinopse"],
#    #[{:content => "1x2", :rowspan => 2}, "C", "D", "E"],
#    #[{:content => "2x2", :colspan => 2, :rowspan => 2}, "F"],
#    #["G", "H"],    
#    ["Título", "Ano", "Idade", "Gênero", "Sinopse"],
#    [@filmes.collect { |p| [
#        {content: p.titulo, colspan: 2},
#        {content: p.ano, colspan: 2},
#        {content: p.idade, colspan: 2}
#      ]}]
#    
#  ])
#end