Dado("que que acesso a lista de restaurantes") do
  visit '/restaurants'
end
  
Quando("eu escolho o restaurante {string}") do |restaurant|
  find('.restaurant', text: restaurant.upcase).click
end

Então("vejo os seguintes itens disponiveis no cardapio") do |table|
    
    itens = all('.menu-item-info-box')
    products_data = table.hashes
    products_data.each_with_index do |value, index|
        expect(itens[index]).to have_text value['produto'].upcase
        expect(itens[index]).to have_text value['descricao']
        expect(itens[index]).to have_text value['preco']
    end
end
  
Então("eu vejo as seguintes informacoes Adicionais") do |table|
  infos = table.rows_hash
  detail = find('#detail')
  expect(detail).to have_text infos['categoria']
  expect(detail).to have_text infos['descricao']
  expect(detail).to have_text infos['horarios']
end