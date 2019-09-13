# frozen_string_literal: true

# Renderizar o navegador para o tamando especificado.
Before do
  page.current_window.resize_to(900, 700)
end

# Essa tag eh utilixzada para que sempre seja executada antes do cenário
# que contem a tag de mesmo nome.
Before('@bread_bakery') do
  visit '/restaurants/bread-bakery/menu'
end
