Dado("clico no botão para me cadastrar") do
    @account = BasePage.new
    @account.elementXPath("//a[@href='/register']").click
end
  
Quando("informo meu nome, email e senha") do
    nome = @account.gera_nome
    email = @account.gera_email
    senha = @account.gera_senha

    @account.inserirDados(nome,email,senha)
end

Quando("informo meu nome, email e a senha {string}") do |senha|
    nome = @account.gera_nome
    email = @account.gera_email

    @account.inserirDados(nome,email,senha)
end

Quando("informo os seguintes dados:") do |table|
    usuario = table.rows_hash

    @account.inserirDados(usuario[:nome],usuario[:email],usuario[:senha]) 
end
  
Então("eu devo permanecer na tela de cadastro {string}") do |string|
    text = find(:xpath, '//*[@id="register"]').text
    expect(text).to include(string)
end

Então("eu devo ver a mensagem de sucesso {string}") do |string|
    text = @account.elementXPath('//*[@id="register-success"]/h1').text
    expect(text).to include(string)
end