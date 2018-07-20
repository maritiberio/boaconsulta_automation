Dado("que estou na tela de login") do
    @login = BasePage.new
    @login.btnEntrar.click
end

Dado("clico no botão esqueci minha senha") do
    @login.elementXPath("//a[@href='/password/reset']").click
end
  
Quando("clico no botão cadastrar") do
    @login.btnSubmit.click
end

Quando("eu informo o email {string}") do |email|
    @login.campoEmail.set email
end

Quando("informo a senha {string}") do |senha|
    @login.campoSenha.set senha
end

Quando("clico no botão entrar") do
    @login.btnSubmit.click
end

Quando("toco no botão recuperar senha") do
    @login.btnSubmit.click
end

Então("eu devo ver {string}") do |string|
    text = @login.validaCalendario.text
    expect(text).to include(string)
end

Então("eu devo ver a mensagem {string}") do |string|
    text = @login.elementXPath("//*[@id='app']").text
    expect(text).to include(string)
end


  
  