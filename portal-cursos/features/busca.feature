#language:pt

Funcionalidade: Busca
    Para que eu possa ver a lista de cursos
    Sendo um aluno
    Posso buscar por cursos

    Cenario: Curso não encontrado

      Quando eu faço uma busca pelo termo "Selenium IDE"
      Então devo ver a seuinte notificação "Desculpe não encontramos o curso que procura =("
   