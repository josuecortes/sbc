u = User.new
u.nome = "Josue Cortes"
u.email = "adminsbc@gmail.com"
u.password = password_confirmation = "12345678"
u.permissao = "ADMINISTRADOR"
u.ativo = true
u.mudar_senha = false

if u.save
	puts "Usuario #{u.email} criado!!!"
	puts "Criando Empresa..."
	e = Empresa.new
	e.nome = "SBC"
	if e.save
		puts "Empresa #{e.nome} criada!!!"
		puts "Adicionando usuário #{e.nome} a empresa #{e.nome}..."
		u.empresa_id = e.id
		if u.save
			puts "Usuário #{e.nome} adicionado a empresa #{e.nome}!!!"
		else
			puts "Erro ao adicionar usuário a empresa"
		end
	else
		puts "Erro ao criar empresa #{e.nome}!!!"
	end

else
	puts "Erro ao criar o usuario #{u.email}!!!"
end