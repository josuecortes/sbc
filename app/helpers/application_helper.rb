module ApplicationHelper
	def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
  end	

  def array_permissoes_selecionaveis(permissao)
    case permissao
      when "ADMINISTRADOR" then ["ADMINISTRADOR", "EMPRESA", "CLIENTE"] 
      when "EMPRESA" then ["CLIENTE"]
    end
  end

  def array_empresas
    empresas = []
    Empresa.order_by("nome ASC").each do |e|
      empresas << [e.id.to_s, e.nome]
    end
    return raw(empresas)    
  end

  def array_estados(regiao)
    case regiao
      when '*' then ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "RJ", "RS", "RO", "SC", "SP", "SE", "TO"]
      when 'norte' then ["AC","AP","AM","PA","RO","TO"]
      when 'nordeste' then ["AL","BA","CE","MA","PB","PE","SE"]
      when 'centro' then ["DF","GO","MT","MS"]
      when 'sudeste' then ["ES","MG","RJ","SP"]
      when 'sul' then ["PR","RS","SC"]
    end
  end

  def array_estados_do_brasil
    ["AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RO", "RS", "RR", "SC", "SE", "SP", "TO"]
  end

  def array_nome_estados_do_brasil
    ["Acre", "Alagoas", "Amazonas", "Amapá", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rondônia", "Rio Grande do Sul", "Roraima", "Santa Catarina", "Sergipe", "São Paulo", "Tocantins"]
  end

  def tipo_de_composicao_sbc_por_extenso(tipo)
    case tipo
      when "000" then "PROJETOS"
      when "011" then "SERVICOS ADMINISTRATIVOS"
      when "012" then "INSTALACOES PROVISORIAS"
      when "013" then "MAQUINAS E FERRAMENTAS"
      when "014" then "CONSUMOS"
      when "015" then "EQUIPAMENTOS DE SEGURANCA"
      when "016" then "DESPESAS LEGAIS"
      when "017" then "TRANSPORTES E CARRETOS"
      when "018" then "MAQUINAS E EQUIPAMENTOS"
      when "020" then "PREPARACAO DO TERRENO"
      when "021" then "CONTENCOES"
      when "022" then "DEMOLICOES"
      when "023" then "REFORMA E RECONSTRUCAO"
      when "024" then "SERVICOS DE MANUTENCAO"
      when "030" then "FUNDACOES DIRETAS"
      when "031" then "FUNDACOES INDIRETAS"
      when "032" then "REBAIXAMENTOS"
      when "040" then "ESTRUTURA"
      when "047" then "POCOS ARTESIANOS"
      when "050" then "INSTALACOES HIDRAULICAS - ABASTECIMENTO"
      when "051" then "INSTALACOES HIDRAULICAS - ESGOTAMENTO"
      when "052" then "INSTALACOES HIDRAULICAS - AGUA"
      when "053" then "INSTALACOES HIDRAULICAS - ESGOTO"
      when "054" then "INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS"
      when "055" then "INSTALACOES HIDRAULICAS - INCENDIO"
      when "056" then "INSTALACOES HIDRAULICAS - GAS"
      when "057" then "SANEAMENTO"
      when "058" then "INSTALACOES ELETRICAS - DETECCAO DE INCENDIO"
      when "059" then "INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV"
      when "060" then "INSTALACOES ELETRICAS - LUMINARIAS"
      when "061" then "INSTALACOES ELETRICAS - ELETRODUTOS"
      when "062" then "INSTALACOES ELETRICAS - DUTOS E TOMADAS"
      when "063" then "INSTALACOES ELETRICAS - LEITOS E CABOS"
      when "064" then "INSTALACOES ELETRICAS - QUADROS"
      when "065" then "INSTALACOES ELETRICAS - SUBESTACOES E GERACAO"
      when "066" then "INSTALACOES ELETRICAS - REDES PREDIAIS"
      when "067" then "INSTALACOES ELETRICAS - SINALIZACAO"
      when "068" then "INSTALACOES ELETRICAS - SONORIZACAO"
      when "069" then "ILUMINACAO PUBLICA"
      when "070" then "INSTALACOES MECANICAS - AR CONDICIONADO"
      when "071" then "INSTALACOES MECANICAS - VAPOR E CALEFACAO"
      when "073" then "INSTALACOES MECANICAS - EXAUSTAO"
      when "077" then "INSTALACOES MECANICAS - BOMBAS"
      when "078" then "ATERRAMENTO"
      when "080" then "ELEVADORES - MONTA CARGAS - ACESSIBILIDADE"
      when "090" then "PAREDES E PAINEIS"
      when "100" then "COBERTURAS"
      when "110" then "ESQUADRIAS DE MADEIRA"
      when "111" then "ESQUADRIAS DE FERRO"
      when "112" then "ESQUADRIAS DE ALUMINIO"
      when "120" then "REVESTIMENTOS INTERNOS"
      when "121" then "REVESTIMENTOS EXTERNOS"
      when "130" then "RODAPES, SOLEIRAS E PEITORIS"
      when "140" then "FERRAGENS"
      when "150" then "VIDROS"
      when "160" then "TRATAMENTOS E IMPERMEABILIZACOES"
      when "170" then "PAVIMENTACOES INTERNAS"
      when "171" then "PAVIMENTACOES EXTERNAS"
      when "172" then "URBANIZACAO"
      when "180" then "PINTURAS"
      when "190" then "APARELHOS SANITARIOS"
      when "200" then "ELEMENTOS DECORATIVOS"
      when "201" then "AJARDINAMENTOS"
      when "202" then ""
      when "210" then "LIMPEZA"
    else
      tipo
    end
  end

  def array_item_orcamentario_por_extenso
    [["000 - PROJETOS", "000"],
    ["011 - SERVICOS ADMINISTRATIVOS", "011"],
    ["012 - INSTALACOES PROVISORIAS", "012"],
    ["013 - MAQUINAS E FERRAMENTAS", "013"],
    ["014 - CONSUMOS", "014"],
    ["015 - EQUIPAMENTOS DE SEGURANCA", "015"],
    ["016 - DESPESAS LEGAIS", "016"],
    ["017 - TRANSPORTES E CARRETOS", "017"],
    ["018 - MAQUINAS E EQUIPAMENTOS", "018"],
    ["020 - PREPARACAO DO TERRENO", "020"],
    ["021 - CONTENCOES", "021"],
    ["022 - DEMOLICOES", "022"],
    ["023 - REFORMA E RECONSTRUCAO", "023"],
    ["024 - SERVICOS DE MANUTENCAO", "024"],
    ["030 - FUNDACOES DIRETAS", "030"],
    ["031 - FUNDACOES INDIRETAS", "031"],
    ["032 - REBAIXAMENTOS", "032"],
    ["040 - ESTRUTURA", "040"],
    ["047 - POCOS ARTESIANOS", "047"],
    ["050 - INSTALACOES HIDRAULICAS - ABASTECIMENTO", "050"],
    ["051 - INSTALACOES HIDRAULICAS - ESGOTAMENTO", "051"],
    ["052 - INSTALACOES HIDRAULICAS - AGUA", "052"],
    ["053 - INSTALACOES HIDRAULICAS - ESGOTO", "053"],
    ["054 - INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS", "054"],
    ["055 - INSTALACOES HIDRAULICAS - INCENDIO", "055"],
    ["056 - INSTALACOES HIDRAULICAS - GAS", "056"],
    ["057 - SANEAMENTO", "057"],
    ["058 - INSTALACOES ELETRICAS - DETECCAO DE INCENDIO", "058"],
    ["059 - INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV", "059"],
    ["060 - INSTALACOES ELETRICAS - LUMINARIAS", "060"],
    ["061 - INSTALACOES ELETRICAS - ELETRODUTOS", "061"],
    ["062 - INSTALACOES ELETRICAS - DUTOS E TOMADAS", "062"],
    ["063 - INSTALACOES ELETRICAS - LEITOS E CABOS", "063"],
    ["064 - INSTALACOES ELETRICAS - QUADROS", "064"],
    ["065 - INSTALACOES ELETRICAS - SUBESTACOES E GERACAO", "065"],
    ["066 - INSTALACOES ELETRICAS - REDES PREDIAIS", "066"],
    ["067 - INSTALACOES ELETRICAS - SINALIZACAO", "067"],
    ["068 - INSTALACOES ELETRICAS - SONORIZACAO", "068"],
    ["069 - ILUMINACAO PUBLICA", "069"],
    ["070 - INSTALACOES MECANICAS - AR CONDICIONADO", "070"],
    ["071 - INSTALACOES MECANICAS - VAPOR E CALEFACAO", "071"],
    ["073 - INSTALACOES MECANICAS - EXAUSTAO", "073"],
    ["077 - INSTALACOES MECANICAS - BOMBAS", "077"],
    ["078 - ATERRAMENTO", "078"],
    ["080 - ELEVADORES - MONTA CARGAS - ACESSIBILIDADE", "080"],
    ["090 - PAREDES E PAINEIS", "090"],
    ["100 - COBERTURAS", "100"],
    ["110 - ESQUADRIAS DE MADEIRA", "110"],
    ["111 - ESQUADRIAS DE FERRO", "111"],
    ["112 - ESQUADRIAS DE ALUMINIO", "112"],
    ["120 - REVESTIMENTOS INTERNOS", "120"],
    ["121 - REVESTIMENTOS EXTERNOS", "121"],
    ["130 - RODAPES, SOLEIRAS E PEITORIS", "130"],
    ["140 - FERRAGENS", "140"],
    ["150 - VIDROS", "150"],
    ["160 - TRATAMENTOS E IMPERMEABILIZACOES", "160"],
    ["170 - PAVIMENTACOES INTERNAS", "170"],
    ["171 - PAVIMENTACOES EXTERNAS", "171"],
    ["172 - URBANIZACAO", "172"],
    ["180 - PINTURAS", "180"],
    ["190 - APARELHOS SANITARIOS", "190"],
    ["200 - ELEMENTOS DECORATIVOS", "200"],
    ["201 - AJARDINAMENTOS", "201"],
    ["210 - LIMPEZA", "210"]]
  end

  def array_item_orcamentario
    [["TODOS","TODOS"],
    ["000 - PROJETOS", "000"],
    ["011 - SERVICOS ADMINISTRATIVOS", "011"],
    ["012 - INSTALACOES PROVISORIAS", "012"],
    ["013 - MAQUINAS E FERRAMENTAS", "013"],
    ["014 - CONSUMOS", "014"],
    ["015 - EQUIPAMENTOS DE SEGURANCA", "015"],
    ["016 - DESPESAS LEGAIS", "016"],
    ["017 - TRANSPORTES E CARRETOS", "017"],
    ["018 - MAQUINAS E EQUIPAMENTOS", "018"],
    ["020 - PREPARACAO DO TERRENO", "020"],
    ["021 - CONTENCOES", "021"],
    ["022 - DEMOLICOES", "022"],
    ["023 - REFORMA E RECONSTRUCAO", "023"],
    ["024 - SERVICOS DE MANUTENCAO", "024"],
    ["030 - FUNDACOES DIRETAS", "030"],
    ["031 - FUNDACOES INDIRETAS", "031"],
    ["032 - REBAIXAMENTOS", "032"],
    ["040 - ESTRUTURA", "040"],
    ["047 - POCOS ARTESIANOS", "047"],
    ["050 - INSTALACOES HIDRAULICAS - ABASTECIMENTO", "050"],
    ["051 - INSTALACOES HIDRAULICAS - ESGOTAMENTO", "051"],
    ["052 - INSTALACOES HIDRAULICAS - AGUA", "052"],
    ["053 - INSTALACOES HIDRAULICAS - ESGOTO", "053"],
    ["054 - INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS", "054"],
    ["055 - INSTALACOES HIDRAULICAS - INCENDIO", "055"],
    ["056 - INSTALACOES HIDRAULICAS - GAS", "056"],
    ["057 - SANEAMENTO", "057"],
    ["058 - INSTALACOES ELETRICAS - DETECCAO DE INCENDIO", "058"],
    ["059 - INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV", "059"],
    ["060 - INSTALACOES ELETRICAS - LUMINARIAS", "060"],
    ["061 - INSTALACOES ELETRICAS - ELETRODUTOS", "061"],
    ["062 - INSTALACOES ELETRICAS - DUTOS E TOMADAS", "062"],
    ["063 - INSTALACOES ELETRICAS - LEITOS E CABOS", "063"],
    ["064 - INSTALACOES ELETRICAS - QUADROS", "064"],
    ["065 - INSTALACOES ELETRICAS - SUBESTACOES E GERACAO", "065"],
    ["066 - INSTALACOES ELETRICAS - REDES PREDIAIS", "066"],
    ["067 - INSTALACOES ELETRICAS - SINALIZACAO", "067"],
    ["068 - INSTALACOES ELETRICAS - SONORIZACAO", "068"],
    ["069 - ILUMINACAO PUBLICA", "069"],
    ["070 - INSTALACOES MECANICAS - AR CONDICIONADO", "070"],
    ["071 - INSTALACOES MECANICAS - VAPOR E CALEFACAO", "071"],
    ["073 - INSTALACOES MECANICAS - EXAUSTAO", "073"],
    ["077 - INSTALACOES MECANICAS - BOMBAS", "077"],
    ["078 - ATERRAMENTO", "078"],
    ["080 - ELEVADORES - MONTA CARGAS - ACESSIBILIDADE", "080"],
    ["090 - PAREDES E PAINEIS", "090"],
    ["100 - COBERTURAS", "100"],
    ["110 - ESQUADRIAS DE MADEIRA", "110"],
    ["111 - ESQUADRIAS DE FERRO", "111"],
    ["112 - ESQUADRIAS DE ALUMINIO", "112"],
    ["120 - REVESTIMENTOS INTERNOS", "120"],
    ["121 - REVESTIMENTOS EXTERNOS", "121"],
    ["130 - RODAPES, SOLEIRAS E PEITORIS", "130"],
    ["140 - FERRAGENS", "140"],
    ["150 - VIDROS", "150"],
    ["160 - TRATAMENTOS E IMPERMEABILIZACOES", "160"],
    ["170 - PAVIMENTACOES INTERNAS", "170"],
    ["171 - PAVIMENTACOES EXTERNAS", "171"],
    ["172 - URBANIZACAO", "172"],
    ["180 - PINTURAS", "180"],
    ["190 - APARELHOS SANITARIOS", "190"],
    ["200 - ELEMENTOS DECORATIVOS", "200"],
    ["201 - AJARDINAMENTOS", "201"],
    ["210 - LIMPEZA", "210"]]
  end

  def array_tipo_insumos
    [["TODOS","TODOS"],
    ["1 - EQUIPAMENTO","1"],
    ["2 - EQUIPAMENTO PARA AQUISIÇÃO PERMANENTE","2"],
    ["3 - MÃO DE OBRA", "3"],
    ["4 - MATERIAL", "4"],
    ["5 - SERVIÇOS", "5"],
    ["6 - TAXAS", "6"],
    ["7 - OUTROS", "7"],
    ["9 - ADMINISTRAÇÃO", "9"],
    ["10 - ALUGUEL", "10"],
    ["11 - VERBA", "11"]]
  end

  def array_tipo_insumos_descricao
    [
      ["EQUIPAMENTO","1"],
      ["EQUIPAMENTO PARA AQUISIÇÃO PERMANENTE","2"],
      ["MÃO DE OBRA", "3"],
      ["MATERIAL", "4"],
      ["SERVIÇOS", "5"],
      ["TAXAS", "6"],
      ["OUTROS", "7"],
      ["ADMINISTRAÇÃO", "9"],
      ["ALUGUEL", "10"],
      ["VERBA", "11"]
    ]
  end

  def array_data_atualizacao
    ["01/2018", "12/2017", "11/2017", "10/2017", "09/2017", "08/2017", "07/2017", "06/2017", "05/2017", "04/2017", "03/2017", "02/2017", "01/2017", "12/2016"]
  end

  def tipo_de_insumo_sbc_por_extenso(tipo)
    case tipo
      when 1 then "Equipamento"
      when 2 then "Equipamento para Aquisição Permanente"
      when 3 then "Mão de Obra"
      when 4 then "Material"
      when 5 then "Serviços"
      when 6 then "Taxas"
      when 7 then "Outros"
      when 9 then "Administração"
      when 10 then "Aluguel"
      when 11 then "Verba"
    end
  end

  def array_nome_tipo_insumo
    ["Equipamento", "Equipamento para Aquisição Permanente", "Mão de Obra", "Material", "Serviços", "Taxas", "Outros", "Administração", "Aluguel", "Verba"]
  end

  def tipo_de_composicao_sinapi_por_extenso
    case self
      when "ASTU" then "ASTU - ASSENTAMENTO DE TUBOS E PECAS"
      when "CANT" then "CANT - CANTEIRO DE OBRAS"
      when "COBE" then "COBE - COBERTURA"
      when "CHOR" then "CHOR - CUSTOS HORÁRIOS DE MÁQUINAS E EQUIPAMENTOS"
      when "DROP" then "DROP - DRENAGEM/OBRAS DE CONTENÇÃO / POÇOS DE VISITA E CAIXAS"
      when "ESCO" then "ESCO - ESCORAMENTO"
      when "ESQV" then "ESQV - ESQUADRIAS/FERRAGENS/VIDROS"
      when "FOMA" then "FOMA - FORNECIMENTO DE MATERIAIS E EQUIPAMENTOS"
      when "FUES" then "FUES - FUNDAÇÕES E ESTRUTURAS"
      when "IMPE" then "IMPE - IMPERMEABILIZAÇÕES E PROTEÇÕES DIVERSAS"
      when "INEL" then "INEL - INSTALAÇÃO ELÉTRICA/ELETRIFICAÇÃO E ILUMINAÇÃO EXTERNA"
      when "INPR" then "INPR - INSTALAÇÕES DE PRODUÇÃO"
      when "INES" then "INES - INSTALAÇÕES ESPECIAIS"
      when "INHI" then "INHI - INSTALAÇÕES HIDROS SANITÁRIAS"
      when "LIPR" then "LIPR - LIGAÇÕES PREDIAIS ÁGUA/ESGOTO/ENERGIA/TELEFONE"
      when "MOVT" then "MOVT - MOVIMENTO DE TERRA"
      when "PARE" then "PARE - PAREDES/PAINEIS"
      when "PAVI" then "PAVI - PAVIMENTAÇÃO"
      when "PINT" then "PINT - PINTURAS"
      when "PISO" then "PISO - PISOS"
      when "REVE" then "REVE - REVESTIMENTO E TRATAMENTO DE SUPERFÍCIES"
      when "SEDI" then "SEDI - SERVIÇOS DIVERSOS"
      when "SEEM" then "SEEM - SERVIÇOS EMPREITADOS"
      when "SEES" then "SEES - SERVIÇOS ESPECIAIS"
      when "SEOP" then "SEOP - SERVIÇOS OPERACIONAIS"
      when "SERP" then "SERP - SERVIÇOS PRELIMINARES"
      when "SERT" then "SERT - SERVIÇOS TÉCNICOS"
      when "TRAN" then "TRAN - TRANSPORTES, CARGAS E DESCARGAS"
      when "URBA" then "URBA - URBANIZAÇÃO"
    else
      self
    end
  end


  def tipo_de_composicao_por_extenso(tipo)
    case tipo
      when "000" then "PROJETOS"
      when "011" then "SERVICOS ADMINISTRATIVOS"
      when "012" then "INSTALACOES PROVISORIAS"
      when "013" then "MAQUINAS E FERRAMENTAS"
      when "014" then "CONSUMOS"
      when "015" then "EQUIPAMENTOS DE SEGURANCA"
      when "016" then "DESPESAS LEGAIS"
      when "017" then "TRANSPORTES E CARRETOS"
      when "018" then "MAQUINAS E EQUIPAMENTOS"
      when "020" then "PREPARACAO DO TERRENO"
      when "021" then "CONTENCOES"
      when "022" then "DEMOLICOES"
      when "023" then "REFORMA E RECONSTRUCAO"
      when "024" then "SERVICOS DE MANUTENCAO"
      when "030" then "FUNDACOES DIRETAS"
      when "031" then "FUNDACOES INDIRETAS"
      when "032" then "REBAIXAMENTOS"
      when "040" then "ESTRUTURA"
      when "047" then "POCOS ARTESIANOS"
      when "050" then "INSTALACOES HIDRAULICAS - ABASTECIMENTO"
      when "051" then "INSTALACOES HIDRAULICAS - ESGOTAMENTO"
      when "052" then "INSTALACOES HIDRAULICAS - AGUA"
      when "053" then "INSTALACOES HIDRAULICAS - ESGOTO"
      when "054" then "INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS"
      when "055" then "INSTALACOES HIDRAULICAS - INCENDIO"
      when "056" then "INSTALACOES HIDRAULICAS - GAS"
      when "057" then "SANEAMENTO"
      when "058" then "INSTALACOES ELETRICAS - DETECCAO DE INCENDIO"
      when "059" then "INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV"
      when "060" then "INSTALACOES ELETRICAS - LUMINARIAS"
      when "061" then "INSTALACOES ELETRICAS - ELETRODUTOS"
      when "062" then "INSTALACOES ELETRICAS - DUTOS E TOMADAS"
      when "063" then "INSTALACOES ELETRICAS - LEITOS E CABOS"
      when "064" then "INSTALACOES ELETRICAS - QUADROS"
      when "065" then "INSTALACOES ELETRICAS - SUBESTACOES E GERACAO"
      when "066" then "INSTALACOES ELETRICAS - REDES PREDIAIS"
      when "067" then "INSTALACOES ELETRICAS - SINALIZACAO"
      when "068" then "INSTALACOES ELETRICAS - SONORIZACAO"
      when "069" then "ILUMINACAO PUBLICA"
      when "070" then "INSTALACOES MECANICAS - AR CONDICIONADO"
      when "071" then "INSTALACOES MECANICAS - VAPOR E CALEFACAO"
      when "073" then "INSTALACOES MECANICAS - EXAUSTAO"
      when "077" then "INSTALACOES MECANICAS - BOMBAS"
      when "078" then "ATERRAMENTO"
      when "080" then "ELEVADORES - MONTA CARGAS - ACESSIBILIDADE"
      when "090" then "PAREDES E PAINEIS"
      when "100" then "COBERTURAS"
      when "110" then "ESQUADRIAS DE MADEIRA"
      when "111" then "ESQUADRIAS DE FERRO"
      when "112" then "ESQUADRIAS DE ALUMINIO"
      when "120" then "REVESTIMENTOS INTERNOS"
      when "121" then "REVESTIMENTOS EXTERNOS"
      when "130" then "RODAPES, SOLEIRAS E PEITORIS"
      when "140" then "FERRAGENS"
      when "150" then "VIDROS"
      when "160" then "TRATAMENTOS E IMPERMEABILIZACOES"
      when "170" then "PAVIMENTACOES INTERNAS"
      when "171" then "PAVIMENTACOES EXTERNAS"
      when "172" then "URBANIZACAO"
      when "180" then "PINTURAS"
      when "190" then "APARELHOS SANITARIOS"
      when "200" then "ELEMENTOS DECORATIVOS"
      when "201" then "AJARDINAMENTOS"
      when "202" then ""
      when "210" then "LIMPEZA"

      when "ASTU" then "ASTU - ASSENTAMENTO DE TUBOS E PECAS"
      when "CANT" then "CANT - CANTEIRO DE OBRAS"
      when "COBE" then "COBE - COBERTURA"
      when "CHOR" then "CHOR - CUSTOS HORÁRIOS DE MÁQUINAS E EQUIPAMENTOS"
      when "DROP" then "DROP - DRENAGEM/OBRAS DE CONTENÇÃO / POÇOS DE VISITA E CAIXAS"
      when "ESCO" then "ESCO - ESCORAMENTO"
      when "ESQV" then "ESQV - ESQUADRIAS/FERRAGENS/VIDROS"
      when "FOMA" then "FOMA - FORNECIMENTO DE MATERIAIS E EQUIPAMENTOS"
      when "FUES" then "FUES - FUNDAÇÕES E ESTRUTURAS"
      when "IMPE" then "IMPE - IMPERMEABILIZAÇÕES E PROTEÇÕES DIVERSAS"
      when "INEL" then "INEL - INSTALAÇÃO ELÉTRICA/ELETRIFICAÇÃO E ILUMINAÇÃO EXTERNA"
      when "INPR" then "INPR - INSTALAÇÕES DE PRODUÇÃO"
      when "INES" then "INES - INSTALAÇÕES ESPECIAIS"
      when "INHI" then "INHI - INSTALAÇÕES HIDROS SANITÁRIAS"
      when "LIPR" then "LIPR - LIGAÇÕES PREDIAIS ÁGUA/ESGOTO/ENERGIA/TELEFONE"
      when "MOVT" then "MOVT - MOVIMENTO DE TERRA"
      when "PARE" then "PARE - PAREDES/PAINEIS"
      when "PAVI" then "PAVI - PAVIMENTAÇÃO"
      when "PINT" then "PINT - PINTURAS"
      when "PISO" then "PISO - PISOS"
      when "REVE" then "REVE - REVESTIMENTO E TRATAMENTO DE SUPERFÍCIES"
      when "SEDI" then "SEDI - SERVIÇOS DIVERSOS"
      when "SEEM" then "SEEM - SERVIÇOS EMPREITADOS"
      when "SEES" then "SEES - SERVIÇOS ESPECIAIS"
      when "SEOP" then "SEOP - SERVIÇOS OPERACIONAIS"
      when "SERP" then "SERP - SERVIÇOS PRELIMINARES"
      when "SERT" then "SERT - SERVIÇOS TÉCNICOS"
      when "TRAN" then "TRAN - TRANSPORTES, CARGAS E DESCARGAS"
      when "URBA" then "URBA - URBANIZAÇÃO"
    else
      tipo
    end
  end

  def link_icone(texto)
    case texto
      when 'detalhes'
        html="<span class='fa fa-eye'></span>"

      when 'detalhes-texto'
        html="<span class='fa fa-eye'></span> Detalhes"

      when 'editar'
        html="<span class='fa fa-pencil'></span>"

      when 'editar-texto'
        html="<span class='fa fa-pencil'></span> Editar"

      when 'apagar'
        html="<span class='fa fa-trash'></span>"

      when 'apagar-texto'
        html="<span class='fa fa-trash'></span> Apagar"

      when 'excluir'
        html="<span class='fa fa-trash'></span>"

      when 'excluir-texto'
        html="<span class='fa fa-trash'></span> Excluir"

      when 'desativar'
        html="<span class='fa fa-remove'></span>"

      when 'desativar-texto'
        html="<span class='fa fa-remove'></span> Desativar"

      when 'remover'
        html="<span class='fa fa-remove'></span>"

      when 'remover-texto'
        html="<span class='fa fa-remove'></span> Remover"

      when 'salvar'
        html="<span class='fa fa-hdd'></span>"

      when 'salvar-texto'
        html="<span class='fa fa-hdd'></span> Salvar"

      when 'voltar'
        html="<span class='fa fa-arrow-left'></span>"

      when 'voltar-texto'
        html="<span class='fa fa-arrow-left'></span> Voltar"

      when 'cancelar'
        html="<span class='fa fa-close'></span>"

      when 'cancelar-texto'
        html="<span class='fa fa-close'></span> Cancelar"

      when 'resetar'
        html="<span class='fa fa-repeat'></span>"

      when 'resetar-texto'
        html="<span class='fa fa-repeat'></span> Resetar"  

      when 'novo'
        html="<span class='fa fa-plus'></span>"

      when 'novo-texto'
        html="<span class='fa fa-plus'></span> Novo"

      when 'nova'
        html="<span class='fa fa-plus'></span>"

      when 'nova-texto'
        html="<span class='fa fa-plus'></span> Nova"

      when 'adicionar'
        html="<span class='fa fa-plus'></span>"

      when 'adicionar-texot'
        html="<span class='fa fa-plus'></span> Adicionar"

      when 'ativar'
        html="<span class='fa fa-check'></span>"

      when 'ativar-texto'
        html="<span class='fa fa-check'></span> Ativar"

      when 'gerenciar'
        html="<span class='fa fa-cog'></span>"

      when 'gerenciar-texto'
        html="<span class='fa fa-cog'></span> Gerenciar"

      when 'fechar'
        html="<span class='fa fa-level-down'></span>"

      when 'fechar-texto'
        html="<span class='fa fa-level-down'></span> Fechar"

      # ORÇA
      when 'plano'
        html="<span class='fa fa-list-alt'></span>"

      when 'plano-texto'
        html="<span class='fa fa-list-alt'></span> Planos"

      when 'usuario'
        html="<span class='fa fa-users'></span>"

      when 'usuario-texto'
        html="<span class='fa fa-users'></span> Usuários"

    end

    return raw(html)
  end


  def array_area_atuacao
    [
    "PROJETOS",
    "SERVICOS ADMINISTRATIVOS",
    "INSTALACOES PROVISORIAS",
    "MAQUINAS E FERRAMENTAS",
    "CONSUMOS",
    "EQUIPAMENTOS DE SEGURANCA",
    "DESPESAS LEGAIS",
    "TRANSPORTES E CARRETOS",
    "MAQUINAS E EQUIPAMENTOS",
    "PREPARACAO DO TERRENO",
    "CONTENCOES",
    "DEMOLICOES",
    "REFORMA E RECONSTRUCAO",
    "SERVICOS DE MANUTENCAO",
    "FUNDACOES DIRETAS",
    "FUNDACOES INDIRETAS",
    "REBAIXAMENTOS",
    "ESTRUTURA",
    "POCOS ARTESIANOS",
    "INSTALACOES HIDRAULICAS - ABASTECIMENTO",
    "INSTALACOES HIDRAULICAS - ESGOTAMENTO",
    "INSTALACOES HIDRAULICAS - AGUA",
    "INSTALACOES HIDRAULICAS - ESGOTO",
    "INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS",
    "INSTALACOES HIDRAULICAS - INCENDIO",
    "INSTALACOES HIDRAULICAS - GAS",
    "SANEAMENTO",
    "INSTALACOES ELETRICAS - DETECCAO DE INCENDIO",
    "INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV",
    "INSTALACOES ELETRICAS - LUMINARIAS",
    "INSTALACOES ELETRICAS - ELETRODUTOS",
    "INSTALACOES ELETRICAS - DUTOS E TOMADAS",
    "INSTALACOES ELETRICAS - LEITOS E CABOS",
    "INSTALACOES ELETRICAS - QUADROS",
    "INSTALACOES ELETRICAS - SUBESTACOES E GERACAO",
    "INSTALACOES ELETRICAS - REDES PREDIAIS",
    "INSTALACOES ELETRICAS - SINALIZACAO",
    "INSTALACOES ELETRICAS - SONORIZACAO",
    "ILUMINACAO PUBLICA",
    "INSTALACOES MECANICAS - AR CONDICIONADO",
    "INSTALACOES MECANICAS - VAPOR E CALEFACAO",
    "INSTALACOES MECANICAS - EXAUSTAO",
    "INSTALACOES MECANICAS - BOMBAS",
    "ATERRAMENTO",
    "ELEVADORES - MONTA CARGAS - ACESSIBILIDADE",
    "PAREDES E PAINEIS",
    "COBERTURAS",
    "ESQUADRIAS DE MADEIRA",
    "ESQUADRIAS DE FERRO",
    "ESQUADRIAS DE ALUMINIO",
    "REVESTIMENTOS INTERNOS",
    "REVESTIMENTOS EXTERNOS",
    "RODAPES, SOLEIRAS E PEITORIS",
    "FERRAGENS",
    "VIDROS",
    "TRATAMENTOS E IMPERMEABILIZACOES",
    "PAVIMENTACOES INTERNAS",
    "PAVIMENTACOES EXTERNAS",
    "URBANIZACAO",
    "PINTURAS",
    "APARELHOS SANITARIOS",
    "ELEMENTOS DECORATIVOS",
    "AJARDINAMENTOS",
    "LIMPEZA"
    ]
  end















  def tema
    case
      when @tema_composicao then "<link rel='stylesheet' href='/layoutinterno/css/style.palegreen.css' type='text/css' />"
      when @tema_insumo then "<link rel='stylesheet' href='/layoutinterno/css/style.brown.css' type='text/css' />"
      else
        ""
    end
  end

  def google_analytics
    "<script type='text/javascript'>
    /* Google Analytics */
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-21832717-1']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    <script type='text/javascript' async='true' src='https://d335luupugsy2.cloudfront.net/js/loader-scripts/8d08533b-c696-4f00-aaf3-c5750bcf2e99-loader.js' ></script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-21832717-1', 'auto');
      ga('send', 'pageview');
    </script>

    <!-- Facebook Pixel Code -->
    <script>
      !function(f,b,e,v,n,t,s)
      {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
      n.callMethod.apply(n,arguments):n.queue.push(arguments)};
      if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
      n.queue=[];t=b.createElement(e);t.async=!0;
      t.src=v;s=b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t,s)}(window, document,'script',
      'https://connect.facebook.net/en_US/fbevents.js');
      fbq('init', '1665105356841876');
      fbq('track', 'PageView');
    </script>
    <noscript><img height='1' width='1' style='display:none' title='Facebook Pixel' alt='Facebook Pixel'
      src='https://www.facebook.com/tr?id=1665105356841876&ev=PageView&noscript=1'
    /></noscript>
    <!-- End Facebook Pixel Code -->
    <!-- Hotjar Tracking Code for https://www.orcafascio.com -->
    <script>
      (function(h,o,t,j,a,r){
          h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
          h._hjSettings={hjid:664814,hjsv:6};
          a=o.getElementsByTagName('head')[0];
          r=o.createElement('script');r.async=1;
          r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
          a.appendChild(r);
      })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
    </script>
    "
  end

  def oneSignal
    "<link rel=\"manifest\" href=\"/manifest.json\" >
    <script src=\"https://cdn.onesignal.com/sdks/OneSignalSDK.js\"></script>
    <script>

      var OneSignal = window.OneSignal || [];
      OneSignal.push([\"init\", {
        appId: \"6956f8d4-d048-4c01-92c7-d4114c260e0c\",
        autoRegister: true,

        welcomeNotification: {
            \"title\": \"Agradecemos sua inscrição\",
            \"message\": \"Agora fique por dentro de todas as novidades do OrçaFascio\",
        },
        promptOptions: {
          actionMessage: \"Você gostaria de ficar por dentro de todas as novidades do OrçaFascio?\",
          acceptButtonText: \"Sim\",
          cancelButtonText: \"Não Obrigado\",
        }
      }]);
    </script>".html_safe
  end

  def alertas
    if flash[:ok]
      "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><strong>Ótimo:</strong> #{flash[:ok]}</div>".html_safe
    elsif flash[:atencao]
      "<div class='alert alert'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><strong>Atenção!</strong> #{flash[:atencao]}</div>".html_safe
    elsif flash[:erro]
      "<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button><strong>Erro!</strong> #{flash[:erro]}</div>".html_safe
    end
  end

  def getsmartlook
    "<script type='text/javascript'>
      window.smartlook||(function(d) {
      var o=smartlook=function(){ o.api.push(arguments)},s=d.getElementsByTagName('script')[0];
      var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';
      c.charset='utf-8';c.src='//rec.getsmartlook.com/bundle.js';s.parentNode.insertBefore(c,s);
      })(document);
      smartlook('init', '078609d8239525b831c91021145969a5b5dc16f2');
    </script>".html_safe
  end

  # def caminho
  #   return "#{ @caminho }?banco=#{ params["banco"] }&estado=#{ params["estado"] }&estado_sedop=#{ params["estado_sedop"] }&tipo_sinapi=#{ params["tipo_sinapi"] }&tipo_sicro=#{ params["tipo_sicro"] }&tipo_sedop=#{ params["tipo_sedop"] }&data_sinapi=#{ params["data_sinapi"] }&data_sicro=#{ params["data_sicro"] }&data_sedop=#{ params["data_sedop"] }&filtro=#{ params["filtro"] }&insumos=#{ params["insumos"] }&page=#{ params["page"] }&order=#{ params["order"] }&filtrar_por=#{ params["filtrar_por"] }"
  # end

  def caminho
    html = "#{ request.original_url }#{ request.original_url.include?("?") ? "&" : "?" }"
    params.each {|p| html << "#{p[0]}=#{p[1]}&" if p[0] != "utf8"} unless request.get?
    html
  end

  def will_paginate_remote(quantidade, n_itens = 30)
    url = caminho
    html = ""
    p = params["page"].to_i
    p = 1 if p == 0
    np = quantidade / n_itens + 1
    if np > 1
      html << "<div class='pagination pagination-right'>
          <ul>"
      url_anterior  = ""; url_anterior  << url; url_anterior  << "page=#{p-1}"
      url_primeira  = ""; url_primeira  << url; url_primeira  << "page=1"
      url_p_menos_4 = ""; url_p_menos_4 << url; url_p_menos_4 << "page=#{p-4}"
      url_p_menos_3 = ""; url_p_menos_3 << url; url_p_menos_3 << "page=#{p-3}"
      url_p_menos_2 = ""; url_p_menos_2 << url; url_p_menos_2 << "page=#{p-2}"
      url_p_menos_1 = ""; url_p_menos_1 << url; url_p_menos_1 << "page=#{p-1}"
      url_p_mais_1  = ""; url_p_mais_1  << url; url_p_mais_1  << "page=#{p+1}"
      url_p_mais_2  = ""; url_p_mais_2  << url; url_p_mais_2  << "page=#{p+2}"
      url_p_mais_3  = ""; url_p_mais_3  << url; url_p_mais_3  << "page=#{p+3}"
      url_p_mais_4  = ""; url_p_mais_4  << url; url_p_mais_4  << "page=#{p+4}"
      url_ultima    = ""; url_ultima    << url; url_ultima    << "page=#{np}"
      url_proximo   = ""; url_proximo   << url; url_proximo   << "page=#{p+1}"

      html <<   "<li>#{link_to "<< Anterior", "#" }</li>" if p-1 < 1
      if @remote
        html << "<li>#{link_to "<< Anterior", url_anterior, :remote => true, :onclick => "CarregarLista()"}</li>" if p-1 > 0
        html << "<li>#{link_to "1 ...", url_primeira, :remote => true, :onclick => "CarregarLista()"}</li>" if p-5 > 0
        html << "<li>#{link_to p-4, url_p_menos_4, :remote => true, :onclick => "CarregarLista()"}</li>" if p-4 > 0
        html << "<li>#{link_to p-3, url_p_menos_3, :remote => true, :onclick => "CarregarLista()"}</li>" if p-3 > 0
        html << "<li>#{link_to p-2, url_p_menos_2, :remote => true, :onclick => "CarregarLista()"}</li>" if p-2 > 0
        html << "<li>#{link_to p-1, url_p_menos_1, :remote => true, :onclick => "CarregarLista()"}</li>" if p-1 > 0
        html << "<li class='active'>#{link_to p, "#" }</li>"
        html << "<li>#{link_to p+1, url_p_mais_1, :remote => true, :onclick => "CarregarLista()"}</li>" if p+1 <= np
        html << "<li>#{link_to p+2, url_p_mais_2, :remote => true, :onclick => "CarregarLista()"}</li>" if p+2 <= np
        html << "<li>#{link_to p+3, url_p_mais_3, :remote => true, :onclick => "CarregarLista()"}</li>" if p+3 <= np
        html << "<li>#{link_to p+4, url_p_mais_4, :remote => true, :onclick => "CarregarLista()"}</li>" if p+4 <= np
        html << "<li>#{link_to "... #{np}", url_ultima, :remote => true, :onclick => "CarregarLista()"}</li>" if p+5 <= np
        html << "<li>#{link_to "Próximo >>", url_proximo, :remote => true, :onclick => "CarregarLista()"}</li>" if p+1 <= np
      else
        html << "<li>#{link_to "<< Anterior", url_anterior }</li>" if p-1 > 0
        html << "<li>#{link_to "1 ...", url_primeira }</li>" if p-5 > 0
        html << "<li>#{link_to p-4, url_p_menos_4 }</li>" if p-4 > 0
        html << "<li>#{link_to p-3, url_p_menos_3 }</li>" if p-3 > 0
        html << "<li>#{link_to p-2, url_p_menos_2 }</li>" if p-2 > 0
        html << "<li>#{link_to p-1, url_p_menos_1 }</li>" if p-1 > 0
        html << "<li class='active'>#{link_to p, "#" }</li>"
        html << "<li>#{link_to p+1, url_p_mais_1 }</li>" if p+1 <= np
        html << "<li>#{link_to p+2, url_p_mais_2 }</li>" if p+2 <= np
        html << "<li>#{link_to p+3, url_p_mais_3 }</li>" if p+3 <= np
        html << "<li>#{link_to p+4, url_p_mais_4 }</li>" if p+4 <= np
        html << "<li>#{link_to "... #{np}",url_ultima }</li>" if p+5 <= np
        html << "<li>#{link_to "Próximo >>", url_proximo }</li>" if p+1 <= np
      end
      html <<   "<li>#{link_to "Próximo >>", "#" }</li>" if p == np
      html << " </ul>
            </div>"
    end
    html.html_safe
  end

  def endereco(objeto)
    html = "<address>"
    html << "#{ objeto.end_logradouro }, #{ objeto.end_numero } - #{ objeto.end_bairro }<br>"
    html << "#{ objeto.end_complemento }<br>" if objeto.end_complemento != ""
    html << "#{ objeto.end_cep } - #{ objeto.end_cidade } - #{ objeto.end_estado }<br>"
    html << "</address>"
    html.html_safe
  end

  def show_endereco(endereco)
    html = "<address>"
    html << "#{ endereco.logradouro }, #{ endereco.numero } - #{ endereco.bairro }<br>"
    html << "#{ endereco.complemento }<br>" if endereco.complemento != ""
    html << "#{ endereco.cep } - #{ endereco.cidade } - #{ endereco.estado }<br>"
    html << "</address>"
    html.html_safe
  end

  def nome_do_banco(banco)
    banco == "Emp" ? "Próprio" : banco
  end

  def alerta_de_permissao_de_edicao(objeto)
    if @usuario_logado.admin_emp
      "<div class='alert alert'>Neste tela você só tem permissão de VISUALIZAÇÃO. Para editar estes dados é necessário modificar suas permissões de acesso #{link_to "aqui", permissoes_emp_usuarios_path(id: @usuario_logado.id)}.</div>".html_safe
    else
      "<div class='alert alert'>Neste tela você só tem permissão de VISUALIZAÇÃO. Para editar estes dados é necessário modificar suas permissões de acesso. Entre em contato com o administrador local do sistema.</div>".html_safe
    end
  end

  def barra_para_usuarios_em_teste
    html = ""
    if @empresa_logada.tipo_teste_data < Time.now and @empresa_logada.gratis?
      html << "<div style=\"background-color: #FFF; padding-top: 5px; padding-bottom: 3px;\">
            <div class=\"container\">
              <div class=\"row\" style=\"color: #111;\">
                <div class=\"span3\"></div>
                <div class=\"span4\" style=\"margin-top: 8px; text-align: center;\">
                  <span class=\"hidden-xs\">
                    Central de vendas
                  <strong>
                    &ensp;&ensp;  
                    <i class=\"fa.iconfa-phone\"></i>
                    &ensp;
                    (96) 98122-1504 
                    &ensp;&ensp;|&ensp;&ensp;
                    (11) 3090-1302
                  </strong>
                </div>
                <div class=\"span2\">
                  <a class=\"btn btn-default btn-block\" target=\"_blank\" href=\"http://orcafascio.rds.land/comercial\">
                    <strong>Ligamos para você</strong>
                  </a>
                </div>
              </div></div></div>".html_safe
      elsif @empresa_logada.pode_usar_teste? and @empresa_logada.total_lead_scoring >= 60
        html << "<div style=\"padding-top: 5px; padding-bottom: 3px;\">
            <div class=\"container\">
              <div class=\"row\" style=\"color: #111;\">
                <div class=\"span2\"></div>
                <div class=\"span3\" style=\"margin-top: 8px; text-align: right; font-size: 14px;\">
                   Gostaria de um treinamento gratuito?
                </div>
                <div class=\"span2\" style=\"margin-top: 8px; text-align: center;\">   
                  <strong>
                    (96) 98130-7921
                  </strong>
                </div>
                <div class=\"span2\">
                  <a class=\"btn btn-default btn-block\" target=\"_blank\" href=\"https://orcafascio.youcanbook.me\">
                    <strong>Agende agora</strong>
                  </a>
                </div>
              </div></div></div>".html_safe
      end
      html.html_safe
  end
















  
end