Dado("que temos os seguintes resutaurantes") do |table|
  @restaurants_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
  visit '/restaurants'
end

Então("devo ver todos os restaurantes dessa lista") do
  restaurants = all('.restaurant')

  @restaurants_data.each_with_index do |value, index|
  expect(restaurants[index]).to have_text value['nome'].upcase
  expect(restaurants[index]).to have_text value['categoria']
  expect(restaurants[index]).to have_text value['entrega']
  expect(restaurants[index]).to have_text value['avaliacao']
  end
end
