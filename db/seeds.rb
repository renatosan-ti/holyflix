# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genero.create!([
    { nome: 'Ação' },
    { nome: 'Aventura' },
    { nome: 'Comédia' },
    { nome: 'Drama' },
    { nome: 'Musical' },
    { nome: 'Ficção Científica' },
    { nome: 'Terror' },
    { nome: 'Suspense' },
    { nome: 'Documentário' },
    { nome: 'Romance' }
])

Filme.create!([
    { 
        titulo: 'Corajosos',
        url_capa: nil,
        capa: nil,
        ano: '2011',
        idade: 'Livre',
        elenco: 'Alex Kendrick, Kevin Downes, Ken Bevel',
        sinopse: 'Os policiais Adam (Alex Kendrick), Nathan (Ken Bevel), Shane (Kevin Downes) e David (Ben Davies) enfrentam diariamente nas ruas os maiores desafios de suas vidas e a dedicação deles é reconhecida por suas chefias. Mas se no cumprimento dessa tarefa eles não deixam dúvidas quanto a competência em cuidar da sociedade, em casa, o mesmo não pode ser dito porque eles estão falhando no papel de pais e maridos. E quando algo inesperado acontece, é preciso tomar uma decisão que mudara suas vidas.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'O Céu é de Verdade',
        url_capa: nil,
        capa: nil,
        ano: '2014',
        idade: 'Livre',
        elenco: 'Kelly Reilly, Greg Kinnear, Connor Corum',
        sinopse: 'Todd Burpo (Greg Kinnear) é o pastor de uma igreja em Nebraska, que conta com uma congregação bastante fiel. Casado com Sonja (Kelly Reilly), ele enfrenta uma situação complicada quando seu filho, Colton (Connor Corum), precisa ser operado às pressas devido a uma apendicite. Após se recuperar, o garoto diz ao pai que anjos vieram cantar para ele durante a operação. Todd pergunta mais sobre a experiência e fica espantado quando Colton lhe diz que viu situações que ocorreram quando o garoto não estava desperto. Convicto de que o filho visitou o paraíso, Todd passa a questionar sua própria fé naquilo que pregava até então.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Milagres do Paraíso',
        url_capa: nil,
        capa: nil,
        ano: '2016',
        idade: '10',
        elenco: 'Jennifer Garner, Kylie Rogers, Martin Henderson',
        sinopse: 'Em Milagres do Paraíso, Christy (Jennifer Garner) e Kevin Beam (Martin Henderson) são pais de três meninas: Abbie (Brighton Sharbino), Annabel (Kylie Rogers) e Adelynn (Courtney Fansler). Eles vivem em uma confortável casa, junto de cinco cachorros, e acabaram de abrir uma clínica veterinária, o que fez com que tivessem que apertar os cintos e hipotecar a casa. Cristãos convictos, os Beam vão à igreja com frequência. Um dia, Annabel começa a sentir fortes dores na região do abdomem e, após diversos exames, é constatado que a garota possui um grave problema digestivo. Tal situação faz com que Christy busque a todo custo algum meio de salvar a vida da filha, ao mesmo tempo em que se afasta cada vez mais de sua crença em Deus.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'À Prova de Fogo',
        url_capa: nil,
        capa: nil,
        ano: '2008',
        idade: 'Livre',
        elenco: 'Kirk Cameron, Erin Bethea, Ken Bevel',
        sinopse: 'No trabalho o bombeiro Caleb Holt (Kirk Cameron) é um profissional que cumpre com todos os princípios, sendo um deles nunca deixar um companheiro para trás numa situação de perigo. Já em sua casa, ao lado da esposa Catherine (Erin Bethea), as coisa são bem diferentes. Caleb é um marido ausente e depois de sete anos de união o relacionamento está chegando ao fim. O pai de Caleb pede então que ele inicie uma experiência de 40 dias, denominada "O desafio do amor", na tentativa de salvar o casamento.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Deus Não Está Morto',
        url_capa: nil,
        capa: nil,
        ano: '2014',
        idade: '10',
        elenco: 'Shane Harper, Kevin Sorbo, David A.R. White',
        sinopse: 'Quando o jovem Josh Wheaton (Shane Harper) entra na universidade, ele conhece um arrogante professor de filosofia (Kevin Sorbo) que não acredita em Deus. O aluno reafirma sua fé, e é desafiado pelo professor a comprovar a existência de Deus. Começa uma batalha entre os dois homens, que estão dispostos a tudo para justificar o seu ponto de vista - até se afastar das pessoas mais importantes para eles.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Quarto de Guerra',
        url_capa: nil,
        capa: nil,
        ano: '2015',
        idade: 'Livre',
        elenco: 'Priscilla Evans Shirer, T.C. Stallings, Karen Abercrombie',
        sinopse: 'Elizabeth (Priscilla Evans Shirer) e Tony (T.C. Stallings) formam um casal em crise de relacionamento. A filha pequena percebe que ambos estão à beira do divórcio, mas eles não conseguem chegar a um acordo. Um dia, Elizabeth conhece uma mulher idosa que lhe apresenta o poder da oração e, a partir deste momento, a jovem mãe decide depositar a sua fé nas preces divinas.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'A Semana da Minha Vida',
        url_capa: nil,
        capa: nil,
        ano: '2021',
        idade: 'Livre',
        elenco: 'Kevin Quinn, Bailee Madison, Sherri Shepherd',
        sinopse: 'Em A Semana da Minha Vida, acompanhamos a vida de Will Hawkins (Kevin Quinn), um adolescente rebelde. Depois de mais um confronto com os tribunais, ele tem duas opções: ir para a detenção juvenil ou participar de um acampamento cristão de verão. Ele escolhe a segunda opção. Durante o verão, Will começa a mudar seu comportamento, descobrindo, no processo, o que é o amor.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Eu Só Posso Imaginar',
        url_capa: nil,
        capa: nil,
        ano: '2018',
        idade: '14',
        elenco: 'J. Michael Finley, Madeline Carroll, Dennis Quaid',
        sinopse: 'Bart Millard (J. Michael Finley) é o vocalista da banda cristã MercyMe e tem um relacionamento conturbado com seu pai, que sempre o tratou de maneira dura e nunca entendeu seu amor pela música. Conseguindo forças através de Deus, Bart resolve então eternizar sua relação em uma canção, "I Can Only Imagine".',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Enquanto Estivermos Juntos',
        url_capa: nil,
        capa: nil,
        ano: '2020',
        idade: '12',
        elenco: 'K.J. Apa, Britt Robertson, Nathan Parsons',
        sinopse: 'Enquanto Estivermos Juntos é a história real de Jeremy Camp (K.J. Apa), famoso cantor de rock cristão, indicado ao Grammy. A obra foca em como a religião foi essencial para o artista superar as dores de sua vida, principalmente, quando sua esposa Melissa (Britt Robertson) descobriu estar com câncer.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'A Cabana',
        url_capa: nil,
        capa: nil,
        ano: '2016',
        idade: '14',
        elenco: 'Sam Worthington, Octavia Spencer, Tim McGraw',
        sinopse: 'Em A Cabana, um homem vive atormentado após perder a sua filha mais nova, cujo corpo nunca foi encontrado, mas sinais de que ela teria sido violentada e assassinada são encontrados em uma cabana nas montanhas. Anos depois da tragédia, ele recebe um chamado misterioso para retornar a esse local, onde ele vai receber uma lição de vida.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Você Acredita?',
        url_capa: nil,
        capa: nil,
        ano: '2015',
        idade: '12',
        elenco: 'Ted McGinley, Mira Sorvino, Sean Astin',
        sinopse: 'Um pastor encontra por acaso um mendigo que prega a palavra de Deus pelas ruas e decide colocar a sua fé em ação, ajudando diversas pessoas. Logo a vida de uma dezena de indivíduos se cruza, fazendo com que todos descubram o poder da cruz de Cristo.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Superação - O Milagre da Fé',
        url_capa: nil,
        capa: nil,
        ano: '2019',
        idade: '12',
        elenco: 'Chrissy Metz, Mike Colter, Topher Grace',
        sinopse: 'Em Superação - O Milagre da Fé, John Smith, um menino de 14 anos, passeava com a família em uma manhã de inverno no Lago St Louis, no Missouri, quando, acidentalmente, sofreu uma queda e se afogou. Chegando ao hospital, John foi considerado morto por mais de 60 minutos até que sua mãe, Joyce Smith, juntou todas as suas forças e pediu a Deus para que seu filho sobrevivesse. Sua prece poderosa foi responsável por um milagre inédito.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'O Caminho Para a Eternidade',
        url_capa: nil,
        capa: nil,
        ano: '2010',
        idade: '10',
        elenco: 'Alexandra Samia, Bruce Marchiano, Danah Davis, Elizabeth Ince, Jaci Velasquez, Jamie Nieto, Madison Gibney, Steve Borden',
        sinopse: 'Impedidos de prosseguir viagem devido a um bloqueio no meio de uma estrada deserta, cinco estranhos refugiam-se em uma lanchonete que parece abandonada e invisível aos olhos de alguns. Eles nem imaginam que lá encontrarão muito mais do que abrigo e comida.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Entrevista com Deus',
        url_capa: nil,
        capa: nil,
        ano: '2018',
        idade: 'Livre',
        elenco: 'David Strathairn, Brenton Thwaites, Yael Grobglas',
        sinopse: 'Paul (Brenton Thwaites) é um jornalista ambicioso em busca de sucesso profissional através de alguma grande matéria. Depois de uma extensa procura, ele topa de frente com um homem que pode lhe dar a melhor entrevista de vida: ele diz ser Deus e promete responder a qualquer pergunta de Paul em uma conversa única.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Uma Questão de Fé',
        url_capa: nil,
        capa: nil,
        ano: '2016',
        idade: 'Livre',
        elenco: 'Jordan Trovillion, Jay Pickett, Harry Anderson',
        sinopse: 'Uma menina cristã no primeiro semestre da faculdade começa a ser influenciada pelo seu professor de biologia que ensina sobre evolucionismo. Desconfiando que algo está errado, seu pai fica chocado ao perceber a filha se distanciando da fé e decide que precisa fazer algo quanto a isso.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Em Defesa de Cristo',
        url_capa: nil,
        capa: nil,
        ano: '2017',
        idade: '14',
        elenco: 'Mike Vogel, Erika Christensen, Robert Forster',
        sinopse: 'Lee Strobel é um jornalista durão que está exatamente onde queria na sua carreira: no topo. Após ganhar um prêmio por um relatório investigativo, ele foi promovido no Chicago Tribune. Em casa, a situação é diferente. Leslie, sua esposa, começou a ter fé em Cristo, indo contra suas crenças, já que é um ateu declarado. Para salvar seu casamento, Lee utiliza sua experiência jornalística e legal para iniciar uma busca a fim de contestar as reivindicações do Cristianismo. Perseguindo a maior história da sua carreira, ele se defronta com resultados inesperados que podem mudar o que ele acreditar ser a verdade.',
        filme_genero: nil,
        genero_id: nil        
    },
    {
        titulo: 'Paulo, Apóstolo de Cristo',
        url_capa: nil,
        capa: nil,
        ano: '2018',
        idade: '12',
        elenco: 'James Faulkner, Jim Caviezel, Olivier Martinez, Antonia Campbell-Hughes, Joanne Whalley, John Lynch, Noah Huntley, Yorgos Karamihos',
        sinopse: 'A história segue Paulo (James Faulkner), indo do mais famoso perseguidor dos cristãos ao apóstolo mais influente de Jesus Cristo. O filme seguirá seus últimos dias aguardando a execução pelo imperador Nero em Roma sob o olhar atento de Mauritius (Olivier Martinez), o ambicioso prefeito da prisão Mamertina, que procura entender como esse velho quebrado pode representar tal ameaça. À medida que seus dias se tornam mais curtos, Paulo trabalha da prisão para promover o Evangelho de Jesus Cristo e encoraja seus seguidores a permanecerem fortes em sua fé contra a perseguição romana.',
        filme_genero: nil,
        genero_id: nil        
    }
])
puts "Foram criados #{Filme.count} filmes"
