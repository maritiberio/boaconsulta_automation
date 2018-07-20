class BasePage < SitePrism::Page

    def inserirDados(nome, email, senha)
        campoNome.set nome
        campoEmail.set email
        campoSenha.set senha
    end

    element :campoEmail, '#email'
    element :campoNome, '#name'
    element :campoSenha, '#password'
    element :btnSubmit, 'button[type=submit]'
    element :validaCalendario, '#calendar'

    def elementXPath(element)
        return find(:xpath, "#{element}")
    end

    def btnEntrar
        return first('.redirect-link')
    end

    def gera_nome
        return Faker::Name.name
    end
    
    def gera_email
        return Faker::Internet.email
    end

    def gera_senha
        return Faker::Lorem.characters(8)
    end

end