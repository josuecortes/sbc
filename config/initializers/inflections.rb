# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'abertura', 'aberturas'
  inflect.irregular 'arquivo', 'arquivos'
  inflect.irregular 'banco', 'bancos'
  inflect.irregular 'cliente', 'clientes'
  inflect.irregular 'composicao', 'composicoes'
  inflect.irregular 'cronograma', 'cronogramas'
  inflect.irregular 'cobranca', 'cobrancas'
  inflect.irregular 'compra', 'compras'
  inflect.irregular 'customizacao', 'customizacoes'
  inflect.irregular 'empresa', 'empresas'
  inflect.irregular 'endereco', 'enderecos'
  inflect.irregular 'fornecedor', 'fornecedores'
  inflect.irregular 'indicacao', 'indicacoes'
  inflect.irregular 'insumo', 'insumos'
  inflect.irregular 'item', 'itens'
  inflect.irregular 'medicao', 'medicoes'
  inflect.irregular 'mensagem', 'mensagens'
  inflect.irregular 'modelo', 'modelos'
  inflect.irregular 'noticia', 'noticias'
  inflect.irregular 'obra', 'obras'
  inflect.irregular 'orcamento', 'orcamentos'
  inflect.irregular 'pedido', 'pedidos'
  inflect.irregular 'observacao', 'observacoes'
  inflect.irregular 'perfil', 'perfis'
  inflect.irregular 'principal', 'principais'
  inflect.irregular 'relatorio', 'relatorios'
  inflect.irregular 'servico', 'servicos'
  inflect.irregular 'setor', 'setores'
  inflect.irregular 'social', 'sociais'
  inflect.irregular 'treinamento', 'treinamentos'
  inflect.irregular 'tutorial', 'tutoriais'
  inflect.irregular 'usuario', 'usuarios'
  inflect.irregular 'venda', 'vendas'
end