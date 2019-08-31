

module Enjoeat
  def prato_do_dia(dia)
    if dia == 'segunda-feira'
        'Virado a Paulista'
    end
  end
end
World Enjoeat

Dado("que hoje é segunda-feira") do
  @hoje = 'segunda-feira'
end

Quando("eu perguntar qual é o prato do dia") do
  @resposta = prato_do_dia(@hoje)
end

Então("a resposta deve ser {string}") do |resposta_esperada|
  expect(@resposta).to eql resposta_esperada
end
