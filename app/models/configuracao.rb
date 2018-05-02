class Configuracao
  include Mongoid::Document
  include Mongoid::Timestamps
  field :valor_estado, type: Float
  field :valor_licenca, type: Float

  validates_presence_of :valor_licenca, :valor_estado

  def criar_transacao(estados, licencas, valor)
  	self.status = 'NOVA'
  	self.estados = estados
  	self.licencas = licencas
  	self.valor = valor
  	if self.save
  		puts self.estados
  		if self.criar_link_pag_seguro
  			return true
  		else
  			self.destroy
  			return false
  		end	
  	else
  		return false
  	end
  end

  def criar_link_pag_seguro
  	
  	pagamento = PagSeguro::PaymentRequest.new

  	if self.licencas > 2 
  		licencas = (self.licencas - 2) * 15
  		adicionais = self.licencas - 2
  		item = PagSeguro::Item.new(amount: 15, description: 'Licenças adicionais', quantity: adicionais, id: self.id)
  		pagamento.items << item
  	

  	end

  	self.estados.each do |e|
  		descricao = "Estado - #{e}"
  		item = PagSeguro::Item.new(amount: 100, description: descricao, id: self.id)
  		pagamento.items << item	
  	end

  	resposta = pagamento.register

  	if resposta
  		self.link = resposta.url
  		if self.save
	  		return true
	  	else
	  		return false
	  	end
	  else
	  	return false
	  end

  	#item = PagSeguro::Item.new(amount: p.valor, description: descricao, id: p.id)
		#pagamento = PagSeguro::PaymentRequest.new
		#pagamento.items << item
		#resposta = pagamento.register
  end

end
