Before do
    visit 'https://doctorengage.com/'
  
    #page.current_window.resize_to(1280, 800)
end

After do |scenario|
    nome_funcionalidade = scenario.feature.name.tr(' ', '').downcase!
    nome_cenario = scenario.name.tr(' ', '').downcase!
    screenshot = "report/screenshot/#{nome_funcionalidade} - #{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique para ver a evidência!')

end