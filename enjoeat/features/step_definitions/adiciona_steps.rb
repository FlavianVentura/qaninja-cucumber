Dado('que o produto desejado é {string}') do |produto|
  @produto_nome = produto
end

Dado('o valor do produto é de {string}') do |valor|
  @produto_valor = valor
end

Quando('eu adiciono {int} unidade\\(s)') do |quantidade|
  # O metodo .times executa a adicção no carrinho de acordo com o valor passado
  # como argumento, 2,3,4,100 e por ai vai.
  quantidade.times do
    find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
  end
end

Então('deve ser adicionado {int} unidade\\(s) deste item') do |quantidade|
  cart = find('#cart')
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end

Então('o valor total deve ser de {string}') do |valor_total|
  cart = find('#cart')
  # Dessa forma posso pega a TD da TR que contem o campo Total e o valor especifico
  total = cart.find('tr', text: 'Total:').find('td')
  expect(total.text).to eql valor_total
  puts valor_total
  sleep 5
end

###########  Adicionar todos os itens  #############

Dado('que os produtos desejados são:') do |table|
  # Tranformo a tabela em um Array de hashes com o ".hashes"
  @product_table = table.hashes
end

Quando('eu adicionar todos os itens') do
  # Faço um foreach após transformar a tabela em um Array
  @product_table.each do |product|
    # Adiociono a quantidade de itens passada como argumento na tabela, transformo em inteiro
    # com o "to_i"
    product['quantidade'].to_i.times do
      find('.menu-item-info-box', text: product['nome'].upcase)
        .find('.add-to-cart').click
      sleep 2
    end
  end
end

Então('vejo todos os itens no carrinho') do
  cart = find('#cart')
  @product_table.each do |product|
    expect(cart).to have_text "(#{product['quantidade']}x) #{product['nome']}"
  end
end

###########  Remover todos os itens  #############

Dado('que eu tenho os seguintes itens no carrinho:') do |table|
  @product_table = table.hashes
  @product_table.each do |product|
    product['quantidade'].to_i.times do
      find('.menu-item-info-box', text: product['nome'].upcase)
        .find('.add-to-cart').click
    end
  end
end

Quando('eu removo somente o {int}') do |item|
  cart = find('#cart')
  cart.all('table tbody tr')[item].find('.danger').click
end

Quando('eu removo todos os itens') do
  @product_table.each_with_index do |value, idx|
    cart = find('#cart')
    cart.all('table tbody tr')[idx].find('.danger').click
  end
end

Então('vejo a seguinte mensagem no carrinho {string}') do |mensagem|
  cart = find('#cart')
  expect(cart).to have_text mensagem
end
