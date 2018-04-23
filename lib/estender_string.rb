# encoding: UTF-8
class String
  def uf_to_nome
    case self
      when "AC" then "Acre"
      when "AL" then "Alagoas"
      when "AP" then "Amapá"
      when "AM" then "Amazonas"
      when "BA" then "Bahia"
      when "CE" then "Ceará"
      when "DF" then "Distrito Federal"
      when "ES" then "Espírito Santo"
      when "GO" then "Goiás"
      when "MA" then "Maranhão"
      when "MT" then "Mato Grosso"
      when "MS" then "Mato Grosso do Sul"
      when "MG" then "Minas Gerais"
      when "PA" then "Pará"
      when "PB" then "Paraíba"
      when "PR" then "Paraná"
      when "PE" then "Pernambuco"
      when "PI" then "Piauí"
      when "RJ" then "Rio de Janeiro"
      when "RN" then "Rio Grande do Norte"
      when "RS" then "Rio Grande do Sul"
      when "RO" then "Rondônia"
      when "RR" then "Roraima"
      when "SC" then "Santa Catarina"
      when "SP" then "São Paulo"
      when "SE" then "Sergipe"
      when "TO" then "Tocantins"
    end
  end

  def uf_to_link
    case self
      when "AC" then "acre"
      when "AL" then "alagoas"
      when "AP" then "amapa"
      when "AM" then "amazonas"
      when "BA" then "bahia"
      when "CE" then "ceara"
      when "DF" then "distrito-federal"
      when "ES" then "espirito-santo"
      when "GO" then "goias"
      when "MA" then "maranhao"
      when "MT" then "mato-grosso"
      when "MS" then "mato-grosso-do-sul"
      when "MG" then "minas-gerais"
      when "PA" then "para"
      when "PB" then "paraiba"
      when "PR" then "parana"
      when "PE" then "pernambuco"
      when "PI" then "piaui"
      when "RJ" then "rio-de-janeiro"
      when "RN" then "rio-grande-do-norte"
      when "RS" then "rio-grande-do-sul"
      when "RO" then "rondonia"
      when "RR" then "roraima"
      when "SC" then "santa-catarina"
      when "SP" then "sao-paulo"
      when "SE" then "sergipe"
      when "TO" then "tocantins"
    end
  end

  def nome_to_uf
    case self
      when "Acre" then "AC"
      when "Alagoas" then "AL"
      when "Amapa" then "AP"
      when "Amazonas" then "AM"
      when "Bahia" then "BA"
      when "Ceara" then "CE"
      when "Distrito Federal" then "DF"
      when "Espirito Santo" then "ES"
      when "Goias" then "GO"
      when "Maranhao" then "MA"
      when "Mato Grosso" then "MT"
      when "Mato Grosso do Sul" then "MS"
      when "Minas Gerais" then "MG"
      when "Para" then "PA"
      when "Paraiba" then "PB"
      when "Parana" then "PR"
      when "Pernambuco" then "PE"
      when "Piaui" then "PI"
      when "Rio de Janeiro" then "RJ"
      when "Rio Grande do Norte" then "RN"
      when "Rio Grande do Sul" then "RS"
      when "Rondonia" then "RO"
      when "Roraima" then "RR"
      when "Santa Catarina" then "SC"
      when "Sao Paulo" then "SP"
      when "Sergipe" then "SE"
      when "Tocantins" then "TO"
    else
      "desconhecido"
    end
  end

  def uf_to_regiao
    case self
      when "AC" then "norte"
      when "AL" then "nordeste"
      when "AP" then "norte"
      when "AM" then "norte"
      when "BA" then "nordeste"
      when "CE" then "nordeste"
      when "DF" then "centro-oeste"
      when "ES" then "sudeste"
      when "GO" then "centro-oeste"
      when "MA" then "nordeste"
      when "MT" then "centro-oeste"
      when "MS" then "centro-oeste"
      when "MG" then "sudeste"
      when "PA" then "norte"
      when "PB" then "nordeste"
      when "PR" then "sul"
      when "PE" then "nordeste"
      when "PI" then "nordeste"
      when "RJ" then "sudeste"
      when "RN" then "nordeste"
      when "RS" then "sul"
      when "RO" then "norte"
      when "RR" then "norte"
      when "SC" then "sul"
      when "SP" then "sudeste"
      when "SE" then "nordeste"
      when "TO" then "norte"
    end
  end

  def mes_por_extenso
    case self
      when "01" then "JANEIRO"
      when "02" then "FEVEREIRO"
      when "03" then "MARCO"
      when "04" then "ABRIL"
      when "05" then "MAIO"
      when "06" then "JUNHO"
      when "07" then "JULHO"
      when "08" then "AGOSTO"
      when "09" then "SETEMBRO"
      when "10" then "OUTUBRO"
      when "11" then "NOVEMBRO"
      when "12" then "DEZEMBRO"
    end
  end

  def setop_regioes_em_texto
    case self
      when "central"    then "Central"
      when "jem"        then "Jequitinhonha e Mucuri"
      when "leste"      then "Leste"
      when "norte"      then "Norte"
      when "sul"        then "Sul"
      when "triangulo"  then "Triângulo e Alto Paranaíba"
    else
      self
    end
  end

  # def sbc_regioes_em_texto
  #   case self
  #     when "AJU"  then "Aracajú"
  #     when "BHE"  then "Belo Horizonte"
  #     when "BLM"  then "Belém"
  #     when "BSA"  then "Brasília"
  #     when "CBA"  then "Cuiabá"
  #     when "CPE"  then "Campo Grande"
  #     when "CTA"  then "Curitiba"
  #     when "FLA"  then "Fortaleza"
  #     when "FNS"  then "Florianópolis"
  #     when "GNA"  then "Goiânia"
  #     when "JPA"  then "João Pessoa"
  #     when "MCO"  then "Maceió"
  #     when "MNS"  then "Manaus"
  #     when "MPA"  then "Macapá"
  #     when "PAE"  then "Porto Alegre"
  #     when "PMG"  then "Palmas"
  #     when "PVO"  then "Porto Velho"
  #     when "RBO"  then "Rio Branco"
  #     when "RCE"  then "Recife"
  #     when "RJO"  then "Rio de Janeiro"
  #     when "SDR"  then "Salvador"
  #     when "SLS"  then "São Luís"
  #     when "SPO"  then "São Paulo"
  #     when "VTA"  then "Vitória"
  #   else
  #     self
  #   end
  # end

  def regioes_sbc_to_uf
    case self
      when "AJU"  then "SE"
      when "BHE"  then "MG"
      when "BLM"  then "PA"
      when "BSA"  then "DF"
      when "CBA"  then "MT"
      when "CPE"  then "MS"
      when "CTA"  then "PR"
      when "FLA"  then "CE"
      when "FNS"  then "SC"
      when "GNA"  then "GO"
      when "JPA"  then "PB"
      when "MCO"  then "AL"
      when "MNS"  then "AM"
      when "MPA"  then "AP"
      when "PAE"  then "RS"
      when "PMG"  then "TO"
      when "PVO"  then "RO"
      when "RBO"  then "AC"
      when "RCE"  then "PE"
      when "RJO"  then "RJ"
      when "SDR"  then "BA"
      when "SLS"  then "MA"
      when "SPO"  then "SP"
      when "VTA"  then "ES"
    else
      self
    end
  end

  def sbc_to_uf
    if self == "PI" or self == "RN" or self == "RR"
      return "SP"
    else
      return self
    end
  end

  def tipo_da_composicao_sicro_sigla
    case self
      when "Atividades Auxiliares"  then "ATIVI"
      when "Construção Rodoviária"  then "CONST"
      when "Conservação Rodoviária" then "CONSE"
      when "Sinalização Rodoviária" then "SINAL"
      when "Restauração Rodoviária" then "RESTA"
    else
      self
    end
  end

  def mascara_de_unidade
    if self == "M" or self == "M3" or self == "m" or self == "m3"
      return "m³"
    elsif self == "M" or self == "M2" or self == "m" or self == "m2"
      return "m²"
    else
      return self
    end
  end

  def sepp
    retorno = ""
    retorno << "#{self}"
    retorno.gsub!('[', '')
    retorno.gsub!(']', '')
    retorno.gsub!(/([ ])/, '.*')
    retorno.gsub!(/([()=])/, '.')
    retorno.gsub!(/([cçCÇ])/, '[cç]')
    retorno.gsub!(/([aãáâàAÃÁÂÀ])/, '[aãáâà]')
    retorno.gsub!(/([eéêEÉÊ])/, '[eéê]')
    retorno.gsub!(/([iíIÍ])/, '[ií]')
    retorno.gsub!(/([oõóôOÕÓÔ])/, '[oõóô]')
    retorno.gsub!(/([uúüUÚÜ])/, '[uúü]')
    ".*#{retorno}.*"
  end

  def buscar_tipo_seifra
    retorno = "#{self}"
    retorno.gsub!(/([.])/, '\.')
    "#{retorno}\."
  end

  def sim?
    "Sim" if self == "t"
    "Não" if self == "f"
  end

  def completar_com_zeros
    self[self.index("."), 2] = "" if self.include? '.'
    if self.size < 8
      self[0, 0] = "0"
      self.completar_com_zeros
    end
    self
  end

  def completar_com_zeros_no_save
    retorno = ""
    retorno << self
    retorno[retorno.index("."), 2] = "" if retorno.include? '.'
    if retorno.size < 8
      retorno[0, 0] = "0"
      retorno.completar_com_zeros
    end
    retorno
  end

  def completar_com_zeros_seis
    if self.size < 6
      self[0, 0] = "0"
      self.completar_com_zeros_seis
    end
    self
  end

  def completar_com_zeros_tres
    if self.size < 3
      self[0, 0] = "0"
      self.completar_com_zeros_tres
    end
    self
  end

  def completar_com_zeros_dois
    if self.size < 2
      self[0, 0] = "0"
      self.completar_com_zeros_dois
    end
    self
  end

  def mudar_virgula_para_ponto
    self.gsub!(/([,])/, '.')
    self.deixar_so_com_um_ponto
  end

  def deixar_so_com_um_ponto
    if self.count(".") > 1
      ponto = self.index(".")
      self[ponto, 1] = ""
      self.deixar_so_com_um_ponto if self.count(".") > 1
    end
    self
  end

  def to_utf8
    self.unpack('C*').pack('U*')
  end

  def valid_float?
    !!Float(self) rescue false
  end

  def tamanho_da_linha_do_excel
    tamanho = ((self.size / 50) + 1) * 11
    tamanho > 22 ? tamanho : 22
  end

  def banco
    if self == "Emp"
      "Próprio"
    else
      self
    end
  end

  Alpha26 = ("a".."z").to_a

  def to_i26
    result = 0
    downcase!
    (1..length).each do |i|
      char = self[-i]
      result += 26**(i-1) * (Alpha26.index(char) + 1)
    end
    result
  end

  def to_bool
    return true   if self == true   || self =~ (/(true|t|yes|y|1)$/i)
    return false  if self == false  || self.blank? || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end

  # Tipos de Composições por Extenso
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

  def tipo_de_composicao_sicro2_por_extenso
    case self
      when "ATIVI" then "Atividades Auxiliares"
      when "CONST" then "Construção Rodoviária"
      when "CONSE" then "Conservação Rodoviária"
      when "SINAL" then "Sinalização Rodoviária"
      when "RESTA" then "Restauração Rodoviária"
    else
      self
    end
  end

  def tipo_de_composicao_iopes_por_extenso
    case self
      when "01"   then "SERVIÇOS PRELIMINARES"
      when "0102" then "DEMOLIÇÕES E RETIRADAS"
      when "0103" then "DEMOLIÇÕES E RETIRADAS"
      when "0104" then "LIMPEZA DO TERRENO"
      when "0105" then "LOCAÇÃO"
      when "02"   then "INSTALAÇÃO DO CANTEIRO DE OBRAS"
      when "0203" then "TAPUMES, BARRACÕES E COBERTURAS"
      when "0207" then "INSTALAÇÃO DO CANTEIRO DE OBRAS (UTILIZAÇÃO 1 VEZ), PROJETO PADRÃO LABOR - NR.18 (OBRAS COM PRAZO DE EXECUÇÃO SUPERIOR A 12 MESES)"
      when "0208" then "INSTALAÇÃO DO CANTEIRO DE OBRAS (UTILIZAÇÃO 2 VEZES), PROJETO PADRÃO LABOR - NR.18 (OBRAS COM PRAZO DE EXECUÇÃO DE 6 A 12 MESES)"
      when "03"   then "MOVIMENTO DE TERRA"
      when "0301" then "ESCAVAÇÕES"
      when "0302" then "REATERRO E COMPACTAÇÃO"
      when "0303" then "TRANSPORTES"
      when "04"   then "ESTRUTURAS"
      when "0402" then "INFRA-ESTRUTURA (FUNDAÇÃO)"
      when "0403" then "SUPER-ESTRUTURA"
      when "0404" then "ESTRUTURAS DE CONCRETO APARENTE"
      when "0406" then "LAJES PRÉ-MOLDADAS"
      when "0407" then "DIVERSOS"
      when "0408" then "RECUPERAÇÃO DE ESTRUTURAS"
      when "0409" then "MURO DE ARRIMO (Conc. ciclópico 15MPa c/ 30% de pedra de mão, c/ forn., preparo e aplicação de concreto, forma de tábua pinho-reap.5 vezes, exclusive escav. e reaterro) seções tipicas nas seguintes dimensões:"
      when "05"   then "PAREDES E PAINÉIS"
      when "0501" then "ALVENARIA DE VEDAÇÃO"
      when "0502" then "PLACAS E PAINÉIS DIVISÓRIOS"
      when "0503" then "VERGAS/CONTRAVERGA"
      when "0505" then "ALVENARIA ESTRUTURAL"
      when "0506" then "ALVENARIA DE VEDAÇÃO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "06"   then "ESQUADRIAS DE MADEIRA"
      when "0601" then "MARCOS E ALIZARES"
      when "0611" then "FERRAGENS"
      when "0613" then "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV.C/ENCHIMENTO EM MADEIRA 1A.QUALIDADE ESP. 30MM P/ PINTURA, INCLUSIVE ALIZARES, DOBRADIÇAS E FECHADURA EXTERNA, EXCLUSIVE MARCO"
      when "0614" then "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA/EQUIV, ESP. 30MM C/ ACAB. LISO P/ PINTURA, INCL. FECHADURA TIPO \"LIVRE/OCUPADO\" E FERRAGENS P/ FIXAÇÃO EM GRANITO, EXCLUSIVE MARCO"
      when "0617" then "PORTA EM VENEZIANA, EM MADEIRA DE LEI, ESP. 30MM, INCL. DOBRADIÇAS, EXCLUSIVE ALIZAR, MARCO E FECHADURA"
      when "0619" then "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV. C/ ENCHIMENTO EM MADEIRA DE 1ª QUALIDADE ESP 30MM, COM VISOR DE VIDRO, INCL. ALIZARES, DOBRADIÇAS E FECHADURAS EXT EM LATÃO CROMADO LAFONTE/EQUIV , EXCL. MARCO, NAS DIMENSÕES:"
      when "0622" then "REVISÕES E REPAROS"
      when "0623" then "PORTA EM MADEIRA DE LEI COM ENCHIMENTO EM MADEIRA DE 1ª QUALIDADE, ESP. 30MM, PARA PINTURA, INCL. ALIZARES, DOBRADIÇAS, FECHADURA TIPO \"LIVRE/OCUPADO\" EXCLUSIVE MARCO"
      when "0625" then "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV.,ESP. 35 MM, MACIÇA C/ FRISO P/ VERNIZ, PADRÃO SEDU, COM VISOR, INCLUSIVE ALIZARES, DOBRADIÇAS E FECHADURA DE BOLA EXTERNA, EXCLUSIVE MARCO"
      when "07"   then "ESQUADRIAS METÁLICAS"
      when "0711" then "GRADES E PORTÕES"
      when "0717" then "ESQUADRIAS METÁLICAS (M2)"
      when "0718" then "REVISÕES E REPAROS"
      when "08"   then "VIDROS E ESPELHOS"
      when "0801" then "VIDROS PARA ESQUADRIAS"
      when "0802" then "ESPELHOS"
      when "09"   then "COBERTURA"
      when "0901" then "ESTRUTURA PARA TELHADO"
      when "0902" then "TELHADO"
      when "0903" then "RUFOS E CALHAS"
      when "0904" then "PLATIBANDA"
      when "0905" then "REVISÕES E REPAROS"
      when "10"   then "IMPERMEABILIZAÇÃO"
      when "1001" then "IMPERMEABILIZAÇÃO DE CAIXAS DE ÁGUA"
      when "1002" then "IMPERMEABILIZAÇÃO CALHAS, LAJES DESCOBERTAS, BALDRAMES, PAREDES E JARDINEIRAS"
      when "1003" then "IMPERMEABILIZAÇÃO DE FOSSAS E FILTROS"
      when "11"   then "TETOS E FORROS"
      when "1101" then "REVESTIMENTO COM ARGAMASSA"
      when "1102" then "REBAIXAMENTOS"
      when "1103" then "REVESTIMENTO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "1104" then "REVISÕES E REPAROS"
      when "12"   then "REVESTIMENTO DE PAREDES"
      when "1201" then "REVESTIMENTO COM ARGAMASSA"
      when "1202" then "ACABAMENTOS"
      when "1203" then "REVESTIMENTO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "13"   then "PISOS INTERNOS E EXTERNOS"
      when "1301" then "LASTRO DE CONTRAPISO"
      when "1302" then "ACABAMENTOS"
      when "1303" then "DEGRAUS, RODAPÉS, SOLEIRAS E PEITORIS"
      when "1304" then "REVISÕES E REPAROS"
      when "14"   then "INSTALAÇÕES HIDRO-SANITÁRIAS"
      when "1401" then "SUMIDOUROS, FOSSAS SÉPTICAS E FILTROS ANAERÓBIOS"
      when "1402" then "ENTRADA DE ÁGUA"
      when "1407" then "PONTOS HIDRO-SANITÁRIOS"
      when "1409" then "TUBULAÇÃO DE LIGAÇÃO DE CAIXAS"
      when "1411" then "CAIXAS EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "1412" then "REDE DE ÁGUA FRIA - TUBOS METÁLICOS"
      when "1414" then "REDE DE ÁGUA FRIA - TUBOS SOLDÁVEIS DE PVC"
      when "1415" then "REDE DE ÁGUA FRIA - CONEXÕES SOLDÁVEIS DE PVC"
      when "1419" then "REDE DE ESGOTO - TUBOS DE PVC"
      when "1421" then "CAIXAS DE PVC / EQUIPAMENTOS"
      when "1422" then "ABERTURA E FECHAMENTO DE RASGOS (inclusive preparo e aplicação de argamassa)"
      when "1423" then "REVISÕES E REPAROS"
      when "15"   then "INSTALAÇÕES ELÉTRICAS"
      when "1501" then "PADRÃO DE ENTRADA"
      when "1503" then "QUADRO DE DISTRIBUIÇÃO"
      when "1506" then "CAIXAS DE PASSAGEM"
      when "1507" then "ENVELOPAMENTO DE ELETRODUTOS"
      when "1508" then "INSTALAÇÕES APARENTES"
      when "1509" then "COMPOSIÇÕES INTERMEDIÁRIAS P/ ELETRICA"
      when "1510" then "CAIXAS DE PASSAGEM EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "1511" then "ELETRODUTOS E CONEXÕES"
      when "1513" then "CHAVES, FUSIVEIS E DISJUNTORES"
      when "1514" then "FIOS E CABOS"
      when "1515" then "SERVIÇOS DIVERSOS"
      when "1516" then "ABERTURA E FECHAMENTO DE RASGOS (inclusive preparo e aplicação de argamassa)"
      when "1517" then "PADRAO DE ENTRADA DE ENERGIA - NORTEC-01 - ESCELSA"
      when "1518" then "PONTOS ELETRICOS REVISAO NR-10"
      when "1519" then "QUADROS DE DISTRIBUIÇÃO COM BARRAMENTO, TRINCO E FECHADURA"
      when "1520" then "TERMINAIS, CONECTORES E ABRAÇADEIRAS"
      when "16"   then "OUTRAS INSTALAÇÕES"
      when "1601" then "INSTALAÇÃO DE TELEFONE"
      when "1602" then "INSTALAÇÃO DE GÁS"
      when "1603" then "INSTALAÇÃO DE PÁRA-RAIO"
      when "1606" then "INSTALAÇÃO DE INCÊNDIO"
      when "1607" then "DEPÓSITO DE GÁS"
      when "1608" then "INSTALAÇÃO DE REDE LÓGICA"
      when "17"   then "APARELHOS HIDRO-SANITÁRIOS"
      when "1701" then "LOUÇAS"
      when "1702" then "BANCADAS"
      when "1703" then "TORNEIRAS, REGISTROS, VÁLVULAS E METAIS"
      when "1705" then "OUTROS APARELHOS"
      when "18"   then "APARELHOS ELÉTRICOS"
      when "1801" then "LUMINÁRIAS"
      when "1802" then "INTERRUPTORES E TOMADAS"
      when "1803" then "BOMBAS"
      when "1804" then "POSTES"
      when "1807" then "VENTILADORES"
      when "1808" then "OUTROS APARELHOS"
      when "19"   then "PINTURA"
      when "1901" then "SOBRE PAREDES E FORROS"
      when "1902" then "SOBRE CONCRETO OU BLOCOS CERÂMICOS APARENTES"
      when "1903" then "SOBRE MADEIRA"
      when "1904" then "SOBRE METAL"
      when "1905" then "SOBRE ELEMENTOS ESPECIAIS"
      when "1906" then "SOBRE PISOS"
      when "20"   then "SERVIÇOS COMPLEMENTARES EXTERNOS"
      when "2001" then "MUROS E FECHAMENTOS"
      when "2002" then "PAVIMENTAÇÃO"
      when "2003" then "PAISAGISMO"
      when "2004" then "TRATAMENTO, CONSERVAÇÃO E LIMPEZA"
      when "2005" then "DIVERSOS EXTERNOS"
      when "2007" then "QUADRA DE ESPORTES (Ver nota 9 da planilha)"
      when "21"   then "SERVIÇOS COMPLEMENTARES INTERNOS"
      when "2101" then "QUADROS DE GIZ / AVISO"
      when "2102" then "ARMÁRIOS E PRATELEIRAS"
      when "2103" then "DIVERSOS INTERNOS"
      when "22"   then "APOIO"
      when "2208" then "Locação de veículo tipo Gol 1.000 a gasolina ou equivalente, com até 1 (um) ano de uso, em bom estado de conservação com:"
      when "31"   then "SERVIÇOS GERAIS"
      when "3105" then "MÃO DE OBRA- (MENSALISTAS - SEM DESONERAÇÃO- LEIS SOCIAIS=77,5%)"
      when "3106" then "MÃO DE OBRA - (MENSALISTAS - LEIS SOCIAIS = 5%)"
      when "3108" then "ENCARGOS COMPLEMENTARES - EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL"
      when "3109" then "ENCARGOS COMPLEMENTARES - FERRAMENTAS MANUAIS"
      when "3110" then "ENCARGOS COMPLEMENTARES - ALIMENTAÇÃO"
      when "3119" then "MÃO DE OBRA (MENSALISTAS - COM DESONERAÇÃO - LS = 52,25%)"
    else
      self
    end
  end

  def tipo_de_composicao_sudecap_por_extenso
    case self
      when "01"    then "INSTALAÇAO DA OBRA"
      when "01.01" then "ESCRITORIO DE OBRA"
      when "01.02" then "BARRACAO DE OBRA"
      when "01.03" then "PLACA DE OBRA AFIXADA COM PEÇAS DE MADEIRA 8X12CM"
      when "01.04" then "TAPUME PADRAO SUDECAP (TIPO I, II E III)"
      when "01.05" then "CERCA PADRAO SUDECAP"
      when "01.06" then "INSTALAÇAO PROVISORIA - CONCESSIONARIA"
      when "01.07" then "FOSSA E SUMIDOURO"
      when "01.08" then "REDE INTERNA E PROVISORIA DE AGUA E ESGOTO"
      when "01.09" then "CONTAINER 6,0X2,30X2,82 M COM ISOLAMENTO TERMICO"
      when "01.10" then "BANHEIRO QUIMICO"
      when "01.11" then "SINALIZAÇAO"
      when "01.17" then "LOCAÇAO DE OBRA"
      when "01.29" then "ANDAIME FACHADEIRO"
      when "01.30" then "MONTAGEM E DESMONTAGEM DE ANDAIME"
      when "02"    then "DEMOLIÇOES E REMOÇOES"
      when "02.01" then "REMOÇAO DE TELHA INCLUSIVE EMPILHAMENTO"
      when "02.02" then "REMOÇAO DE CALHA, RUFO E CONDUTOR,INCL.AFASTAMENTO"
      when "02.03" then "REMOÇAO DE ENGRADAMENTO DE TELHADO INCL.EMPILHAM."
      when "02.04" then "REMOÇAO DE FORRO INCLUSIVE EMPILHAMENTO"
      when "02.06" then "REMOÇAO DE ESQUADRIA DE MADEIRA INCL. EMPILHAMENTO"
      when "02.07" then "REMOÇAO DE ESQUADRIA METALICA"
      when "02.09" then "DEMOLIÇAO DE REVESTIMENTO INCLUSIVE AFASTAMENTO"
      when "02.10" then "DEMOLIÇAO DE PISO INCLUSIVE AFASTAMENTO"
      when "02.11" then "DEMOLIÇAO DE PASSEIO E PAVIMENTO"
      when "02.12" then "CORTE MECANICO EM CONCRETO/ASFALTO"
      when "02.13" then "DEMOLIÇAO DE CONCRETO INCLUSIVE AFASTAMENTO"
      when "02.14" then "DEMOLIÇAO MANUAL, DE ALVENARIA INCL. AFASTAMENTO"
      when "02.15" then "REMOÇAO DE MEIO-FIO"
      when "02.16" then "DEMOLIÇAO, REMOÇAO E CARGA MECANICA"
      when "02.19" then "DEMOLIÇAO DE DIVISORIA INCLUSIVE AFASTAMENTO"
      when "02.20" then "REMOÇAO DE QUADROS"
      when "02.21" then "REMOÇAO DE PEÇAS DIVERSAS"
      when "02.22" then "REMOÇAO DE BANCADA"
      when "02.23" then "REMOÇAO DE CERCA E ALAMBRADO"
      when "02.26" then "TRANSPORTE DE MATERIAL DEMOLIDO EM CARRINHO DE MAO"
      when "02.27" then "CARGA DE MATERIAL DEMOLIDO SOBRE CAMINHAO"
      when "02.28" then "TRANSPORTE DE MATERIAL DEMOLIDO EM CAMINHAO"
      when "02.29" then "TRANSPORTE DE MAT.DE QUALQUER NATUREZA EM CAÇAMBA"
      when "02.30" then "LIMPEZA DO PAVIMENTO"
      when "02.31" then "SUPRESSAO DE ARVORE"
      when "03"    then "TRABALHOS EM TERRA"
      when "03.01" then "DESMATAMENTO, DESTOCAMENTO E LIMPEZA DO TERRENO"
      when "03.03" then "ESCAVAÇAO MECANICA INCLUSIVE TRANSPORTE ATE 50 M"
      when "03.05" then "ESCAVAÇAO E CARGA MECANIZADA"
      when "03.07" then "ESCAVAÇAO E CARGA EM MATERIAL DE 3ª CATEGORIA"
      when "03.12" then "CARGA DE MATERIAL DE QQUER NATUREZA SOBRE CAMINHAO"
      when "03.13" then "TRANSPORTE DE MATERIAL DE QUALQUER NATUREZA"
      when "03.15" then "ATERRO COMPACTADO"
      when "03.16" then "ESCAVAÇAO DE MATERIAL DE 3ª CATEGORIA"
      when "03.17" then "ESCAVAÇAO MANUAL DE VALAS"
      when "03.18" then "ESCAVAÇAO MECANICA DE VALAS COM DESCARGA LATERAL"
      when "03.19" then "ESCAVAÇAO MECANICA DE VALAS COM DESC. S/ CAMINHOES"
      when "03.20" then "ESCAVAÇAO EM SOLO MOLE"
      when "03.21" then "ESCAVAÇAO E CARGA DE VALA EM MATERIAL 3ª CATEGORIA"
      when "03.22" then "REATERRO DE VALA"
      when "03.23" then "REGULARIZAÇAO E COMPACTAÇAO DE TERRENO"
      when "03.24" then "TRANSPORTE DE MATERIAL DEMOLIDO EM CARRINHO DE MAO"
      when "03.25" then "TRANSPORTE DE MAT.DE QUALQUER NATUREZA EM CAÇAMBA"
      when "04"    then "FUNDAÇOES"
      when "04.01" then "TUBULAO A CEU ABERTO"
      when "04.03" then "ESTACA BROCA PERFURADA A TRADO MANUAL"
      when "04.04" then "ESTACA BROCA PERFURADA A TRADO MECANIZADO"
      when "04.05" then "ESTACA STRAUSS - ESCAVAÇAO, ARMAÇAO E CONCRETAGEM"
      when "04.06" then "ESTACA HELICE CONTINUA"
      when "04.07" then "ESTACA TRILHO, CRAVADA (METALICA)"
      when "04.08" then "ESTACA PRE-MOLDADA DE CONCRETO ARMADO, CRAVADA"
      when "04.10" then "ESTACA RAIZ"
      when "04.11" then "ESTACA FRANKI - CRAVAÇAO, ARMAÇAO E CONCRETAGEM"
      when "04.12" then "FORNEC. CONCRETO USINADO CONV. LANC. EM FUNDACAO"
      when "04.13" then "FORMA, ESCORAMENTO, DESFORMA E LIMPEZA EM FUNDAÇAO"
      when "04.15" then "ARMAÇAO INCL. CORTE, DOBRA E COLOCAÇAO EM FUNDAÇAO"
      when "04.19" then "CONCRETO CICLOPICO LANÇADO EM FUNDAÇAO E ARRIMO"
      when "04.21" then "CONCRETO CONVENCIONAL B1,B2 LANÇADO EM FUNDAÇAO"
      when "04.23" then "CONCRETO USINADO B1,B2 LANÇADO EM FUNDAÇAO"
      when "04.27" then "CONCRETO USINADO BOMBEADO LANÇADO EM FUNDAÇAO"
      when "04.30" then "BALDRAME DE ALVENARIA DE BLOCO DE CONCRETO(SAPATA)"
      when "05"    then "GALERIA CELULAR E/OU CONTENÇOES"
      when "05.01" then "ENROCAMENTO COM PEDRA DE MAO"
      when "05.02" then "TUBO DE CONCRETO POROSO"
      when "05.03" then "CONCRETO DE REGULARIZAÇAO"
      when "05.04" then "FORMA INCLUSIVE DESFORMA E LIMPEZA"
      when "05.05" then "ARMAÇAO INCLUSIVE CORTE, DOBRA E COLOCAÇAO"
      when "05.06" then "JUNTA ELASTICA"
      when "05.07" then "CONCRETO ESTRUTURAL, FORN. APLICAÇAO E ADENSAMENTO"
      when "05.09" then "FORNECIMENTO E LANÇAMENTO DE MATERIAL DRENANTE"
      when "05.11" then "MANTA DRENANTE GEOTEXTIL"
      when "05.12" then "DRENO BARBACAN"
      when "05.13" then "DRENOS DE GALERIA"
      when "05.16" then "POÇO DE BOMBEAMENTO"
      when "05.17" then "ALA DE GALERIA CELULAR"
      when "05.19" then "GRELHA"
      when "05.20" then "GABIAO"
      when "06"    then "ESTRUTURAS DE CONCRETO E METALICA"
      when "06.01" then "FORMA, ESCORAMENTO, DESFORMA E LIMPEZA - ESTRUTURA"
      when "06.03" then "ARMAÇAO INCL.CORTE, DOBRA E COLOCAÇAO EM ESTRUTURA"
      when "06.04" then "TELA SOLDADA"
      when "06.05" then "CONCRETO CONVENCIONAL B1,B2 LANÇADO EM ESTRUTURA"
      when "06.07" then "CONCRETO USINADO B1,B2 LANÇADO EM ESTRUTURA"
      when "06.09" then "CONCRETO USINADO BOMBEADO LANÇADO EM ESTRUTURA"
      when "06.11" then "LAJE PRE-MOLDADA, A REVESTIR INCLUSIVE CAPEAMENTO"
      when "06.13" then "LAJE PRE-MOLDADA, APARENTE, INCLUSIVE CAPEAMENTO"
      when "06.15" then "LAJE NIVEL ZERO ACABAMENTO POLIDO MECANICAMENTE"
      when "07"    then "ALVENARIAS E DIVISOES"
      when "07.01" then "ALVENARIA DE TIJOLO MACIÇO REQUEIMADO"
      when "07.03" then "ALVENARIA DE TIJOLO FURADO(BLOCO CERAMICO VEDAÇÃO)"
      when "07.05" then "ALVENARIA DE BLOCO DE CONCRETO"
      when "07.06" then "ALVENARIA DE BLOCO DE CONCRETO ESTRUTURAL"
      when "07.07" then "ALVENARIA DE TIJOLO LAMINADO"
      when "07.09" then "ALVENARIA DE TIJOLO DE VIDRO"
      when "07.11" then "ALVENARIA DE COBOGO CERAMICO"
      when "07.13" then "ALVENARIA DE COBOGO DE CONCRETO"
      when "07.32" then "DIVISORIA EM PEDRA (PANEIS FIXOS)"
      when "07.34" then "DIVISORIA EM PAINEL REMOVIVEL"
      when "07.35" then "VERGAS E CONTRA-VERGAS DE CONCRETO PRE-FABRICADAS"
      when "08"    then "COBERTURAS E FORROS"
      when "08.01" then "ENGRADAMENTO EM MADEIRA PARAJU"
      when "08.02" then "PEÇAS PARA ENGRADAMENTO EM MADEIRA PARAJU"
      when "08.07" then "COBERTURA EM TELHA CERAMICA"
      when "08.09" then "COBERTURA EM TELHA FIBROCIMENTO (CIMENTO AMIANTO)"
      when "08.12" then "COBERTURA EM TELHA METALICA"
      when "08.15" then "CUMEEIRA"
      when "08.20" then "FORRO DE MADEIRA"
      when "08.22" then "FORRO DE GESSO"
      when "08.25" then "FORRO EM PVC"
      when "08.85" then "CALHA DE CHAPA GALVANIZADA"
      when "08.87" then "RUFO E CONTRA-RUFO DE CHAPA GALVANIZADA"
      when "09"    then "IMPERMEABILIZAÇOES E ISOLAMENTOS"
      when "09.03" then "CAMADA DE REGULARIZAÇAO (CIMENTO/AREIA)"
      when "09.04" then "CAMADA DE PROTEÇAO (CIMENTO/AREIA)"
      when "09.07" then "IMPERMEABILIZAÇAO COM ARGAMASSA RIGIDA (CIM/AREIA)"
      when "09.09" then "IMPERMEABILIZAÇAO POR INFILTRAÇAO E CRISTALIZAÇAO"
      when "09.11" then "IMPERMEABILIZAÇAO C/ MANTA ASFALTICA PRE-FABRICADA"
      when "09.12" then "PINTURA ASFALTICA IMPERMEABILIZANTE"
      when "10"    then "INSTALAÇAO HIDRO-SANITARIA, INCENDIO E GAS"
      when "10.03" then "TUBO PVC AGUA SOLDA CLASSE 15 INCLUSIVE CONEXOES"
      when "10.04" then "TUBO AÇO GALVANIZADO DIN 2440, INCLUSIVE CONEXOES"
      when "10.05" then "TUBO DE COBRE SOLDADO CLASSE A INCLUSIVE CONEXOES"
      when "10.06" then "TUBO DE COBRE CLASSE E INCLUSIVE CONEXOES"
      when "10.10" then "TUBO PVC ESGOTO, PB, VIROLA E ANEL, INCL. CONEXOES"
      when "10.12" then "TUBO PVC ESGOTO PONTA/BOLSA, SOLDA, INCL.CONEXOES"
      when "10.14" then "TUBO PVC ESG. REFORÇADO, PB, VIR., ANEL INCL.CONEX"
      when "10.18" then "CONEXOES"
      when "10.20" then "REGISTRO DE PRESSAO"
      when "10.22" then "REGISTRO DE GAVETA"
      when "10.24" then "TORNEIRA"
      when "10.25" then "VALVULA"
      when "10.26" then "GRELHA E RALO METALICO"
      when "10.27" then "CHUVEIRO, LIGAÇAO E SIFAO"
      when "10.29" then "LIGACAO DE AGUA"
      when "10.30" then "ACESSORIO DE FIXAÇAO"
      when "10.35" then "CAIXA E RALO"
      when "10.40" then "LAVATORIO"
      when "10.41" then "VASO SANITARIO"
      when "10.43" then "MICTORIO"
      when "10.45" then "PIA E CUBA"
      when "10.46" then "TANQUE"
      when "10.47" then "BEBEDOURO E FILTRO"
      when "10.48" then "COMPLEMENTO"
      when "10.50" then "INSTALAÇAO DE GAS"
      when "10.70" then "CAIXA ALVENARIA COM TAMPA CONCRETO-PADRAO SUDECAP"
      when "10.72" then "CAIXA COLETORA DE ALVEN. C/ GRELHA AÇO-PAD.SUDECAP"
      when "10.74" then "CAIXA SIFONADA DE ALVEN.TAMPA CONCRETO PAD.SUDECAP"
      when "10.78" then "CONJ.QUADRO E CANTONEIRA DE FERRO(REQUADRO TAMPAS)"
      when "10.79" then "TAMPAS/PLACAS"
      when "10.80" then "BOMBA"
      when "10.90" then "PREVENÇAO E COMBATE A INCENDIO"
      when "11"    then "INSTALAÇA0 ELETRICA E TELEFONICA"
      when "11.01" then "ELETRODUTO PVC RIGIDO, ROSCA, INCLUSIVE CONEXOES"
      when "11.02" then "ELETRODUTO PVC FLEXIVEL CORRUGADO TIGREFLEX/EQUIVALENTE"
      when "11.03" then "ELETRODUTO SEALTUBO PVC ZINCADO ASPIRADO C/TRACADO"
      when "11.05" then "ELETRODUTO AÇO GALVANIZADO PESADO, INCL. CONEXOES"
      when "11.11" then "ELETROCALHA"
      when "11.12" then "PERFILADO E ACESSORIO, INCLUSIVE CONEXOES"
      when "11.14" then "CAIXA E ACESSORIOS"
      when "11.15" then "QUADRO DISTRIBUIÇAO DE CIRCUITOS"
      when "11.17" then "CONDULETE"
      when "11.18" then "DISJUNTOR TERMOMAGNETICO (200V-60HRZ)-PADRAO NEMA"
      when "11.20" then "INTERRUPTOR DIFERENCIAL RESIDUAL"
      when "11.22" then "CHAVE/FUSIVEL/RELE FOTOELETR. TECNOWATT OU EQUIVALENTE"
      when "11.23" then "FIO COM ISOLAMENTO NÃO HALOGÊNO 750V"
      when "11.24" then "CABO FLEXÍVEL NÃO HALOGÊNO"
      when "11.30" then "INTERRUPTOR, TOMADA E ACESS. SILENTOQUE PIAL/EQUIVALENTE"
      when "11.31" then "INTERRUPTOR, TOMADA E ACESSORIO-LINHA DECORATIVA"
      when "11.37" then "LUMINARIA SOBREPOR P/LAMP.FLUOR, REFLETOR ALUMINI0"
      when "11.38" then "LUMINARIA EMBUTIR P/LAMP. FLUOR. REFLETOR ALUMINIO"
      when "11.43" then "LUMINARIA PARA TETO"
      when "11.45" then "ARANDELA"
      when "11.51" then "LUMINARIA EXTERNA DECORATIVA PARA POSTES"
      when "11.53" then "ILUMINACAO PUBLICA - PADRAO CEMIG"
      when "11.54" then "PROJETORES PARA QUADRAS E CAMPOS DE FUTEBOL"
      when "11.55" then "COMPLEMENTOS PARA LUMINARIAS"
      when "11.56" then "POSTE GALVANIZADO ESCALONADO RETO ENGASTADO"
      when "11.58" then "REATORES P/ LAMPADA FLUORESCENTE"
      when "11.59" then "REATOR ELETRONICO P/ LAMP.  DESCARGA (VM/VS/VMET)"
      when "11.60" then "LAMPADAS - 127V/220V"
      when "11.61" then "PADRAO CEMIG AEREO EM MURETA"
      when "11.62" then "PADRAO CEMIG SUBTERRANEO EM MURETA"
      when "11.80" then "FIOS E CABOS PADRAO TELEMAR"
      when "11.81" then "TOMADAS PADRAO PARA TELECOMUNICACOES"
      when "11.82" then "ACESSORIOS PARA INSTALAÇAO TELEFONICA/INFORMATICA"
      when "11.83" then "ATERRAMENTO PARA INSTALAÇAO"
      when "11.84" then "CAIXAS PARA INSTALAÇAO TELEFONICA PADRAO TELEMAR"
      when "11.85" then "CX INTERNA METAL.-EMBUTIR/SOBREPOR-PADRAO TELEMAR"
      when "11.91" then "CONDUTORES DE ATERRAMENTO"
      when "11.92" then "PROTECAO EXTERNA - CONTRA DESCARGA ATMOSFERICA"
      when "11.93" then "PROTECAO INTERNA - CONTRA SURTO"
      when "12"    then "ESQUADRIA DE MADEIRA (MARCENARIA)"
      when "12.02" then "PORTA DE MADEIRA DE LEI ESPECIAL (EXCLUSIVE MARCO)"
      when "12.03" then "PORTA ABRIR MAD. LEI, PRANCHETA COMPLETA / TARJETA"
      when "12.04" then "PORTA ABRIR EM MADEIRA DE LEI, PRANCHETA COMPLETA"
      when "12.10" then "ESQUADRIA DE MADEIRA PADRAO SUDECAP"
      when "12.30" then "FOLHA DE PORTA EM MADEIRA DE LEI"
      when "12.40" then "MARCO DE MADEIRA, INCLUSIVE ALIZARES"
      when "12.50" then "FECHADURA, TARJETA E DOBRADIÇA"
      when "13"    then "SERRALHERIA"
      when "13.31" then "PORTAO EM TELA"
      when "13.32" then "PORTAO EM CHAPA E PERFIL DE FERRO"
      when "13.38" then "GRADES"
      when "13.40" then "GUARDA-CORPO E CORRIMAO"
      when "13.55" then "ACESSORIOS E PEÇAS COMPLEMENTARES"
      when "13.70" then "PADRAO GRUPO ESCOLAR"
      when "13.72" then "PADRAO POLICLINICA"
      when "13.74" then "PADRAO UNIDADE DE SAUDE"
      when "13.76" then "PADRAO CENTRO DE SAUDE"
      when "13.78" then "PADRAO CRECHE"
      when "14"    then "REVESTIMENTOS"
      when "14.05" then "REVESTIMENTO COM ARGAMASSA DE CIMENTO, CAL E AREIA"
      when "14.06" then "REVESTIMENTO COM ARGAMASSA ESPECIAL"
      when "14.07" then "REVESTIMENTO INTERNO EM GESSO"
      when "14.15" then "REVESTIMENTO COM AZULEJO"
      when "14.17" then "REVESTIMENTO COM CERAMICA"
      when "14.21" then "REVESTIMENTO COM PEDRA"
      when "14.35" then "COMPLEMENTO PARA ARREMATE CERAMICO"
      when "15"    then "PISOS, RODAPES, SOLEIRAS E PEITORIS"
      when "15.02" then "LAJE DE TRANSIÇAO"
      when "15.03" then "LAJE DE PISO"
      when "15.04" then "CONTRAPISO DESEMPENADO, COM ARG.1:3 SEM JUNTA"
      when "15.05" then "PISO CIMENT.DESEMP.FELTRADO,ARG.1:3,JUNTA PL.17X3M"
      when "15.06" then "PISO CIMENTADO NATADO COM ARGAMASSA 1:3, SEM JUNTA"
      when "15.07" then "PISO CIMENTADO NATADO COM ARG.1:3 JUNTA PL. 17x3MM"
      when "15.08" then "PISO CIMENTADO ACAB. LISO ARGAMASSA 1:3 JUNTA SECA"
      when "15.15" then "PISO DE MADEIRA"
      when "15.17" then "PISO CERAMICO"
      when "15.20" then "PISO DE PEDRA EM PLACAS"
      when "15.22" then "PISO DE LADRILHO HIDRAULICO"
      when "15.25" then "PISO VINILICO E DE BORRACHA"
      when "15.31" then "MARMORITE E REVEDUR, INCLUSIVE CONTRAPISO E= 3 CM"
      when "15.33" then "PISO DE TIJOLO"
      when "15.35" then "PISO DE CONCRETO (PATIO)"
      when "15.36" then "PISO DE CONCRETO (QUADRA)"
      when "15.37" then "CALÇADA PORTUGUESA"
      when "15.40" then "RODAPE DE MADEIRA"
      when "15.46" then "RODAPE DE PEDRA"
      when "15.48" then "RODAPE DE ARGAMASSA 1:3"
      when "15.50" then "RODAPE DE MARMORITE E REVEDUR"
      when "15.54" then "SOLEIRA DE PEDRA"
      when "15.58" then "PEITORIL DE PEDRA"
      when "15.60" then "PEITORIL DE CONCRETO"
      when "15.61" then "ACABAMENTO COM SINTECO OU RESINA"
      when "16"    then "VIDROS, ESPELHOS E ACESSORIOS"
      when "16.02" then "VIDRO LISO"
      when "16.04" then "VIDRO FANTASIA"
      when "16.06" then "VIDRO CANELADO"
      when "16.08" then "VIDRO ARAMADO"
      when "16.20" then "ESPELHO NACIONAL"
      when "17"    then "PINTURA"
      when "17.01" then "CAIAÇAO"
      when "17.02" then "APLICACAO DE LIQUIBRILHO"
      when "17.05" then "PINTURA LATEX PVA EXCLUSIVE SELADOR (SEM FUNDO)"
      when "17.07" then "LATEX PVA INCLUS. SELADOR PVA OU FUNDO PREPARADOR"
      when "17.09" then "PINTURA LATEX PVA INCLUSIVE FUNDO SELADOR ACRILICO"
      when "17.15" then "PINTURA ACRILICA"
      when "17.25" then "PINTURA ESMALTE SINTETICO"
      when "17.30" then "PINTURA EPOXI"
      when "17.37" then "SISTEMA PARA SUPERFICIES GALVANIZADAS"
      when "17.41" then "ENVERNIZAMENTO POLIURETANO MADEIRA RESINOSA"
      when "17.42" then "ENVERNIZAMENTO POLIURETANO MADEIRA NAO RESINOSA"
      when "17.44" then "TRATAMENTO(SUPERF.CONCR.PEDRAS ALVENARIA/CERAMICA)"
      when "17.45" then "ENCERAMENTO"
      when "17.50" then "PINTURA DE QUADRAS, PATIOS E ESTACIONAMENTO"
      when "18"    then "SERVICOS DIVERSOS"
      when "18.02" then "EQUIPAMENTOS ESPORTIVOS"
      when "18.05" then "PLACAS"
      when "18.06" then "SINALIZAÇÃO TÁTIL E PLACAS EM BRAILLE"
      when "18.08" then "BANCADA"
      when "18.09" then "PRATELEIRA"
      when "18.10" then "BANCOS E MESAS"
      when "18.30" then "EQUIPAMENTOS E PEÇAS PADRAO"
      when "18.40" then "EQUIPAMENTO PARA PLAYGROUND EM EUCALIPTO IMUNIZADO"
      when "18.41" then "PLAYGROUND LONGEVIDADE"
      when "18.50" then "EQUIPAMENTO PARA PLAYGROUND METALICO"
      when "18.52" then "EQUIPAMENTOS PARA PLAYGROUND"
      when "19"    then "DRENAGEM"
      when "19.03" then "TUBO CORRUGADO POLIETILENO ALTA DENSIDADE PEAD N12"
      when "19.04" then "REDE TUB. CONCRETO CIMENTO ARI PLUS RS CLASSE PA-1"
      when "19.05" then "REDE TUB. CONCRETO CIMENTO ARI PLUS RS CLASSE PA-2"
      when "19.06" then "REDE TUB.CONCRETO CIMENTO ARI PLUS RS CLASSE PA-3"
      when "19.07" then "CONCRETO PARA BERÇO DE REDE TUBULAR"
      when "19.08" then "FORMA PARA BERÇO"
      when "19.09" then "ESTIVA DE MADEIRA"
      when "19.10" then "ALA DE REDE TUBULAR"
      when "19.11" then "CAIXA PARA BOCA LOBO"
      when "19.12" then "ALTEAMENTO DE CAIXA PARA BOCA DE LOBO"
      when "19.13" then "CONJUNTO QUADRO E GRELHA PARA BOCA DE LOBO"
      when "19.14" then "CANTONEIRA PARA BOCA DE LOBO"
      when "19.15" then "CAIXA DE PASSAGEM TIPO A - PADRAO SUDECAP"
      when "19.16" then "CAIXA DE PASSAGEM TIPO B - PADRAO SUDECAP"
      when "19.17" then "CAIXA DE PASSAGEM TIPO C - PADRAO SUDECAP"
      when "19.18" then "POÇO DE VISITA TIPO A - PADRAO SUDECAP"
      when "19.19" then "POÇO DE VISITA TIPO B - PADRAO SUDECAP"
      when "19.20" then "POÇO DE VISITA TIPO C - PADRAO SUDECAP"
      when "19.21" then "CHAMINE DE POÇO DE VISITA - PADRAO SUDECAP"
      when "19.22" then "TAMPAO DE POÇO DE VISITA"
      when "19.23" then "DESCIDA D'AGUA TIPO DEGRAU - PADRAO SUDECAP"
      when "19.24" then "DESCIDA D'AGUA TIPO CALHA - PADRAO SUDECAP"
      when "19.25" then "DRENO - PADRAO SUDECAP"
      when "19.27" then "BARRAGEM - PADRAO SUDECAP"
      when "19.28" then "CALHA DE BICA - PADRAO SUDECAP"
      when "19.29" then "TORRE DE BICA - PADRAO SUDECAP"
      when "19.30" then "SARJETA - PADRAO SUDECAP"
      when "19.31" then "CANALETA - PADRAO SUDECAP"
      when "19.32" then "ESCORAMENTO DESCONTINUO DE VALAS - PADRAO SUDECAP"
      when "19.33" then "ESCORAMENTO CONTINUO DE VALAS - PADRAO SUDECAP"
      when "19.50" then "ASSENTAMENTO DE MANILHA CERAMICA"
      when "19.51" then "ESTRUTURA DE ESCORAMENTO"
      when "19.52" then "POÇO DE VISITA INCL. FORNEC. DO ANEL/TAMPAO/LAJE"
      when "19.53" then "LASTRO DE PEDRA"
      when "19.56" then "TUBO DE QUEDA"
      when "19.57" then "POÇO LUMINAR INCL.ESCAV./TAMPAO E FUNDO PREMOLDADO"
      when "19.59" then "CONSTR.RAMAL ESGOTO EXT.ATE 2 M C/ MATERIAL"
      when "19.60" then "CONST.RAMAL PREDIAL EXTENSAO EXED.A 2,0M C/MATERIA"
      when "19.70" then "TUBO PVC RIG.NBR-7362/2 INCL.CONEXOES (TIGRE/EQUIVALENTE)"
      when "20"    then "PAVIMENTAÇAO"
      when "20.01" then "REGULARIZAÇAO"
      when "20.03" then "REFORÇO DO SUB-LEITO COMPACTADO EXCL.ESCAV.E CARGA"
      when "20.04" then "SUB-BASE ESTAB. GRANUL. ENERGIA PROCTOR INTERMED."
      when "20.05" then "SUB-BASE ESTAB.GRANUL., COMP. ENERG.PROCTOR MODIF."
      when "20.06" then "BASE ESTAB. GRANUL.COMPACT.ENERG.PROCTOR INTERMED."
      when "20.07" then "BASE ESTAB. GRANUL., COMP. ENERG. PROCTOR MODIF."
      when "20.08" then "BASE ESTAB. GRANUL.C/ MISTURA EM PESO PROCTOR INT."
      when "20.09" then "BASE COMPACTADA C/ EQUIP. PLACA VIBRAT. OU EQUIVALENTE"
      when "20.10" then "TRANSPORTE DE MATERIAL DE QUALQUER NATUREZA"
      when "20.11" then "IMPRIMAÇAO"
      when "20.12" then "PINTURA"
      when "20.13" then "CONCRETO BETUMINOSO USINADO A QUENTE"
      when "20.15" then "CONCRETO PRE-MISTURADO A FRIO"
      when "20.16" then "LAMA ASFALTICA COM EMULSAO RL-1C"
      when "20.17" then "REVESTIMENTO EM ALVENARIA POLIEDRICA"
      when "20.18" then "REMOÇAO E RECONSTRUÇAO REVEST.ALVENARIA POLIEDRICA"
      when "20.19" then "PAVIMENTO INTERTRAVADO EM BLOCO DE CONCRETO"
      when "20.20" then "FRESAGEM"
      when "21"    then "URBANIZAÇAO E OBRAS COMPLEMENTARES"
      when "21.03" then "MEIO FIO E CORDAO - PADRAO SUDECAP"
      when "21.04" then "REMOÇAO E REASSENTAMENTO DE MEIO-FIO"
      when "21.05" then "PASSEIOS"
      when "21.06" then "FORNEC. E LANÇAM. DE MATERIAL EM DRENO E PATIO"
      when "21.07" then "LANÇAMENTO E ESPALHAMENTO  DE MATERIAIS EM PASSEIO"
      when "21.08" then "MURO DE VEDAÇAO DE CONCRETO PREMOLD. TIPO CALHA\"V\""
      when "21.09" then "QUADRA"
      when "21.11" then "MURO DIVISA ALV.INCL.SAPATA 1:3:6 30X40CM E CHAPEU"
      when "21.12" then "CHAPEU DE MURO"
      when "21.15" then "CERCA DE MOURAO A CADA 2,5 M"
      when "21.20" then "ALAMBRADO"
      when "21.25" then "ESTRUTURA SUPORTE PARA FIXAÇAO DE ARAME FARPADO"
      when "21.29" then "BARREIRA DE SEGURANÇA DE CONCRETO"
      when "21.30" then "GRAMACAO, INCLUSIVE PLANTIO"
      when "21.31" then "PREPARO DE COVAS, EXCLUSIVE O FORNECIMENTO DA MUDA"
      when "21.32" then "FORNECIMENTO DE MATERIAL PARA PAISAGISMO:"
      when "21.33" then "FORNECIMENTO DE MUDAS"
      when "21.34" then "CERCA DE PROTEÇAO PARA ARVORES"
      when "21.40" then "LIXEIRA"
      when "40"    then "SERVICOS AUXILIARES"
      when "40.04" then "MAO DE OBRA ESPECIALIZADA"
      when "40.05" then "CONCRETO CIMENTO E CASCALHO - PREPARO"
      when "40.06" then "CONCRETO CIMENTO E CASCALHO , LANCADO EM FUNDACAO"
      when "40.07" then "CONCRETO CICLOPICO LANCADO EM FUNDACAO E ARRIMO"
      when "40.08" then "CONCRETO CONVENCIONAL BRITA 1-2 CALCAREA - PREPARO"
      when "40.09" then "CONCRETO CONVENCIONAL B1-B2 CALC., LANC. EM FUND."
      when "40.10" then "CONCRETO CONVENCIONAL BRITA CALC. LANC. EM ESTRUT."
      when "40.11" then "SOLO CIMENTO"
      when "40.12" then "CONCRETO CONVENCIONAL BRITA 1 CALCAREA - PREPARO"
      when "40.13" then "CONCRETO CONVENCIONAL B1 CALC.,LANCADO EM FUNDACAO"
      when "40.14" then "CONCRETO CONVENCIONAL B1 CALC,LANCADO EM ESTRUTURA"
      when "40.17" then "CONCRETO USINADO, BRITA CALC., LANCADO EM FUNDACAO"
      when "40.18" then "CONCRETO USINADO, BRITA CALC.,LANCADO EM ESTRUTURA"
      when "40.19" then "CONCRETO ESTRUTURAL, FORN. APLICACAO E ADENSAMENTO"
      when "40.20" then "FORMA E ESCORAMENTO"
      when "40.22" then "ACO"
      when "40.24" then "ARGAMASSA DE CIMENTO E AREIA - PREPARO"
      when "40.26" then "ARGAMASSA DE CIMENTO, AREIA E PEDRISCO - PREPARO"
      when "40.30" then "ALVENARIA"
      when "40.31" then "REVESTIMENTOS"
      when "40.32" then "MOVIMENTO DE TERRA"
      when "40.33" then "CONCRETO DE REGULARIZACAO"
      when "40.34" then "TRANSPORTE"
      when "40.37" then "CONCRETO ASFALTICO"
      when "40.39" then "TRABALHOS LACUSTRES"
      when "40.40" then "FORNECIMENTO E LANCAMENTO DE MATERIAL DRENANTE"
      when "40.41" then "MANTA DRENANTE GEOTEXTIL"
      when "40.42" then "DRENO BARBACAN"
      when "40.43" then "CORTE MECÂNICO EM CONCRETO/ASFALTO"
      when "40.60" then "SERVICOS AUXILIARES - BARRACAO DE OBRA"
      when "40.70" then "PINTURA"
      when "40.80" then "SERVIÇOS AUXILIARES - COPASA"
      when "40.85" then "TUBO CONC.SIMPLES JUNTA ELASTICA,NBR8890 CLASSE ES"
      when "40.87" then "TUBO CONC.ARMADO JUNTA ELASTICA,NBR8890 CLASSE EA2"
      when "40.88" then "REDE TUBULAR EM PVC - RIB LOC/TIGRE"
      when "41"    then "INSTALACOES DA OBRA"
      when "41.01" then "ESCRITORIOS"
      when "41.02" then "INSTALACAO PROVISORIA DE AGUA E ENERGIA"
      when "42"    then "DESPESAS FIXAS DIVERSAS"
      when "42.01" then "TRANSPORTES"
      when "42.02" then "DESPESAS E TAXAS"
      when "42.03" then "EQUIPAMENTOS COMPLEMENTARES"
      when "43"    then "SERVICOS TECNICOS"
      when "43.01" then "TOPOGRAFIA"
      when "44"    then "ADMINISTRACAO DA OBRA"
      when "44.01" then "MAO DE OBRA"
      when "45"    then "EQUIPAMENTOS"
      when "45.01" then "VEICULOS"
      when "47"    then "SERVICOS AUXILIARES DE MARCENARIA"
      when "47.01" then "PECAS PADRAO ESCOLA"
      when "47.02" then "PORTA"
      when "47.03" then "MOVEIS"
      when "48"    then "SERVICOS AUXILIARES DE SERRALHERIA"
      when "48.05" then "JANELA DE CORRER"
      when "48.32" then "MARCO DE FERRO CANTONEIRA"
      when "48.42" then "SERVICOS DIVERSOS"
      when "48.43" then "GRELHAS E GRADES"
      when "48.49" then "CANTONEIRA E MASTRO"
      when "48.70" then "SERRALHERIA - GRUPO ESCOLAR"
      when "48.72" then "SERRALHERIA - POLICLINICA"
      when "48.73" then "SERRALHERIA - VESTIARIO PADRAO"
      when "48.74" then "SERRALHERIA - UNIDADE DE SAUDE"
      when "48.76" then "SERRALHERIA - CENTRO DE SAUDE (CODEURB)"
      when "48.78" then "SERRALHERIA - CRECHE"
      when "50"    then "CUSTO HORARIO DE EQUIPAMENTO"
      when "50.01" then "ACABADORA DE ASFALTO, LAMA E VASSOURA MECANICA"
      when "50.04" then "BATE ESTACA E MARTELO"
      when "50.05" then "BETONEIRA"
      when "50.06" then "BOMBA D'AGUA E LAMA"
      when "50.10" then "CAMINHAO, CARROCERIA E CAVALO MECANICO"
      when "50.11" then "CARREGADEIRA"
      when "50.13" then "COMPACTADOR"
      when "50.14" then "COMPRESSOR E ACESSORIOS"
      when "50.16" then "DISTRIBUIDOR DE AGREGADO E BETUME"
      when "50.19" then "EQUIPAMENTO DE PERFURACAO E ROMPEDOR"
      when "50.20" then "ESCAVADEIRA E DRAGA"
      when "50.21" then "ROCADEIRA"
      when "50.25" then "GRADE DE DISCO"
      when "50.27" then "GUINDASTE"
      when "50.31" then "MAQUINA E APARELHO DE SOLDA"
      when "50.32" then "MOTONIVELADORA"
      when "50.36" then "TRATOR"
      when "50.37" then "USINA DE ASFALTO, SOLOS E CONCRETO"
      when "50.39" then "VIBRADOR"
      when "50.40" then "VEICULOS"
      when "50.41" then "EQUIPAMENTOS DE APOIO"
      when "61"    then "PESSOAL"
      when "61.11" then "ENGENHEIRO PARA ELABORACAO DE PROJETOS"
      when "61.12" then "AUXILIAR DE ENGENHARIA"
      when "61.13" then "PROJETISTA PARA ELABORACAO DE PROJETOS"
      when "61.14" then "TECNICO PARA ELABORACAO DE PROJETOS"
      when "61.15" then "DESENHISTA PARA ELABORACAO DE PROJETOS"
      when "61.16" then "SERVICOS ADMINISTRATIVOS"
      when "61.21" then "ENGENHEIRO PARA SUPERVISAO DE OBRAS"
      when "61.22" then "AUXILIAR DE ENGENHARIA"
      when "61.23" then "TECNICO PARA SUPERVISAO DE OBRAS"
      when "61.24" then "DESENHISTA PARA SUPERVISAO DE OBRAS"
      when "61.31" then "TOPOGRAFIA"
      when "61.32" then "LABORATORIO"
      when "61.33" then "INSPECAO DE OBRAS"
      when "61.34" then "AUXILIARES DE APOIO"
      when "62"    then "PROJETOS"
      when "62.01" then "PROJETOS DE EDIFICACOES"
      when "62.02" then "ANTEPROJETO"
      when "62.03" then "PROJETOS DE INFRA ESTRUTURA URBANA"
      when "62.04" then "LAUDOS TECNICOS"
      when "62.05" then "SERVICOS DE TOPOGRAFIA"
      when "62.11" then "CADASTRO"
      when "62.20" then "PROJETOS DE EDIFICACAO POR M2"
      when "62.21" then "PROJETOS DE IMPLANTACAO DE TIPOLOGIAS"
      when "62.22" then "PROJETOS DE EDIFICACOES NOVAS"
      when "62.23" then "PROJETOS DE REFORMAS"
      when "63"    then "VEICULOS E EQUIPAMENTOS"
      when "63.01" then "VEICULOS"
      when "63.20" then "NIVEL, COM COMPLEMENTOS"
      when "63.21" then "ESTAÇAO TOTAL"
      when "64"    then "SERVICOS DE GRAFICA"
      when "64.01" then "COPIA XEROGRAFICA SULFITE"
      when "64.03" then "COPIA XEROGRAFICA EM PAPEL VEGETAL"
      when "64.05" then "COPIA XEROGRAFICA EM PAPEL POLYESTER"
      when "64.07" then "XEROX SIMPLES OPACO"
      when "64.09" then "XEROX COLORIDO SULFITE"
      when "64.11" then "ENCADERNACAO"
      when "64.12" then "PLOTAGEM PRETO E BRANCO SULFITE"
      when "64.13" then "PLOTAGEM PRETO E BRACO PAPEL VEGETAL GR.90GR/CM2"
      when "64.15" then "PLOTAGEM COLORIDA SULFITE"
      when "64.17" then "PLOTAGEM COLORIDA VEGETAL"
      when "64.18" then "DIGITALIZAÇÃO DE GRANDES FORMATOS"
      when "65"    then "INVESTIGACOES GEOTECNICAS"
      when "65.01" then "SONDAGEM A PERCUSSAO D= 2 1/2\" (SPT)"
      when "65.02" then "SONDAGEM A TRADO D= 20 CM"
      when "65.03" then "SONDAGEM (OUTRAS)"
      when "65.06" then "SONDAGEM ROTATIVA D= NW"
      when "65.08" then "RETIRADA DE AMOSTRA INDEFORMADA"
      when "65.11" then "ENSAIOS"
      when "66"    then "ENSAIOS DE ASFALTO"
      when "66.01" then "ENSAIOS DE ASFALTO"
      when "67"    then "ENSAIOS DE SOLO E AGREGADO"
      when "67.01" then "ENSAIOS DE SOLO"
      when "67.02" then "ENSAIOS DE AGREGADO"
      when "68"    then "ENSAIOS DE CIMENTO, CALDA, ARGAMASSA E CONCRETO"
      when "68.01" then "ENSAIOS DE CIMENTO PORTLAND"
      when "68.02" then "ENSAIOS DE CALDA DE CIMENTO"
      when "68.03" then "ENSAIOS DE ARGAMASSA"
      when "68.04" then "ENSAIOS DE CONCRETO"
      when "69"    then "ENSAIOS DE ACO, BLOCO, MADEIRA,TELHA,TIJOLO E TUBO"
      when "69.01" then "ENSAIOS DE ACO"
      when "69.02" then "ENSAIOS DE BLOCOS DE CONCRETO"
      when "69.03" then "ENSAIOS DE BLOCOS CERAMICOS"
      when "69.04" then "ENSAIOS DE MADEIRA"
      when "69.05" then "ENSAIO DE TELHAS FRANCESAS E COLONIAIS"
      when "69.06" then "ENSAIOS DE TELHAS ONDULADAS DE CIMENTO AMIANTO"
      when "69.07" then "ENSAIOS DE TIJOLOS CERAMICOS"
      when "69.08" then "ENSAIOS DE TUBOS CERAMICOS"
    else
      self
    end
  end

  def tipo_de_composicao_orse_por_extenso
    case self
      when "1" then "OBRAS CIVIS"
      when "2" then "INFRA-ESTRUTURA"
      when "3" then "PROJETOS"
      when "4" then "Serviços Preliminares"
      when "5" then "Fundações"
      when "6" then "Estruturas"
      when "7" then "Elevações"
      when "8" then "Coberturas"
      when "9" then "Instalações Elétricas/Telefônicas/Cabeamento Estruturado"
      when "10" then "Instalações Hidráulicas"
      when "11" then "Instalações de Combate a Incêndio"
      when "12" then "Instalações Sanitárias"
      when "13" then "Esquadrias"
      when "14" then "Revestimentos de Tetos e Paredes"
      when "15" then "Louças e Metais"
      when "16" then "Pavimentação"
      when "17" then "Pinturas e Tratamentos"
      when "18" then "Instalação de Antena Coletiva"
      when "19" then "Instalação de Gás de Cozinha"
      when "20" then "Instalação de Ar Condicionado"
      when "21" then "Instalações de Gases Medicinais"
      when "22" then "Instalação de Câmaras Frigoríficas"
      when "23" then "Diversos"
      when "24" then "Serviços Auxiliares de Obras Civis"
      when "25" then "Provisório"
      when "26" then "X - Grupo Provisório de Serviços / Distribuir"
      when "27" then "Terraplenagem"
      when "28" then "Urbanismo e Sinalização"
      when "29" then "Pavimentação Rodoviária"
      when "30" then "Redes de Água e Adutoras"
      when "31" then "Estações de Tratamento e Elevatórias de Água"
      when "32" then "Poços Artesianos"
      when "33" then "Redes de Esgotos"
      when "34" then "Estação de Tratamento e Elevatórias de Esgotos Sanitários"
      when "35" then "Redes de Drenagem"
      when "36" then "Redes de Irrigação"
      when "37" then "Redes de Distribuição de Energia Elétrica  e de Iluminação Pública em Tensão Classe 35 ou"
      when "38" then "Redes de Telefonia"
      when "39" then "Contenções e Escoramentos"
      when "40" then "Esgotamentos de Água"
      when "41" then "Serviços Auxiliares de Infra-estrutura"
      when "42" then "Apoio Administrativo de Obra"
      when "43" then "Projetos Básicos e Executivos"
      when "44" then "Serviços Iniciais de Obras Civis"
      when "45" then "Demolições / Remoções"
      when "46" then "Locação de Edificações"
      when "47" then "Mobilização / Instalações Provisórias / Desmobilização"
      when "48" then "Escavações"
      when "49" then "Aterros / Reaterros / Compactações"
      when "50" then "Formas para Fundações"
      when "51" then "Alvenarias de Pedra e Concretos para Fundações"
      when "52" then "Estacas Brocas"
      when "53" then "Estacas Pré-Moldadas"
      when "54" then "Estacas Moldadas no local Tipo Strauss"
      when "55" then "Estacas Moldadas no local Tipo Franki"
      when "56" then "Estacas Metálicas"
      when "57" then "Tubulões"
      when "58" then "Camadas Reguralizadoras"
      when "59" then "Formas"
      when "60" then "Concreto Simples"
      when "61" then "Concreto Armado"
      when "62" then "Escoramento em Edificações"
      when "63" then "Armaduras Convencionais"
      when "64" then "Fios e Cordoalhas de Protensão"
      when "65" then "Estruturas Pre-Moldadas de Concreto"
      when "66" then "Alvenarias de Vedação"
      when "67" then "Elementos Vazados"
      when "68" then "Divisórias"
      when "69" then "Colunas em Alvenaria"
      when "70" then "Madeiramento"
      when "71" then "Estrutura Metálica"
      when "72" then "Telhamento"
      when "73" then "Complementos"
      when "74" then "Subsestação Transformadora Abrigada"
      when "75" then "Subestação Transformadora em Poste"
      when "76" then "Entrada em Baixa Tensão"
      when "77" then "Interligações até Quadro Geral - Eletrodutos e Conexões"
      when "78" then "Interligações até Quadro Geral - Fios e Cabos"
      when "79" then "Fusíveis, Disjuntores e Chaves"
      when "80" then "Quadros de Distribuição de Energia"
      when "81" then "Quadros de Distribuição de Telefone"
      when "82" then "Luminárias Internas"
      when "83" then "Luminárias Externas"
      when "84" then "Luminárias Industriais"
      when "85" then "Revisões e Reposições"
      when "86" then "Pontos de Suprimento de Energia Convencionais"
      when "87" then "Pontos de Suprimento de Telefone"
      when "88" then "Pontos de Suprimento de Energia para Ar Condicionado"
      when "89" then "Pontos de Suprimento de Energia para Computador"
      when "90" then "Pontos de Suprimento de Lógica"
      when "91" then "Tomadas Convencionais e Interruptores"
      when "92" then "Tomadas para Telefone"
      when "93" then "Tomadas para Ar Condicionado"
      when "94" then "Tomadas para Computadores"
      when "95" then "Tomadas para Lógica"
      when "96" then "Postes Tubulares de Ferro Galvanizado"
      when "97" then "Aparelhos, Utensílios e Equipamentos Elétricos"
      when "98" then "Pára-raios"
      when "99" then "Tubos e Conexões de Ferro Galvanizado"
      when "100" then "Tubos e Conexões de PVC Rígido Soldável"
      when "101" then "Tubos e Conexões de PVC Rígido Roscável"
      when "102" then "Tubos e Conexões de Ferro Fundido"
      when "103" then "Tubos e Conexões de Cobre Soldáveis e Roscáveis"
      when "104" then "Reservatórios"
      when "105" then "Registros e Válvulas"
      when "106" then "Equipamentos para Combate a Incêndio"
      when "107" then "Tubos e Conexões de PVC Rígido Soldável para Esgoto"
      when "108" then "Pontos de Ligação de Esgoto"
      when "109" then "Caixas de Inspeção"
      when "110" then "Fossas Sépticas"
      when "111" then "Fossas Secas"
      when "112" then "Filtros e Sumidouros"
      when "113" then "Esquadrias de Madeira"
      when "114" then "Esquadrias de Alumínio"
      when "115" then "Esquadrias de Ferro"
      when "116" then "Vidros Lisos"
      when "117" then "Vidros Tipo Fantasia"
      when "118" then "Vidros Laminados"
      when "119" then "Vidros Temperados"
      when "120" then "Vidros Aramados"
      when "121" then "Espelhos"
      when "122" then "Persianas e Cortinas"
      when "123" then "Argamassas"
      when "124" then "Azulejos e Cerâmicas"
      when "125" then "Revestimento com Pedras"
      when "126" then "Revestimentos em Laminados"
      when "127" then "Revestimentos com Mármores e Granitos"
      when "128" then "Revestimentos com Papel de Parede"
      when "129" then "Forros"
      when "130" then "Impermeabilização"
      when "131" then "Isolamento Térmico"
      when "132" then "Isolamento Acústico"
      when "133" then "Peitoris e Tampos de Balcões"
      when "134" then "Falhas em Revestimentos"
      when "135" then "Louças e Metais Sanitários"
      when "136" then "Pisos : Cimentados, em Concreto Simples, tipo Tech-Stone e de Alta Resistência"
      when "137" then "Pisos Cerâmicos"
      when "138" then "Pisos com Pedras"
      when "139" then "Pisos Sintéticos / Vinílicos"
      when "140" then "Pisos de Madeira"
      when "141" then "Pisos de Borracha"
      when "142" then "Pavimentações Externas"
      when "143" then "Soleiras e Rodapés"
      when "144" then "Latex PVA"
      when "145" then "Esmalte Sintético / Óleo"
      when "146" then "Pintura em Estrutura Metálica"
      when "147" then "Outras Pinturas"
      when "148" then "Tratamentos de Superfícies"
      when "149" then "Equipamentos e Acessórios para Antena Coletiva"
      when "150" then "Equipamentos e Acessórios para Instalações de Gás de Cozinha"
      when "151" then "Equipamentos e Acessórios para Instalação de Ar Condicionado"
      when "152" then "Fornecimento de Gases Medicinais"
      when "153" then "Redes de Distribuição de Gases"
      when "154" then "Equipamentos e Acessórios para Centrais de Suprimento e Redes de Distribuição de Gases"
      when "155" then "Equipamentos e Acessórios para Postos de Consumo"
      when "156" then "Equipamentos para Câmaras Frigoríficas"
      when "157" then "Portas Frigoríficas"
      when "158" then "Acessórios para Instalação de Câmaras Frigoríficas"
      when "159" then "Muros"
      when "160" then "Cercas"
      when "161" then "Alambrados e Gradis"
      when "162" then "Paisagismo"
      when "163" then "Urbanização de Parques e Praças"
      when "164" then "Limpeza"
      when "165" then "Andaimes"
      when "166" then "Anadimes"
      when "167" then "Mobiliário"
      when "168" then "Diversos"
      when "169" then "Execução de Rasgos em Alvenaria e Concretos para Passagem de Tubulações"
      when "170" then "Enchimento de Rasgos em Alvenaria ou Concreto"
      when "171" then "Transporte de Materiais na Obra"
      when "172" then "Provisórios"
      when "173" then "Grupo Provisório - Distribuir"
      when "174" then "Desmatamento e Limpeza"
      when "175" then "Regularização de Áreas"
      when "176" then "Escavação Manual em Área Urbana"
      when "177" then "Escavação Manual em Campo Aberto"
      when "178" then "Escavação Mecanizada em Área Urbana"
      when "179" then "Escavação Mecanizada em Campo Aberto"
      when "180" then "Carga de Material"
      when "181" then "Execução de Cortes e  Aterros"
      when "182" then "Transportes"
      when "183" then "Locação de Serviços de Terraplenagem e Acompanhamento Topográfico da Obra"
      when "184" then "Demarcação de Quadras e Lotes"
      when "185" then "Sinalização Vertical"
      when "186" then "Sinalização Horizontal"
      when "187" then "Regularização do Subleito"
      when "188" then "Reforço do Sub - Leito"
      when "189" then "Preparo de Materiais em Usina"
      when "190" then "Concreto Betuminoso - Usinagem"
      when "191" then "Sub - Base Estabilizada Granulometricamente"
      when "192" then "Sub - Base com Solo Cimento"
      when "193" then "Base Estabilizada Granulometricamente"
      when "194" then "Base com Solo-Cimento"
      when "195" then "Imprimação"
      when "196" then "Pintura de Ligação"
      when "197" then "Tratamento Superficial"
      when "198" then "Pavimentação com Concreto Betuminoso Pré-misturado a Frio"
      when "199" then "Pavimentação com Concreto Betuminoso Usinado a Quente (CBUQ)"
      when "200" then "Pavimentação com Areia-Asfalto a Quente"
      when "201" then "Pavimentação em Concreto Armado"
      when "202" then "Pavimentação em Paralepípedo ou com Peças Pré-moldadas de Concreto"
      when "203" then "Base de Macadame Hidráulico"
      when "204" then "Sarjetas"
      when "205" then "Meios-Fios e Guias"
      when "206" then "Controle Tecnológico"
      when "207" then "Areia-asfalto - Usinagem"
      when "208" then "Fornencimento de Ligantes Betuminosos"
      when "209" then "Serviços Iniciais"
      when "210" then "Desmontagem/Remoção de Tubos e Conexões"
      when "211" then "Serviços de Proteção e Segurança"
      when "212" then "Fornecimento de Tubos de PVC Junta Elástica, Ponta e Bolsa"
      when "213" then "Fornecimento de Conexões de PVC Junta Elástica"
      when "214" then "Assentamento/Montagem de Tubos e Conexões"
      when "215" then "Fornecimento de Tubos de PVC DEFOFO, Junta Elástica - PN 1MPa"
      when "216" then "Fornecimento de Conexões de PVC DEFOFO, Junta Elástica, PN 1MPa"
      when "217" then "Fornecimento de Tubos de Ferro Fundido"
      when "218" then "Fornecimento de Conexões de Ferro Fundido com Junta Elástica"
      when "219" then "Fornecimento de Conexões de Ferro Fundido com Junta Travada"
      when "220" then "Fornecimento de Conexões de Ferro Fundido com  Junta Mecânica"
      when "221" then "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 10"
      when "222" then "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 16"
      when "223" then "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 25"
      when "224" then "Fornecimento de Peças de Montagem e de Intervenção, em Ferro Fundido"
      when "225" then "Assentamento de Peças de Montagem e de Intervenção, em Ferro Fundido"
      when "226" then "Fornecimento de Tubos em  Aço"
      when "227" then "Fornecimento de Tubos de Polietileno de Alta Densidade (PEAD)"
      when "228" then "Fornecimento de Conexões de Polietileno de Alta Densidade (PEAD)"
      when "229" then "Execução de Caixas para Registros, Ventosas, Descargas e Macro-Medidores"
      when "230" then "Fornecimento de Registros"
      when "231" then "Assentamento de Registros"
      when "232" then "Fornecimento de Válvulas"
      when "233" then "Assentamento de Válvulas"
      when "234" then "Fornecimento de Macro-Medidores, Filtros para Macro-Medidores e Ventosas"
      when "235" then "Assentamento de Macro-Medidores, Filtros para Macro-Medidores e Ventosas"
      when "236" then "Blocos de Ancoragem"
      when "237" then "Chafarizes"
      when "238" then "Fornecimento de Hidrômetros"
      when "239" then "Ligações Prediais de Água"
      when "240" then "Teste Hidrostático e Desinfecção de Redes de Água e Adutoras"
      when "241" then "Cadastro Técnico e Comercial dos Consumidores"
      when "242" then "Transportes de Tubos e Conexões"
      when "243" then "Serviços Diversos"
      when "244" then "Fornecimento de Equipamentos de Medição"
      when "245" then "Assentamento de Equipamentos de Medição"
      when "246" then "Fornecimento de Dosadores e Extintores de Cal"
      when "247" then "Instalação de Dosadores e Extintores de Cal"
      when "248" then "Fornecimento de Misturadores"
      when "249" then "Instalação de Misturadores"
      when "250" then "Fornecimento de Equipamentos de Floculação"
      when "251" then "Instalação de Equipamentos de Floculação"
      when "252" then "Fornecimento de Equipamentos de Decantação"
      when "253" then "Instalação de Equipamentos de Decantação"
      when "254" then "Fornecimento de Materiais para Filtragem"
      when "255" then "Colocação de  Materiais para Filtragem"
      when "256" then "Fornecimento de Equipamentos para Desinfecção"
      when "257" then "Instalação de Equipamentos para Desinfecção"
      when "258" then "Fornecimento de Equipamentos para Estações de Tratamento e Elevatórias de Água"
      when "259" then "Instalação de Equipamentos para Estações de Tratamento e Elevatórias de Água"
      when "260" then "Fornecimento de Bombas e Válvulas de Pé"
      when "261" then "Instalação de Bombas e Válvulas de Pé"
      when "262" then "Serviços Preliminares para Execução de Poços Profundos"
      when "263" then "Perfurações"
      when "264" then "Revestimento e Proteção"
      when "265" then "Montagem"
      when "266" then "Desenvolvimento, ensaio de vazão, entrega do poço"
      when "267" then "Locação e Acompanhamento Topográfico de Redes de Esgotos"
      when "268" then "Lastros, Lajes e Berços"
      when "269" then "Fornecimento de Tubos de PVC Junta Elástica para Redes de Esgotos Sanitários, Ponta e Bolsa"
      when "270" then "Assentamento de Tubos de PVC Junta Elástica para Redes de Esgotos Sanitários, Ponta e Bolsa"
      when "271" then "Fornecimento de Conexões de PVC Junta Elástica para Redes de Esgoto"
      when "272" then "Assentamento de Conexões de PVC Junta Elástica para Redes de Esgotos Sanitários"
      when "273" then "Fornecimento de Tubo de Concreto para Redes de Esgotos Sanitários"
      when "274" then "Assentamento de Tubo de Concreto para Redes de Esgotos Sanitários"
      when "275" then "Poços de Visita para Redes de Esgoto"
      when "276" then "Fornecimento de Tampões para Poços de Visita e Caixas de Inspeção"
      when "277" then "Ligações Prediais de Esgotos"
      when "278" then "Cadastro de Redes Urbanas de Esgotos"
      when "279" then "Fornecimento de Bombas para Estações de Tratamento e Elevatórias de Esgotos"
      when "280" then "Instalação de Bombas em Estações de Tratamento e Elevatórias de Esgotos"
      when "281" then "Fornecimento de Equipamentos para Estações de Tratamento e Elevatórias de Esgotos Sanitários"
      when "282" then "Instalação de Equipamentos em Estações de Tratamento e Elevatórias de Esgotos Sanitários"
      when "283" then "Serviços Preliminares para Execução de Redes de Drenagem"
      when "284" then "Entradas e Saídas D'agua"
      when "285" then "Bueiros Tubulares e Celulares"
      when "286" then "Poços de Visita para Redes de Drenagem"
      when "287" then "Estruturas Complementares"
      when "288" then "Drenos"
      when "289" then "Caixas de Passagem em alvenaria de tijolos maciços"
      when "290" then "Bocas de Lobo"
      when "291" then "Cadastro de Redes de Drenagem"
      when "292" then "Limpeza e Desobstrução de Bueiros"
      when "293" then "Locação da Rede de Irrigação e Acompanhamento Topográfico da Obra"
      when "294" then "Fornecimento de Tubo de PVC PEAD para Redes de Irrigação"
      when "295" then "Assentamernto de Tubo de PVC PEAD para Redes de Irrigação"
      when "296" then "Fornecimento de Tubo de Alumínio, Tipo Engate Rápido, para Redes de Irrigação"
      when "297" then "Assentamento de Tubo de Alumínio, Tipo Engate Rápido, para Redes de Irrigação"
      when "298" then "Fornecimento de Tubos de PVC Engate Rápido"
      when "299" then "Assentamento de Tubos de PVC para Micro-Aspersão"
      when "300" then "Fornecimento de Hidrantes, Aspersores e Acessórios para Irrigação"
      when "301" then "Assentamento de Hidrantes, Aspersores e Acessórios para Irrigação"
      when "302" then "Serviços Preliminares para Execução de Redes de Energia Elétrica e de Iluminação Pública"
      when "303" then "Fornecimento de Materiais para Redes de Energia Elétrica e Iluminação"
      when "304" then "Serviços em Redes de Energia Elétrica e Iluminação"
      when "305" then "Cadastro de Redes de Distribuição de Energia"
      when "306" then "Serviços Preliminares para Execução de Redes de Telefonia"
      when "307" then "Dutos e Sub-Dutos"
      when "308" then "Caixas"
      when "309" then "Cadastro de Redes de Telefonia"
      when "310" then "Gabiões"
      when "311" then "Muros de Arrimo"
      when "312" then "Cortinas de Contenção"
      when "313" then "Enrocamentos"
      when "314" then "Mantas Geotéxteis"
      when "315" then "Concreto e Argamassas Projetados e Injetados"
      when "316" then "Ensecadeiras"
      when "317" then "Escoramentos de Valas, Cavas e Poços"
      when "318" then "Cimbramentos de Grandes Estruturas"
      when "319" then "Bombeamento Direto"
      when "320" then "Equipes de Montagem e Construção"
      when "321" then "Manuseio de Equipamentos, Peças e Conexões"
      when "322" then "Nivelamento e Fixação de Equipamentos, Peças e Conexões"
      when "323" then "Execução de Juntas Flangeadas em Ferro Fundido"
      when "324" then "Execução de Junta Elástica em Ferro Fundido"
      when "325" then "Execução de Junta Mecânica em Ferro Fundido"
      when "326" then "Montagem de Quadros de Comando para Equipamentos"
      when "327" then "Vale Tranporte"
      when "328" then "Alimentação"
      when "329" then "Equipamentos de Proteção Individual (EPI)"
      when "330" then "Procedimentos para Elaboração"
      when "331" then "Conversão InfoWOrca"
      when "333" then "Estações Elevatórias e Estações de Tratamento de Esgotos"
      when "334" then "Pessoal Técnico e Administrativo para Elaboração de Projetos e Gerenciamento de Obras"
      when "335" then "Remoção de tubos/conexões em redes coletoras de esgoto"
      when "336" then "Esquadrias de PVC"
      when "337" then "Novo Item"
      when "338" then "Restauro"
      when "339" then "Ferragens"
      when "340" then "Reparo, Proteção e Reforço de Estrutura de Concreto Armado"
      when "341" then "Junta de dilatação"
      when "342" then "Novo Item"
    else
      self
    end
  end

  def tipo_de_composicao_sbc_por_extenso
    case self
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
      self
    end
  end

  def tipo_de_composicao_sco_por_extenso
    case self
      when "AD" then "Administracao Local, Mobilizacao, Desmobilizacao e Apoio Tecnologico"
      when "AL" then "Alvenarias e Paredes Divisorias"
      when "AP" then "Aparelhos Hidraulicos, Sanitarios, Eletricos, Mecanicos e Esportivos"
      when "BP" then "Pavimentacao"
      when "CE" then "Consultoria Especializada"
      when "CI" then "Coberturas, Isolamentos e Impermeabilizacoes"
      when "CO" then "Canteiro de Obras"
      when "DR" then "Galerias, Drenos e Conexos"
      when "EQ" then "Equipamentos"
      when "ES" then "Esquadrias"
      when "ET" then "Estruturas"
      when "FD" then "Fundacoes"
      when "IP" then "Iluminacao Publica"
      when "IT" then "Instalacoes Eletricas, Hidraulicas, Sanitarias e Mecanicas"
      when "MP" then "Manutencao Preventiva e Corretiva"
      when "MT" then "Movimento de Terra"
      when "PJ" then "Servicos de Parques e Jardins"
      when "PT" then "Pinturas"
      when "RV" then "Revestimentos"
      when "SC" then "Servicos Complementares"
      when "SE" then "Servicos de Escritorio, Laboratorio e Campo"
      when "ST" then "Servicos de Engenharia de Trafego"
      when "TC" then "Transporte, Carga e Descarga"
    else
      self
    end
  end

  def tipo_de_composicao_fde_por_extenso
    case self
      when "01"    then "Servicos preliminares"
      when "01.01" then "Limpeza do terreno"
      when "01.02" then "Movimento de terra manual"
      when "01.03" then "Movimento de terra mecanizado"
      when "01.04" then "Escoramento de terra"
      when "01.05" then "Escavacao manual em terra"
      when "01.06" then "Apiloamento e aterro de cavas"
      when "01.07" then "Lastro de pedra britada ou de concreto simples"
      when "01.08" then "Drenagem do terreno"
      when "01.10" then "Locação de obra"
      when "01.50" then "Demolicoes"
      when "01.60" then "Retiradas"
      when "01.70" then "Recolocacoes"
      when "01.80" then "Conservacao - servicos preliminares"
      when "02"    then "Infra estrutura"
      when "02.01" then "Escavacao"
      when "02.02" then "Fundacao profunda"
      when "02.03" then "Forma"
      when "02.04" then "Armadura"
      when "02.05" then "Concreto"
      when "02.06" then "Embasamento"
      when "02.07" then "Impermeabilizacoes"
      when "02.50" then "Demolicoes"
      when "02.60" then "Retiradas"
      when "02.70" then "Recolocacoes"
      when "02.80" then "Conservacao - infra estrutura"
      when "03"    then "Super estrutura"
      when "03.01" then "Forma"
      when "03.02" then "Armadura"
      when "03.03" then "Concreto"
      when "03.04" then "Estrutura metalica"
      when "03.05" then "Estrutura de madeira"
      when "03.50" then "Demolicoes"
      when "03.60" then "Retiradas"
      when "03.70" then "Recolocacoes"
      when "03.80" then "Conservacao - super estrutura"
      when "04"    then "Alvenaria e outros elementos divisorios"
      when "04.01" then "Alvenaria"
      when "04.02" then "Elementos vazados"
      when "04.03" then "Placas divisorias"
      when "04.50" then "Demolicoes"
      when "04.60" then "Retiradas"
      when "04.70" then "Recolocacao - alvenaria e outros elementos divisorios"
      when "04.80" then "Conservacao - alvenaria e outros elementos divisorios"
      when "05"    then "Elementos de madeira/componentes especiais"
      when "05.01" then "Portas/batentes/ferragens"
      when "05.02" then "Janelas"
      when "05.03" then "Ferragens"
      when "05.04" then "Quadro negro / quadros de aviso"
      when "05.05" then "Outros componentes padronizados"
      when "05.06" then "Outros componentes"
      when "05.50" then "Demolicoes"
      when "05.60" then "Retiradas"
      when "05.70" then "Recolocacao - elementos de madeira/componentes especiais"
      when "05.80" then "Conservacao - elementos de madeira/componentes especiais - parte 1"
      when "05.81" then "Conservacao - elementos de madeira/componentes especiais - parte 2"
      when "05.82" then "Conservacao - elementos de madeira/componentes especiais - parte 3"
      when "06"    then "Elementos metalicos/componentes especiais"
      when "06.01" then "Esquadrias metalicas"
      when "06.02" then "Portas"
      when "06.03" then "Outros elementos metalicos"
      when "06.50" then "Demolicoes"
      when "06.60" then "Retiradas"
      when "06.70" then "Recolocacao - elementos metalicos/componentes especiais"
      when "06.80" then "Conservacao - elementos metalicos/componentes especiais"
      when "07"    then "Cobertura"
      when "07.01" then "Estrutura de cobertura em madeira de lei"
      when "07.02" then "Estrutura de cobertura metalica"
      when "07.03" then "Cobertura"
      when "07.04" then "Pecas para cobertura"
      when "07.05" then "Fechamentos / vedacoes / pecas para cobertura"
      when "07.50" then "Demolicoes"
      when "07.60" then "Retiradas"
      when "07.70" then "Recolocacao"
      when "07.80" then "Conservacao - cobertura"
      when "08"    then "Instalacoes hidraulicas"
      when "08.01" then "Cavalete e abrigo"
      when "08.02" then "Abrigo e rede de gas"
      when "08.03" then "Rede de agua fria: tubulacoes"
      when "08.04" then "Rede de agua fria: demais servicos"
      when "08.05" then "Rede de agua quente: tubulacoes"
      when "08.06" then "Rede de agua quente: demais servicos"
      when "08.07" then "Combate a incendio : tubulacoes"
      when "08.08" then "Combate a incendio : demais serviços"
      when "08.09" then "Rede de esgoto: tubulacoes"
      when "08.10" then "Rede de esgoto: demais servicos"
      when "08.11" then "Rede de aguas pluviais: tubulacoes"
      when "08.12" then "Rede de aguas pluviais: demais servicos"
      when "08.13" then "Reservatorio: instalacoes - tubulacoes"
      when "08.14" then "Reservatorio: instalacoes - demais servicos"
      when "08.15" then "Bebedouros,lavatorios e mictorios padronizados"
      when "08.16" then "Loucas"
      when "08.17" then "Aparelhos e metais"
      when "08.50" then "Demolicoes"
      when "08.60" then "Retiradas"
      when "08.70" then "Recolocacao - instalacoes hidraulicas"
      when "08.80" then "Conservacao - rede de gas e agua fria"
      when "08.82" then "Conservacao - rede de esgoto e aguas pluviais"
      when "08.84" then "Conservacao - aparelhos e metais"
      when "08.86" then "Conservacao - tratamento de despejos sanitarios"
      when "09"    then "Instalacoes eletricas"
      when "09.01" then "Ligacoes em tensao primaria - poste/cabine de medicao e transformacao"
      when "09.02" then "Entrada em baixa tensao"
      when "09.03" then "Entrada: interligacao ao quadro geral"
      when "09.04" then "Quadro geral"
      when "09.05" then "Rede de baixa tensao: duto/quadros parciais luz/quadros telefone"
      when "09.06" then "Rede de baixa tensao: caixas de passagem"
      when "09.07" then "Rede de baixa tensao: enfiacao"
      when "09.08" then "Pontos de: interruptores e tomadas"
      when "09.09" then "Luminarias internas"
      when "09.10" then "Centro de luz"
      when "09.11" then "Iluminacao externa"
      when "09.12" then "Aparelhos eletricos"
      when "09.13" then "Para raios"
      when "09.50" then "Demolicoes - alta tensao"
      when "09.52" then "Demolicoes - baixa tensao"
      when "09.54" then "Demolicoes - aparelhos e equipamentos"
      when "09.56" then "Demolicoes - para raios e aterramento"
      when "09.60" then "Retiradas - alta tensao"
      when "09.62" then "Retiradas - baixa tensao"
      when "09.64" then "Retiradas - aparelhos e equipamentos"
      when "09.66" then "Retiradas - para raios e aterramento"
      when "09.70" then "Recolocacao - alta tensao"
      when "09.72" then "Recolocacoes - baixa tensao"
      when "09.74" then "Recolocacoes - aparelhos e equipamentos"
      when "09.76" then "Recolocacoes para-raios e aterramento"
      when "09.80" then "Conservacao - alta tensao"
      when "09.82" then "Conservacao - baixa tensao"
      when "09.83" then "Conservacao - baixa tensao"
      when "09.84" then "Conservacao - aparelhos e equipamentos"
      when "09.85" then "Conservacao - aparelhos e equipamentos"
      when "09.86" then "Conservacao - para-raios e aterramentos"
      when "10"    then "Forro"
      when "10.01" then "Forro"
      when "10.50" then "Demolicoes"
      when "10.60" then "Retiradas"
      when "10.70" then "Recolocacao - forros"
      when "10.80" then "Conservacao - forros"
      when "11"    then "Impermeabilizacoes / juntas de dilatacao"
      when "11.01" then "Impermeabilizacoes: subsolos e baldrames"
      when "11.02" then "Impermeabilizacoes: lajes, calhas, marquises"
      when "11.03" then "Impermeabilizacoes: reservatorios d'agua"
      when "11.04" then "Juntas de dilatacao"
      when "11.50" then "Demolicoes"
      when "11.60" then "Retiradas"
      when "11.70" then "Recolocacao - impermeabilizacoes/juntas de dilatacao"
      when "11.80" then "Conservacao - impermeabilizacao/juntas de dilatacao"
      when "12"    then "Revestimentos: teto e parede"
      when "12.01" then "Revestimento de teto"
      when "12.02" then "Revestimento de paredes internas"
      when "12.04" then "Revestimento de paredes externas"
      when "12.50" then "Demolicoes"
      when "12.60" then "Retiradas"
      when "12.70" then "Recolocacao - revestimentos de forro e parede"
      when "12.80" then "Conservacao - revestimentos teto e parede"
      when "13"    then "Pisos internos / rodapes / peitoris"
      when "13.01" then "Lastro para pisos e enchimento de rebaixos de lajes"
      when "13.02" then "Revestimento de pisos"
      when "13.03" then "Revestimento de pisos / pedras naturais"
      when "13.04" then "Revestimento de degraus"
      when "13.05" then "Revestimento de rodapes"
      when "13.06" then "Revestimento de soleiras"
      when "13.07" then "Revestimento de peitoris"
      when "13.50" then "Demolicoes"
      when "13.60" then "Retiradas"
      when "13.70" then "Recolocacao - pisos/rodapes/peitoris"
      when "13.80" then "Conservacao - pisos / rodapes / peitoris"
      when "14"    then "Vidros"
      when "14.01" then "Vidros"
      when "14.02" then "Espelhos"
      when "14.60" then "Retiradas"
      when "14.70" then "Recolocacao"
      when "14.80" then "Conservacao - vidros"
      when "15"    then "Pintura"
      when "15.01" then "Estrutura"
      when "15.02" then "Forros / paredes internas"
      when "15.03" then "Esquadrias"
      when "15.04" then "Externa"
      when "15.50" then "Remocoes"
      when "15.80" then "Conservacao - pintura"
      when "16"    then "Servicos complementares"
      when "16.01" then "Fecho:muros/alambrados/portoes"
      when "16.02" then "Pisos"
      when "16.03" then "Gramados/paisagismo"
      when "16.04" then "Quadra de esportes"
      when "16.05" then "Águas pluviais e drenagem de acabamento"
      when "16.06" then "Complementos externos/canteiro de obra/alambrado"
      when "16.07" then "Area externa : recreacao"
      when "16.08" then "Rede e tratamento de esgoto"
      when "16.09" then "Poco absorvente"
      when "16.10" then "Poco de agua potavel"
      when "16.11" then "Limpeza final"
      when "16.13" then "Muros de arrimo - servicos em terra"
      when "16.14" then "Muros de arrimo - concreto armado"
      when "16.15" then "Muros de arrimo - outros servicos"
      when "16.18" then "Servicos complementares - civil"
      when "16.19" then "Servicos complementares - hidraulica"
      when "16.20" then "Servicos complementares - eletrica"
      when "16.25" then "Salas de emergência em aço"
      when "16.30" then "Servicos de recuperacao estrutural - servicos preliminares"
      when "16.31" then "Servicos de recuperacao estrutural - reforco de fundacoes"
      when "16.32" then "Servicos de recuperacao estrutural"
      when "16.33" then "Servicos de tratamento protetor do concreto aparente"
      when "16.34" then "Servicos preliminares"
      when "16.35" then "Procedimentos para preparo e limpeza do substrato"
      when "16.36" then "Reparos supercificiais localizados"
      when "16.37" then "Reparos superficiais em grandes areas"
      when "16.38" then "Reparos em juntas de movimentacao"
      when "16.39" then "Reparos profundos em estruturas"
      when "16.40" then "Reparo de armaduras corroidas por acao de cloretos"
      when "16.41" then "Reforcos estruturais para reconstituicao da armadura"
      when "16.42" then "Reparos estruturais por injecao de graute base de epoxi"
      when "16.43" then "Furos em concreto"
      when "16.44" then "Fornecimento e colocacao de chumbadores quimicos"
      when "16.45" then "Fornecimento e colocacao de chumbadores expansiveis"
      when "16.46" then "Ancoragem de barras de espera"
      when "16.47" then "Preparacao de pontes de aderencia"
      when "16.48" then "Preparacao e conservacao de superficies de concreto / aco"
      when "16.49" then "Servicos especiais para estrutura pre-moldada"
      when "16.50" then "Demolicao-servicos complementares"
      when "16.80" then "Conservacao - servicos complementares"
      when "16.85" then "Poco tubular profundo: perfuracao e equipamentos"
    else
      self
    end
  end

  def tipo_de_composicao_emop_por_extenso
    case self
      when "01" then "SERVIÇOS DE ESCRITÓRIO, LABORATÓRIO E CAMPO"
      when "02" then "CANTEIRO DE OBRA"
      when "03" then "MOVIMENTO DE TERRA"
      when "04" then "TRANSPORTES"
      when "05" then "SERVICOS COMPLEMENTARES"
      when "06" then "GALERIAS, DRENOS E CONEXOS"
      when "07" then "ARGAMASSAS, INJEÇÕES E CONSOLIDAÇÕES"
      when "08" then "BASES E PAVIMENTOS"
      when "09" then "SERVIÇOS DE PARQUES E JARDINS"
      when "10" then "FUNDAÇÕES "
      when "11" then "ESTRUTURAS"
      when "12" then "ALVENARIAS E DIVISÓRIAS"
      when "13" then "REVESTIMENTO DE PAREDES, TETOS E PISOS"
      when "14" then "ESQUADRIAS DE PVC, FERRO, ALUMÍNIO OU MADEIRA , VIDRAÇAS E FERRAGENS"
      when "15" then "INSTALAÇÕES ELÉTRICAS, HIDRÁULICAS, SANITÁRIAS E MECÂNICAS"
      when "16" then "COBERTURA, ISOLAMENTOS E IMPERMEABILIZAÇÕES"
      when "17" then "PINTURAS"
      when "18" then "APARELHOS HIDRÁULICOS, SANITÁRIOS, ELÉTRICOS, MECÂNICOS E ESPORTIVOS"
      when "19" then "ALUGUEL DE EQUIPAMENTOS"
      when "20" then "CUSTOS RODOVIÁRIOS"
      when "21" then "ILUMINAÇÃO PÚBLICA"
      when "22" then "REFLORESTAMENTO E EXPLORAÇÃO FLORESTAL"
    else
      self
    end
  end

  def tipo_de_composicao_cpos_por_extenso
    case self
      when "01"    then "SERVIÇO TÉCNICO ESPECIALIZADO"
      when "01.02" then "Parecer técnico"
      when "01.06" then "Projeto de instalações elétricas"
      when "01.17" then "Projeto executivo"
      when "01.20" then "Levantamento topográfico e geofísico"
      when "01.21" then "Estudo geotécnico (sondagem)"
      when "01.23" then "Tratamento, recuperação e trabalhos especiais em concreto"
      when "01.27" then "Estudos e programas ambientais"
      when "01.28" then "Poço profundo."
      when "02"    then "INÍCIO, APOIO E ADMINISTRAÇÃO DA OBRA"
      when "02.01" then "Construção provisória"
      when "02.02" then "Container"
      when "02.03" then "Tapume, vedação e proteções diversas"
      when "02.05" then "Andaimes e balancins"
      when "02.06" then "Alocação de equipe, equipamento e ferramental"
      when "02.08" then "Sinalização de obra"
      when "02.09" then "Limpeza de terreno"
      when "02.10" then "Locação de obra"
      when "03"    then "DEMOLIÇÃO SEM REAPROVEITAMENTO"
      when "03.01" then "Demolição de concreto, lastro, mistura e afins"
      when "03.02" then "Demolição de alvenaria"
      when "03.03" then "Demolição de revestimento em massa"
      when "03.04" then "Demolição de revestimento cerâmico e ladrilho hidráulico"
      when "03.05" then "Demolição de revestimento sintético"
      when "03.06" then "Demolição de revestimento em pedra e blocos maciços"
      when "03.07" then "Demolição de revestimento asfáltico"
      when "03.08" then "Demolição de forro"
      when "03.09" then "Demolição de impermeabilização e afins"
      when "03.10" then "Remoção pintura"
      when "04"    then "RETIRADA COM PROVÁVEL REAPROVEITAMENTO"
      when "04.01" then "Retirada de fechamento e elemento divisor"
      when "04.02" then "Retirada de elementos de estrutura (concreto, ferro, alumínio e madeira)"
      when "04.03" then "Retirada de telhamento e proteção"
      when "04.04" then "Retirada de revestimento em pedra e blocos maciços"
      when "04.05" then "Retirada de revestimentos em madeira"
      when "04.06" then "Retirada de revestimentos sintéticos e metálicos"
      when "04.07" then "Retirada de forro, brises e fachadas"
      when "04.08" then "Retirada de esquadria e elemento de madeira"
      when "04.09" then "Retirada de esquadria e elementos metálicos"
      when "04.10" then "Retirada de ferragens e acessórios para esquadrias"
      when "04.11" then "Retirada de aparelhos, metais sanitários e registro"
      when "04.12" then "Retirada de aparelhos elétricos e hidráulicos"
      when "04.13" then "Retirada de impermeabilização e afins"
      when "04.14" then "Retirada de vidro"
      when "04.17" then "Retirada em instalação elétrica - letra A até B"
      when "04.18" then "Retirada em instalação elétrica - letra C"
      when "04.19" then "Retirada em instalação elétrica - letra D até I"
      when "04.20" then "Retirada em instalação elétrica - letra J até N"
      when "04.21" then "Retirada em instalação elétrica - letra O até S"
      when "04.22" then "Retirada em instalação elétrica - letra T até o final"
      when "04.30" then "Retirada em instalação hidráulica"
      when "04.31" then "Retirada em instalação de combate a incêndio"
      when "04.35" then "Retirada de sistema e equipamento de conforto mecânico"
      when "04.40" then "Retiradas diversas de peças pré-moldadas"
      when "05"    then "TRANSPORTE E MOVIMENTAÇÃO, DENTRO E FORA DA OBRA"
      when "05.04" then "Transporte de material solto"
      when "05.07" then "Transporte comercial, carreteiro e aluguel"
      when "05.08" then "Transporte mecanizado de material solto"
      when "05.10" then "Transporte mecanizado de solo"
      when "06"    then "SERVIÇO EM SOLO E ROCHA, MANUAL"
      when "06.01" then "Escavação manual em campo aberto de solo, exceto rocha"
      when "06.02" then "Escavação manual em valas e buracos de solo, exceto rocha"
      when "06.11" then "Reaterro manual sem fornecimento de material"
      when "06.12" then "Aterro manual sem fornecimento de material"
      when "06.14" then "Carga / carregamento e descarga manual"
      when "07"    then "SERVIÇO EM SOLO E ROCHA, MECANIZADO"
      when "07.01" then "Escavação ou corte mecanizados em campo aberto de solo, exceto rocha"
      when "07.02" then "Escavação mecanizada de valas e buracos em solo, exceto rocha"
      when "07.05" then "Escavação mecanizada em solo brejoso ou turfa"
      when "07.06" then "Escavação ou carga mecanizada em campo aberto"
      when "07.10" then "Apiloamento e nivelamento mecanizado de solo"
      when "07.11" then "Reaterro mecanizado sem fornecimento de material"
      when "07.12" then "Aterro mecanizado sem fornecimento de material"
      when "08"    then "ESCORAMENTO, CONTENÇÃO E DRENAGEM"
      when "08.01" then "Escoramento"
      when "08.02" then "Cimbramento"
      when "08.03" then "Descimbramento"
      when "08.05" then "Mantas, filtros e drenos"
      when "08.06" then "Barbacãs"
      when "08.07" then "Esgotamento"
      when "08.10" then "Contenção"
      when "09"    then "FORMA"
      when "09.01" then "Forma em tábua"
      when "09.02" then "Forma em madeira compensada"
      when "09.04" then "Forma em papelão"
      when "09.07" then "Forma em polipropileno"
      when "10"    then "ARMADURA E CORDOALHA ESTRUTURAL"
      when "10.01" then "Armadura em barra"
      when "10.02" then "Armadura em tela"
      when "11"    then "CONCRETO, MASSA E LASTRO"
      when "11.01" then "Concreto usinado com controle fck - fornecimento do material"
      when "11.02" then "Concreto usinado não estrutural - fornecimento do material"
      when "11.03" then "Concreto executado no local com controle fck - fornecimento do material"
      when "11.04" then "Concreto não estrutural executado no local - fornecimento do material"
      when "11.05" then "Concreto e argamassa especial"
      when "11.16" then "Lançamento e aplicação"
      when "11.18" then "Lastros e enchimentos"
      when "11.20" then "Reparos, conservações e complementos - GRUPO 11"
      when "12"    then "FUNDAÇÃO PROFUNDA"
      when "12.01" then "Broca"
      when "12.04" then "Estaca pré-moldada de concreto"
      when "12.05" then "Estaca escavada mecanicamente"
      when "12.06" then "Estaca tipo STRAUSS"
      when "12.07" then "Estaca tipo RAIZ"
      when "12.09" then "Tubulão"
      when "12.12" then "Estaca hélice contínua"
      when "12.14" then "Estaca escavada com injeção ou microestada"
      when "13"    then "LAJE E PAINEL DE FECHAMENTO PRÉ-FABRICADOS"
      when "13.01" then "Laje pré-fabricada mista em vigotas treliçadas e lajotas"
      when "13.02" then "Laje pré-fabricada mista em vigotas protendidas e lajotas"
      when "13.03" then "Laje pré-fabricada em painel protendido"
      when "13.05" then "Pré-laje"
      when "14"    then "ALVENARIA E ELEMENTO DIVISOR"
      when "14.01" then "Alvenaria de fundação (embasamento)"
      when "14.02" then "Alvenaria com tijolo maciço comum ou especial"
      when "14.03" then "Alvenaria com tijolo laminado aparente"
      when "14.04" then "Alvenaria com bloco cerâmico de vedação"
      when "14.05" then "Alvenaria com bloco cerâmico estrutural"
      when "14.10" then "Alvenaria com bloco de concreto de vedação"
      when "14.11" then "Alvenaria com bloco de concreto estrutural"
      when "14.15" then "Alvenaria de concreto celular ou sílico calcário"
      when "14.20" then "Peças moldadas no local (vergas, pilaretes,etc.)"
      when "14.25" then "Alvenaria e fechamento com vidro"
      when "14.28" then "Elementos vazados (concreto, cerâmica e vidros)"
      when "14.30" then "Divisória e fechamento"
      when "14.31" then "Divisória e fechamento."
      when "14.40" then "Reparos, conservações e complementos - GRUPO 14"
      when "15"    then "ESTRUTURA EM MADEIRA, FERRO, ALUMÍNIO E CONCRETO"
      when "15.01" then "Estrutura em madeira para cobertura"
      when "15.03" then "Estrutura em aço"
      when "15.05" then "Estrutura pré-fabricada de concreto"
      when "15.20" then "Reparos, conservações e complementos - GRUPO 15"
      when "16"    then "TELHAMENTO"
      when "16.02" then "Telhamento em barro"
      when "16.03" then "Telhamento em cimento reforçado com fio sintético (CRFS)"
      when "16.10" then "Telhamento em madeira, ou fibra vegetal"
      when "16.12" then "Telhamento metálico comum"
      when "16.13" then "Telhamento metálico especial"
      when "16.16" then "Telhamento em material sintético"
      when "16.20" then "Telhamento em vidro"
      when "16.30" then "Domos"
      when "16.32" then "Painel, chapas e fechamento"
      when "16.33" then "Calhas e rufos"
      when "16.40" then "Reparos, conservações e complementos - GRUPO 16"
      when "17"    then "REVESTIMENTO EM MASSA E OU FUNDIDO NO LOCAL"
      when "17.01" then "Regularização de base"
      when "17.02" then "Revestimento em argamassa"
      when "17.03" then "Revestimento em cimentado"
      when "17.04" then "Revestimento em gesso"
      when "17.05" then "Revestimento em concreto"
      when "17.10" then "Revestimento em granilite fundido no local"
      when "17.12" then "Revestimento industrial fundido no local"
      when "17.20" then "Revestimento especial fundido no local"
      when "17.40" then "Reparos e conservações em massa e concreto - GRUPO 17"
      when "18"    then "REVESTIMENTO CERÂMICO"
      when "18.05" then "Plaquetas laminadas para revestimentos"
      when "18.06" then "Pisos em placas cerâmicas esmaltadas prensadas"
      when "18.07" then "Pisos em placas cerâmicas não esmaltadas extrudadas"
      when "18.08" then "Revestimento em porcelanato"
      when "18.11" then "Revestimentos em placas cerâmicas esmaltadas prensadas"
      when "18.12" then "Revestimentos em pastilhas e mosaicos"
      when "18.13" then "Revestimento em placas cerâmicas não esmaltadas extrudadas"
      when "19"    then "REVESTIMENTO EM PEDRA"
      when "19.01" then "Granito"
      when "19.02" then "Mármore"
      when "19.03" then "Pedra"
      when "19.20" then "Reparos, conservações e complementos - GRUPO 19"
      when "20"    then "REVESTIMENTO EM MADEIRA"
      when "20.01" then "Lambris de madeira"
      when "20.03" then "Soalho de madeira"
      when "20.04" then "Tacos"
      when "20.08" then "Revestimentos em madeira"
      when "20.10" then "Rodapé de madeira"
      when "20.20" then "Reparos, conservações e complementos - GRUPO 20"
      when "21"    then "REVESTIMENTOS SINTÉTICOS E METÁLICOS"
      when "21.01" then "Revestimento em borracha"
      when "21.02" then "Revestimento vinílico"
      when "21.03" then "Revestimento metálico"
      when "21.04" then "Forração e carpete"
      when "21.05" then "Revestimento em cimento reforçado com fio sintético (CRFS)"
      when "21.06" then "Revestimento em plástico"
      when "21.07" then "Revestimento sintético"
      when "21.10" then "Rodapé sintético"
      when "21.11" then "Degrau sintético"
      when "21.20" then "Reparos, conservações e complementos - GRUPO 21"
      when "22"    then "FORRO, BRISE E FACHADA"
      when "22.01" then "Forro de madeira"
      when "22.02" then "Forro de gesso"
      when "22.03" then "Forro sintético"
      when "22.04" then "Forro metálico"
      when "22.06" then "Brise-soléil"
      when "22.20" then "Reparos, conservações e complementos - GRUPO 22"
      when "23"    then "ESQUADRIA, MARCENARIA E ELEMENTO EM MADEIRA"
      when "23.01" then "Janela e veneziana em madeira"
      when "23.02" then "Porta macho / fêmea montada com batente"
      when "23.04" then "Porta lisa laminada montada com batente"
      when "23.08" then "Marcenaria em geral"
      when "23.09" then "Porta lisa comum montada com batente."
      when "23.11" then "Porta lisa para acabamento em verniz montada com batente"
      when "23.20" then "Reparos, conservações e complementos - GRUPO 23"
      when "24"    then "ESQUADRIA, SERRALHERIA E ELEMENTO EM FERRO"
      when "24.01" then "Caixilho em ferro"
      when "24.02" then "Portas, portões e gradis"
      when "24.03" then "Elementos em ferro"
      when "24.04" then "Esquadria, serralheria de segurança"
      when "24.06" then "Esquadria, serralheria e elemento em ferro."
      when "24.07" then "Portas, portões e gradis."
      when "24.08" then "Esquadria, serralheria e elemento em aço inoxidável"
      when "24.20" then "Reparos, conservações e complementos - GRUPO 24"
      when "25"    then "ESQUADRIA, SERRALHERIA E ELEMENTO EM ALUMÍNIO"
      when "25.01" then "Caixilho em alumínio"
      when "25.02" then "Porta em alumínio"
      when "25.03" then "Elementos em alumínio"
      when "25.20" then "Reparos, conservações e complementos - GRUPO 25"
      when "26"    then "ESQUADRIA E ELEMENTO EM VIDRO"
      when "26.01" then "Vidro comum e laminado"
      when "26.02" then "Vidros temperados"
      when "26.03" then "Vidros especiais"
      when "26.04" then "Espelhos"
      when "26.20" then "Reparos, conservações e complementos - GRUPO 26"
      when "27"    then "ESQUADRIA E ELEMENTO EM MATERIAL ESPECIAL"
      when "27.02" then "Policarbonato"
      when "27.03" then "Chapa de fibra de vidro"
      when "27.04" then "PVC"
      when "28"    then "FERRAGEM COMPLEMENTAR PARA ESQUADRIAS"
      when "28.01" then "Ferragem para porta"
      when "28.05" then "Cadeado"
      when "28.20" then "Reparos, conservações e complementos - GRUPO 28"
      when "29"    then "INSERTE METÁLICO"
      when "29.01" then "Cantoneira"
      when "29.03" then "Cabos e cordoalhas"
      when "29.20" then "Reparos, conservações e complementos - GRUPO 29"
      when "30"    then "GRUPO 30 - BARRA DE APOIO"
      when "30.01" then "Barra de apoio"
      when "30.03" then "Aparelhos elétricos, hidráulicos e a gás"
      when "30.04" then "Revestimento"
      when "30.06" then "Comunicação visual e sonora"
      when "30.08" then "Aparelhos sanitários"
      when "30.12" then "Calçadas e passeios"
      when "30.14" then "Elevadores e plataformas"
      when "32"    then "IMPERMEABILIZAÇÃO, PROTEÇÃO E JUNTA"
      when "32.06" then "Isolamentos térmicos / acústicos"
      when "32.07" then "Juntas de dilatação"
      when "32.08" then "Juntas de dilatação estrutural"
      when "32.09" then "Apoios e afins"
      when "32.10" then "Envelope de concreto e proteção de tubos"
      when "32.11" then "Isolantes térmicos para tubos e dutos"
      when "32.15" then "Impermeabilização flexível com manta"
      when "32.16" then "Impermeabilização flexível com membranas"
      when "32.17" then "Impermeabilização rígida"
      when "32.20" then "Reparos, conservações e complementos - GRUPO 32"
      when "33"    then "PINTURA"
      when "33.01" then "Preparo de base"
      when "33.02" then "Massa corrida"
      when "33.03" then "Pintura em superfícies de concreto / massa / gesso / pedras"
      when "33.05" then "Pintura em superfícies de madeira"
      when "33.06" then "Pintura em pisos"
      when "33.07" then "Pintura em estruturas metálicas"
      when "33.09" then "Pintura de sinalização"
      when "33.10" then "Pintura em superfície de concreto/massa/gesso/pedras, inclusive preparo"
      when "33.11" then "Pintura em superfície metálica, inclusive preparo"
      when "33.12" then "Pintura em superfície de madeira, inclusive preparo"
      when "33.20" then "Reparos, conservações e complementos - GRUPO 33"
      when "34"    then "PAISAGISMO E FECHAMENTOS"
      when "34.01" then "Preparação de solo"
      when "34.02" then "Vegetação rasteira"
      when "34.03" then "Vegetação arbustiva"
      when "34.04" then "Árvores"
      when "34.05" then "Cercas e fechamentos"
      when "34.07" then "Árvores."
      when "34.12" then "Árvores.."
      when "34.20" then "Reparos, conservações e complementos - GRUPO 34"
      when "35"    then "PLAYGROUND E EQUIPAMENTO RECREATIVO"
      when "35.01" then "Quadra e equipamento de esportes"
      when "35.03" then "Abrigo, guarita e quiosque"
      when "35.04" then "Bancos"
      when "35.05" then "Equipamento recreativo"
      when "35.07" then "Mastro para bandeiras"
      when "35.20" then "Reparos, conservações e complementos - GRUPO 35"
      when "36"    then "ENTRADA DE ENERGIA ELÉTRICA E TELEFONIA"
      when "36.01" then "Entrada de energia - componentes"
      when "36.03" then "Caixas de entrada / medição"
      when "36.04" then "Suporte (Braquet)"
      when "36.05" then "Isoladores"
      when "36.06" then "Muflas e terminais"
      when "36.07" then "Pára-raios de média tensão"
      when "36.08" then "Gerador e grupo gerador"
      when "36.09" then "Transformador de entrada"
      when "36.20" then "Reparos, conservações e complementos - GRUPO 36"
      when "37"    then "QUADRO E PAINEL PARA ENERGIA ELÉTRICA E TELEFONIA"
      when "37.01" then "Quadro para telefonia embutir, proteção IP40 chapa nº 16msg"
      when "37.02" then "Quadro para telefonia de sobrepor, proteção IP 40 chapa nº 16msg"
      when "37.03" then "Quadro distribuição de luz e força de embutir universal"
      when "37.04" then "Quadro distribuição de luz e força de sobrepor universal"
      when "37.06" then "Painel autoportante"
      when "37.10" then "Barramentos"
      when "37.11" then "Bases"
      when "37.12" then "Fusíveis"
      when "37.13" then "Disjuntores"
      when "37.14" then "Chave de baixa tensão"
      when "37.15" then "Chave de média tensão"
      when "37.16" then "Bus-way"
      when "37.17" then "Dispositivo DR ou interruptor de corrente de fuga"
      when "37.18" then "Transformador de Potencial"
      when "37.19" then "Transformador de corrente"
      when "37.20" then "Reparos, conservações e complementos - GRUPO 37"
      when "37.21" then "Capacitor de potência"
      when "37.22" then "Transformador de comando"
      when "37.24" then "Supressor de surto"
      when "37.25" then "Disjuntores."
      when "38"    then "TUBULAÇÃO E CONDUTO PARA ENERGIA ELÉTRICA E TELEFONIA BÁSICA"
      when "38.01" then "Eletroduto em PVC rígido roscável"
      when "38.04" then "Eletroduto em ferro galvanizado - médio"
      when "38.05" then "Eletroduto em ferro galvanizado - pesado"
      when "38.06" then "Eletroduto em ferro galvanizado a quente - pesado"
      when "38.07" then "Canaleta, perfilado e acessórios"
      when "38.10" then "Duto fechado de piso e acessórios"
      when "38.12" then "Leitos e acessórios"
      when "38.13" then "Eletroduto em polietileno de alta densidade"
      when "38.15" then "Eletroduto metálico flexível"
      when "38.16" then "Rodapé técnico e acessórios"
      when "38.19" then "Eletroduto em PVC corrugado flexível"
      when "38.21" then "Eletrocalha e acessórios"
      when "38.22" then "Eletrocalha e acessórios."
      when "38.23" then "Eletrocalha e acessórios.."
      when "39"    then "CONDUTOR E ENFIAÇÃO DE ENERGIA ELÉTRICA E TELEFONIA"
      when "39.03" then "Cabo de cobre, isolamento 0,6/1kV, isolação em PVC 70°C"
      when "39.04" then "Cabo de cobre nu, têmpera mole"
      when "39.05" then "Cabo de cobre tripolar tensão de isolamento 8,7/15 kV, isolação 90°C"
      when "39.06" then "Cabo de cobre unipolar, isolamento 8,7/15 kV, isolação EPR 90°C"
      when "39.07" then "Cabo de cobre, isolamento 0,6/1 kV, isolação em EPR 90°C"
      when "39.08" then "Cabo de cobre tripolar, isolamento 0,6/1kV, isolação para 90°C"
      when "39.09" then "Conectores"
      when "39.10" then "Terminais de pressão e compressão"
      when "39.11" then "Fios e cabos telefônicos"
      when "39.12" then "Cabo de cobre de comando para uso geral"
      when "39.14" then "Cabo de alumínio nu com alma de aço"
      when "39.15" then "Cabo de alumínio nu sem alma de aço"
      when "39.18" then "Cabo para transmissão de dados"
      when "39.20" then "Reparos, conservações e complementos - GRUPO 39"
      when "39.25" then "Cabo de cobre unipolar, isolamento 15/25 kV, isolação 90 °C / 105 °C"
      when "39.26" then "Cabo de cobre flexível, isolamento 0,6/1kV - 90° C, baixa emissão fumaça e gases"
      when "39.27" then "Cabo óptico"
      when "39.30" then "Fios e cabos - audio e vídeo"
      when "40"    then "DISTRIBUIÇÃO DE FORÇA E COMANDO DE ENERGIA ELÉTRICA E TELEFONIA"
      when "40.01" then "Caixa de passagem estampada"
      when "40.02" then "Caixa de passagem com tampa"
      when "40.04" then "Tomadas"
      when "40.05" then "Interruptores e minuterias"
      when "40.06" then "Conduletes"
      when "40.07" then "Caixa de passagem em PVC"
      when "40.10" then "Contator"
      when "40.11" then "Relé"
      when "40.12" then "Chave comutadora e seletora"
      when "40.13" then "Amperímetro"
      when "40.14" then "Voltímetro"
      when "40.20" then "Reparos, conservações e complementos - GRUPO 40"
      when "41"    then "ILUMINAÇÃO"
      when "41.02" then "Lâmpadas"
      when "41.04" then "Acessórios para iluminação"
      when "41.05" then "Lâmpada de descarga de alta potência"
      when "41.06" then "Lâmpadas incandescentes"
      when "41.07" then "Lâmpadas fluorescentes"
      when "41.08" then "Reatores e equipamentos para lâmpadas de descarga de alta potência"
      when "41.09" then "Reatores e equipamentos para lâmpadas fluorescentes"
      when "41.10" then "Postes e acessórios"
      when "41.11" then "Aparelho de iluminação pública e decorativa"
      when "41.12" then "Aparelho de iluminação de longo alcance e específica"
      when "41.13" then "Aparelho de iluminação a prova de tempo, gases e vapores"
      when "41.14" then "Aparelho de iluminação comercial e industrial"
      when "41.15" then "Aparelho de iluminação interna decorativa"
      when "41.20" then "Reparos, conservações e complementos - GRUPO 41"
      when "41.30" then "Luminária e acessórios especiais"
      when "41.31" then "ILUMINAÇÃO LED"
      when "42"    then "PÁRA-RAIOS PARA EDIFICAÇÃO"
      when "42.01" then "Complementos para pára-raios"
      when "42.02" then "Isoladores galvanizados uso geral"
      when "42.03" then "Isoladores galvanizados para mastros"
      when "42.04" then "Componente de sustentação para mastro galvanizado"
      when "42.05" then "Componentes para cabo de descida"
      when "42.20" then "Reparos, conservações e complementos - GRUPO 42"
      when "43"    then "APARELHOS ELÉTRICOS, HIDRÁULICOS E A GÁS."
      when "43.01" then "Bebedouros"
      when "43.02" then "Chuveiros"
      when "43.03" then "Aquecedores"
      when "43.04" then "Torneiras elétricas"
      when "43.05" then "Exaustor, ventilador e circulador de ar"
      when "43.06" then "Emissores de som"
      when "43.07" then "Aparelho condicionador de ar"
      when "43.08" then "Equipamentos para sistema VRF ar condicionado"
      when "43.10" then "Bombas centrífugas - uso geral"
      when "43.11" then "Bombas submersíveis"
      when "43.12" then "Bombas especiais, uso industrial"
      when "43.20" then "Reparos, conservações e complementos - GRUPO 43"
      when "44"    then "APARELHOS E METAIS SANITÁRIOS"
      when "44.01" then "Aparelhos e louças"
      when "44.02" then "Bancadas e tampos"
      when "44.03" then "Acessórios e metais"
      when "44.04" then "Prateleiras"
      when "44.06" then "Aparelhos de aço inoxidável"
      when "44.20" then "Reparos, conservações e complementos - GRUPO 44"
      when "45"    then "ENTRADA DE ÁGUA, INCÊNDIO E GÁS"
      when "45.01" then "Entrada de água"
      when "45.02" then "Entrada de gás"
      when "45.03" then "Hidrômetro"
      when "45.20" then "Reparos, conservações e complementos - GRUPO 45"
      when "46"    then "TUBULAÇÃO E CONDUTORES PARA ÍIQUIDOS E GASES"
      when "46.01" then "Tubulação com conexões em PVC rígido marrom para sistemas prediais de água fria"
      when "46.02" then "Tubulação com conexões em PVC rígido branco para esgoto domiciliar"
      when "46.03" then "Tubulação c/conexões em PVC rígido branco série R - A.P e esgoto domiciliar"
      when "46.04" then "Tubulação c/conexões em PVC rígido c/junta elástica - adução e distribuição água"
      when "46.05" then "Tubulação c/conexões em PVC rígido com junta elástica - rede de esgoto"
      when "46.07" then "Tubulação com conexões em ferro galvanizado"
      when "46.08" then "Tubulação com conexões em aço galvanizado classe schedule"
      when "46.09" then "Conexões e acessórios em ferro fundido, predial e tradicional, esgoto e pluvial"
      when "46.10" then "Tubulação com conexões em cobre para água quente, gás e vapor"
      when "46.12" then "Tubulação em concreto para rede de águas pluviais"
      when "46.13" then "Tubulação com conexões em PEAD corrugado perfurado para rede drenagem"
      when "46.14" then "Tubulação com conexões em ferro dúctil para redes de saneamento"
      when "46.15" then "Tubulação com conexões em PEAD - recalque de tratamento de esgoto"
      when "46.18" then "Tubulação e conexões flangeadas em ferro dúctil para redes saneamento"
      when "46.19" then "Tubulação e conexões flangeadas em ferro dúctil para redes saneamento."
      when "46.20" then "Reparos, conservações e complementos - GRUPO 46"
      when "46.21" then "Tubulação com conexões em aço preto classe schedule"
      when "46.23" then "Tubulação em concreto para rede de esgoto sanitário"
      when "46.26" then "Tubulações, conexões e acessórios em ferro fundido predial SMU-esgoto e pluvial"
      when "46.27" then "Tubulação com conexões em cobre, para sistema de ar condicionado"
      when "46.29" then "Tubulação, conexões e acessórios em PPR - Água fria / quente"
      when "46.30" then "Tubulação, conexões e acessórios em PPR - Água fria / quente."
      when "46.31" then "Tubulações, conexões e acessórios em PEAD"
      when "46.32" then "Tubulação com conexões em cobre rígido, para sistema VRF de ar condicionado"
      when "47"    then "VÁLVULAS E APARELHOS DE MEDIÇÃO E CONTROLE PARA LÍQUIDOS E GASES"
      when "47.01" then "Registro e / ou válvula em latão fundido sem acabamento"
      when "47.02" then "Registro e ou válvula em latão fundido com acabamento cromado"
      when "47.04" then "Válvula de descarga ou para acionamento de metais sanitários"
      when "47.05" then "Registro e / ou válvula em bronze"
      when "47.06" then "Registro e / ou válvula em ferro fundido"
      when "47.07" then "Registro e / ou válvula em aço carbono fundido"
      when "47.09" then "Registro e / ou válvula em aço carbono forjado"
      when "47.10" then "Registro e / ou válvula em aço inoxidável forjado"
      when "47.11" then "Aparelhos de medição e controle"
      when "47.12" then "Registro e / ou válvula em ferro dúctil"
      when "47.14" then "Registro e / ou válvula em PVC rígido ou ABS"
      when "47.20" then "Reparos, conservações e complementos - GRUPO 47"
      when "48"    then "RESERVATÓRIO E TANQUE PARA LÍQUIDOS E GASES"
      when "48.02" then "Reservatório em material sintético"
      when "48.03" then "Reservatório metálico"
      when "48.04" then "Reservatório em concreto"
      when "48.05" then "Torneira de bóia"
      when "48.20" then "Reparos, conservações e complementos - GRUPO 48"
      when "49"    then "CAIXA, RALO, GRELHA E ACESSÓRIO HIDRÁULICO"
      when "49.01" then "Caixas sifonadas de PVC rígido"
      when "49.03" then "Caixa de gordura"
      when "49.04" then "Ralos de PVC rígido"
      when "49.05" then "Ralos de ferro fundido"
      when "49.06" then "Grelhas e tampas"
      when "49.08" then "Caixas de passagem e inspeção"
      when "49.11" then "Canaletas e afins"
      when "49.12" then "Poço de visita / boca de lobo / caixa de passagem e afins"
      when "49.13" then "Filtros anaeróbios"
      when "49.14" then "Fossa séptica"
      when "49.15" then "Anel e aduela pré-moldados"
      when "49.16" then "Acessórios hidráulicos para água de reuso"
      when "50"    then "DETECÇÃO, COMBATE E PREVENÇÃO A INCÊNDIO"
      when "50.01" then "Hidrantes e acessórios"
      when "50.02" then "Registros e válvulas controladoras"
      when "50.05" then "Iluminação e sinalização de emergência"
      when "50.10" then "Extintores"
      when "50.20" then "Reparos, conservações e complementos - GRUPO 50"
      when "54"    then "PAVIMENTAÇÃO E PASSEIO"
      when "54.01" then "Pavimentação preparo de base"
      when "54.02" then "Pavimentação com pedrisco e revestimento primário"
      when "54.03" then "Pavimentação flexível"
      when "54.04" then "Pavimentação em paralelepípedos e blocos de concreto"
      when "54.06" then "Guias e sarjetas"
      when "54.07" then "Calçadas e passeios."
      when "54.20" then "Reparos, conservações e complementos - GRUPO 54"
      when "55"    then "LIMPEZA E ARREMATE"
      when "55.01" then "Limpeza de obra"
      when "55.02" then "Limpeza e desinfecção sanitária"
      when "55.10" then "Remoção de entulho"
      when "61"    then "CONFORTO MECÂNICO, EQUIPAMENTO E SISTEMA"
      when "61.01" then "Elevador"
      when "61.10" then "Climatização"
      when "61.12" then "Exaustão"
      when "61.14" then "Ventilação"
      when "61.20" then "Reparos, conservações e complementos - GRUPO 61"
      when "62"    then "COZINHA, REFEITÓRIO E LAVANDERIA INDUSTRIAL, EQUIPAMENTO"
      when "62.04" then "Mobiliário e acessórios"
      when "62.20" then "Reparos, conservações e complementos - GRUPO 62"
      when "65"    then "RESFRIAMENTO E CONSERVAÇÃO DE MATERIAL PERECIVEL"
      when "65.01" then "Câmara frigorífica para resfriado"
      when "65.02" then "Câmara frigorífica para congelado"
      when "66"    then "SEGURANÇA, VIGILÂNCIA E CONTROLE, EQUIPAMENTO E SISTEMA"
      when "66.02" then "Controle de acessos e alarme"
      when "66.08" then "Equipamentos para sistema de segurança, vigilância e controle"
      when "66.20" then "Reparos, conservações e complementos - GRUPO 66"
      when "67"    then "CAPTAÇÃO, ADUÇÃO E TRATAMENTO DE ÁGUA E ESGOTO, EQUIPAMENTO E SISTEMA"
      when "67.02" then "Tratamento"
      when "68"    then "ELETRIFICAÇÃO, EQUIPAMENTO E SISTEMA"
      when "68.01" then "Posteamento"
      when "68.02" then "Estrutura específica"
      when "68.20" then "Reparos, conservações e complementos - GRUPO 68"
      when "69"    then "TELEFONIA, LÓGICA E TRANSMISSÃO DE DADOS, EQUIPAMENTO E SISTEMA"
      when "69.03" then "Distribuição e comando, caixas e equipamentos específicos"
      when "69.05" then "Estabilização de tensão"
      when "69.06" then "Sistemas ininterruptos de energia"
      when "69.08" then "Equipamentos para informática"
      when "69.09" then "Sistema de rede"
      when "69.10" then "Telecomunicações"
      when "69.20" then "Reparos, conservações e complementos - GRUPO 69"
      when "97"    then "SINALIZAÇÃO E COMUNICAÇÃO VISUAL"
      when "97.01" then "Adesivos"
      when "97.02" then "Placas, pórticos e obeliscos arquitetônicos"
      when "97.03" then "Pintura de letras e pictogramas"
      when "97.04" then "Pintura de sinalização viária"
      when "97.05" then "Placas, pórticos e sinalização viária"
      when "98"    then "ARQUITETURA DE INTERIORES"
      when "98.02" then "Mobiliário"
      when "98.20" then "Reparos, conservações e complementos - GRUPO 98"
    else
      self
    end
  end

  def tipo_de_composicao_agetop_civil_por_extenso
    case self
      when "02" then "SERVIÇOS PRELIMINARES"
      when "03" then "TRANSPORTES"
      when "04" then "SERVIÇO EM TERRA"
      when "05" then "FUNDAÇÕES E SONDAGENS"
      when "06" then "ESTRUTURA"
      when "07" then "INST. ELÉT./TELEFÔNICA/CABEAMENTO ESTRUTURADO"
      when "08" then "INSTALAÇÕES HIDRO-SANITÁRIAS"
      when "09" then "INSTALAÇÕES ESPECIAIS"
      when "10" then "ALVENARIAS E DIVISÓRIAS"
      when "11" then "ALVENARIA AUTO-PORTANTE"
      when "12" then "IMPERMEABILIZAÇÃO"
      when "13" then "ISOLAMENTO TERMICO E ACUSTICO"
      when "14" then "ESTRUTURA DE MADEIRA"
      when "15" then "ESTRUTURAS METÁLICAS"
      when "16" then "COBERTURAS"
      when "17" then "ESQUADRIAS DE MADEIRAS"
      when "18" then "ESQUADRIAS METÁLICAS"
      when "19" then "VIDROS"
      when "20" then "REVESTIMENTO DE PAREDES"
      when "21" then "FORROS"
      when "22" then "REVESTIMENTO DE PISO"
      when "23" then "FERRAGENS"
      when "24" then "MARCENARIA"
      when "25" then "ADMINISTRAÇÃO - MENSALISTAS"
      when "26" then "PINTURA"
      when "27" then "DIVERSOS"
    else
      self
    end
  end

  def tipo_de_composicao_caema_por_extenso
    case self
      when "01"   then "CANTEIRO DE OBRAS"
      when "0101" then "CANTEIRO DE OBRAS - CMO101"
      when "0102" then "CANTEIRO DE OBRAS PARA - CM0102"
      when "0103" then "ALUGUEL DE EQUIPAMENTOS ESPECIAIS QUE NÃO SE ENCONTRAM APROPRIADOS NAS"
      when "0104" then "SERVIÇOS TÉCNICOS"
      when "0105" then "SERVIÇOS TOPOGRÁFICOS"
      when "02"   then "SERVIÇOS PRELIMINARES"
      when "0201" then "DEMOLIÇÃO DE EDIFICAÇÃO"
      when "0202" then "REMOÇÃO / RECOMPOSIÇÃO DE CERCAS"
      when "0203" then "PREPARO DO TERRENO / LIMPEZA DE ÁREAS"
      when "0204" then "DESTOCAMENTO / ROÇAGEM"
      when "0205" then "REMOÇÃO DE INTERFERÊNCIAS - TUBULAÇÃO"
      when "03"   then "TRANSITO E SEGURANÇA"
      when "0301" then "SINALIZAÇÃO"
      when "0302" then "TAPUMES E CERCAS DE PROTEÇÃO"
      when "0303" then "ESCORAMENTOS DE PROTEÇÃO"
      when "0304" then "PASSADIÇOS PROVISÓRIOS"
      when "04"   then "SERVIÇOS TOPOGRÁFICOS PARA LOCAÇÃO E CADASTRO DE OBRAS"
      when "0401" then "LOCAÇÃO E GABARITOS"
      when "0402" then "CADASTROS"
      when "05"   then "MOVIMENTO DE TERRA E ROCHA"
      when "0501" then "ESCAVAÇÕES DE VALAS PARA ADUTORAS E REDES DE DISTRIBUIÇÃO DE ÁGUA (APLICA-SE PARA LINHAS DE RECALQUE DE ESGOTO)"
      when "0502" then "ESCAVAÇÕES DE VALAS PARA REDES COLETORAS DE ESGOTO SANITARIO E"
      when "05"   then "MOVIMENTO DE TERRA E ROCHA"
      when "0503" then "ESCAVAÇÕES DE POÇOS E CAVAS DE FUNDAÇÃO"
      when "05"   then "MOVIMENTO DE TERRA E ROCHA"
      when "0504" then "ATERROS DE VALAS / POÇOS / CAVAS DE FUNDAÇÃO"
      when "0505" then "ENVOLTORIAS E BERÇOS PARA VALAS"
      when "0506" then "TERRAPLENAGEM"
      when "06"   then "TRANSPORTE DE SOLO, ROCHA E AGREGADOS"
      when "0601" then "CARGA / DESCARGA / ESPALHAMENTO DE MATERIAIS"
      when "0602" then "MOMENTO DE TRANSPORTE PARA MATERIAIS"
      when "07"   then "ESCORAMENTO PARA VALAS"
      when "0701" then "ESCORAMENTO DESCONTINUO"
      when "0702" then "ESCORAMENTO CONTINUO"
      when "08"   then "ESGOTAMENTO"
      when "0801" then "ESGOTAMENTO COM BOMBAS"
      when "0802" then "REBAIXAMENTO DE LENÇOL FREÁTICO"
      when "09"   then "FUNDAÇÕES E ESTRUTURAS "
      when "0901" then "CONCRETO CONVENCIONAL"
      when "0902" then "CONCRETO CICLÓPICO"
      when "0903" then "ALVENARIA DE PEDRA"
      when "0904" then "CONCRETO PROJETADO"
      when "0905" then "ARGAMASSA PROJETADA"
      when "0906" then "ARMADURA PARA CONCRETO"
      when "0907" then "FORMA PARA RESERVATÓRIO APOIADO (LAJES E PAREDES)"
      when "0908" then "FORMA PARA RESERVATÓRIO ELEVADO (CUBA = LAJES E PAREDES)"
      when "0909" then "FORMA PARA EDIFICAÇÕES"
      when "0910" then "FORMA PARA ESTRUTURAS DIVERSAS"
      when "0912" then "CIMBRAMENTO"
      when "0913" then "SERVIÇOS DE PROTENSÃO PARA ESTRUTURAS DE RESERVATÓRIO APOIADO"
      when "0914" then "LAJES PRE-FABRICADAS DE CONCRETO"
      when "0915" then "TUBULÕES DE CONCRETO"
      when "0916" then "ESTACAS DE MADEIRA"
      when "0917" then "ESTACAS METÁLICAS"
      when "0918" then "ESTACAS DE CONCRETO PRE-MOLDADAS"
      when "0919" then "ESTACAS DE CONCRETO MOLDADAS IN LOCO"
      when "0920" then "JUNTAS DE DILATAÇÃO"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "1001" then "POÇOS DE VISITA / INSPEÇÃO / LIMPEZA PARA S.E.S.'S E DRENAGEM"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "1002" then "CAIXAS DE PROTEÇÃO DE DESCARGAS / VENTOSAS / HIDRÔMETRO / REGISTRO DE MANOBRA P/ S.A.A.'S"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "1003" then "CAIXA DE PASSAGEM / RECEPÇÃO / BOCA DE LOBO / LIGAÇÃO PREDIAL PARA S.E.S'S E DRENAGEM"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "10"   then "CAIXAS, TAMPAS E POÇOS DE VISITA"
      when "1004" then "TAMPAS / TAMPÕES / GRELHAS"
      when "1005" then "TUBOS DE QUEDA"
      when "11"   then "DRENAGEM, CONTENÇÕES E REFORÇO DE SOLO"
      when "1101" then "CALHAS PRE-MOLDADAS DE CONCRETO (1/2 CANA)"
      when "11"   then "DRENAGEM, CONTENÇÕES E REFORÇO DE SOLO"
      when "1102" then "TUBOS DE CONCRETO COM JUNTA ARGAMASSADA PARA ÁGUAS PLUVIAIS"
      when "11"   then "DRENAGEM, CONTENÇÕES E REFORÇO DE SOLO"
      when "1103" then "TUBULAÇÃO PERFURADA DE CONCRETO PARA DRENOS SUB-SUPERFICIAIS"
      when "1104" then "TUBULAÇÃO PERFURADA E CORRUGADA DE PVC RÍGIDO/PEAD P/ DRENOS SUB-"
      when "11"   then "DRENAGEM, CONTENÇÕES E REFORÇO DE SOLO"
      when "1105" then "DISPOSITIVOS DE DRENAGEM SUPERFICIAL EM CONCRETO MOLDADO NO LOCAL"
      when "1106" then "DISPOSITIVOS DE DRENAGEM SUPERFICIAL EM ALVENARIA DE PEDRA"
      when "1107" then "ENROCAMENTO PARA PROTEÇÃO"
      when "1108" then "ENSECADEIRAS PARA PEQUENAS OBRAS"
      when "1109" then "GABIÕES"
      when "1110" then "MANTA GEOTEXTIL"
      when "12"   then "ASSENTAMENTO E MONTAGEM DE TUBULAÇÕES, PEÇAS, CONEXÕES, VÁLVULAS"
      when "1201" then "TUBULAÇÕES ADUTORAS E REDES DE DISTRIBUIÇÃO DE ÁGUA, INCLUINDO PEÇAS"
      when "1202" then "BARRILETES OU ARRANJOS EM TUBOS, PEÇAS, CONEXÕES, VÁLVULAS, APARELHOS E ACESS. F.F. DUCTIL OU AÇO CARBONO, C/ JUNTA TRAVADA EXTERNA, MEC. OU FLANGEADA"
      when "1203" then "TUBULAÇÕES DE ADUTORAS E REDES DE DISTRIBUIÇÃO DE ÁGUA, INCLUINDO"
      when "1204" then "TUBULAÇÕES DE REDE DE COLETA DE ESGOTO SANITÁRIO - PVC RÍGIDO DE PONTA"
      when "1205" then "TUBULAÇÕES DE REDE DE COLETA DE ESGOTO SANITÁRIO - CONCRETO DE PONTA"
      when "1207" then "CORTE E ESMERILHAMENTO EM TUBO DE FERRO FUNDIDO DUCTIL OU AÇO"
      when "13"   then "TRANSPORTE DE TUBOS, PEÇAS E CONEXÕES"
      when "1301" then "CARGA E DESCARGA DE TUBOS, PEÇAS E CONEXÕES DE PVC RÍGIDO/ RPVC "
      when "1302" then "CARGA E DESCARGA DE TUBOS, PEÇAS E CONEXÕES DE F° F° DUCTIL OU AÇO"
      when "1303" then "CARGA E DESCARGA DE TUBOS DE CONCRETO"
      when "1304" then "MOMENTO DE TRANSPORTE PARA TUBOS, PEÇAS E CONEXÕES DE PVC RÍGIDO/ RPVC"
      when "1305" then "MOMENTO DE TRANSPORTE PARA TUBOS, PEÇAS E CONEXÕES DE F° F° DUCTIL OU"
      when "1306" then "MOMENTO DE TRANSPORTE PARA TUBOS DE CONCRETO"
      when "14"   then "LEVANTAMENTO/DEMOLIÇÃO E RECOMPOSIÇÃO DE PAVIMENTOS"
      when "1401" then "LEVANTAMENTO / DEMOLIÇÃO DE PAVIMENTO EM ABERTURA DE VALAS"
      when "14"   then "LEVANTAMENTO/DEMOLIÇÃO E RECOMPOSIÇÃO DE PAVIMENTOS"
      when "1402" then "RECOMPOSIÇÃO DE PAVIMENTAÇÃO PARA FECHAMENTO DE VALAS"
      when "15"   then "EDIFICAÇÕES"
      when "1501" then "PAREDES E PAINÉIS"
      when "1502" then "COBERTURA"
      when "15"   then "EDIFICAÇÕES"
      when "1503" then "ESQUADRIAS / VIDROS"
      when "1504" then "REVESTIMENTOS DE PAREDES E TETOS"
      when "15"   then "EDIFICAÇÕES REVESTIMENTO DE TETO COM FORRO DE PLACA DE GESSO, PRE-MOLDADA, INCLUINDO MATERIAL PARA FIXAÇÃO"
      when "1505" then "REVESTIMENTOS DE PISOS / ARREMATES"
      when "15"   then "EDIFICAÇÕES"
      when "1506" then "TRATAMENTO / IMPERMEABILIZAÇÃO"
      when "1507" then "PINTURA"
      when "1508" then "SERVIÇOS COMPLEMENTARES"
      when "15"   then "EDIFICAÇÕES"
      when "1509" then "LIMPEZA DA OBRA"
      when "17"   then "INSTALAÇÕES ELÉTRICAS"
      when "1701" then "LINHAS DE TRANSMISSÃO/DISTRIBUIÇÃO (FORNECIMENTO DE MATERIAL)"
      when "1702" then "LINHAS DE TRANSMISSÃO/DISTRIBUIÇÃO (MONTAGEM E INSTALAÇÃO)"
      when "1703" then "ENTRADA DE ENERGIA MONOFÁSICA/TRIFÁSICA EM BAIXA TENSÃO, SEM MONTAGEM DE SUBESTAÇÃO (FORNECIMENTO DE MATERIAL)"
      when "1704" then "ENTRADA DE ENERGIA MONOFÁSICA/TRIFÁSICA EM BAIXA TENSÃO, SEM MONTAGEM DE SUBESTAÇÃO (MONTAGEM E INSTALAÇÃO)"
      when "1705" then "SUBESTAÇÃO ABRIGADAS (FORNECIMENTO DE MATERIAL)"
      when "1706" then "SUBESTAÇÃO ABRIGADAS (MONTAGEM E INSTALAÇÃO)"
      when "1707" then "SUBESTAÇÃO AEREA TIPO MONOPOSTE (FORNECIMENTO DE MATERIAL)"
      when "1708" then "SUBESTAÇÃO AÉREA TIPO MONOPOSTE (MONTAGEM E INSTALAÇÃO)"
      when "1709" then "SISTEMA DE FORÇA E COMANDO PARA POÇO ÚMIDO - 1 BOMBA COM PARTIDA DIRETA (FORNECIMENTO DE MATERIAL)"
      when "1710" then "SISTEMA DE FORÇA E COMANDO PARA POÇO ÚMIDO - 1 BOMBA COM PARTIDA DIRETA, INSTALAÇÃO E MONTAGEM"
      when "1711" then "SISTEMA DE FORÇA E COMANDO PARA POÇO ÚMIDO - 1 BOMBA COM PARTIDA COMPENSADA (FORNECIMENTO DE MATERIAL)"
      when "1712" then "SISTEMA DE FORÇA E COMANDO PARA POÇO ÚMIDO - 1 BOMBA COM PARTIDA COMPENSADA (INSTALAÇÃO E MONTAGEM)"
      when "1713" then "SISTEMA DE FORÇA E COMANDO PARA ELEVATÓRIA DE ÁGUA OU ESGOTO - 2 BOMBAS COM PARTIDA COMPENSADA (FORNECIMENTO DE MATERIAL)"
      when "1714" then "SISTEMA DE FORÇA E COMANDO PARA ELEVATÓRIA DE ÁGUA OU ESGOTO - 2 BOMBAS COM PARTIDA COMPENSADA (INSTALAÇÃO E MONTAGEM)"
      when "1715" then "SISTEMA DE FORÇA E COMANDO PARA ELEVATÓRIA DE ÁGUA OU ESGOTO - 2 BOMBAS COM PARTIDA SUAVE/SOFT-START (FORNECIMENTO DE MATERIAL)"
      when "1716" then "SISTEMA DE FORÇA E COMANDO PARA ELEVATÓRIA DE ÁGUA OU ESGOTO - 2 BOMBAS COM PARTIDA SUAVE/SOFT-START (INSTALAÇÃO E MONTAGEM)"
      when "1721" then "SISTEMA DE ILUMINAÇÃO INTERNA E TOMADAS DE PRÉDIOS, POR METRO QUADRADO CONSTRUÍDO (FORNECIMENTO DE MATERIAL)"
      when "1722" then "SISTEMA DE ILUMINAÇÃO INTERNA E TOMADAS DE PRÉDIOS, POR METRO QUADRADO CONSTRUÍDO (INSTALAÇÃO E MONTAGEM)"
      when "1723" then "SISTEMA DE ILUMINAÇÃO DE ÁREAS EXTERNAS, POR PONTO, COM INSTALAÇÃO SUBTERRÂNEA - INCLUINDO POSTE ACESSÓRIOS E FIAÇÃO (FORNECIMENTO DE MATERIAL)"
      when "1724" then "SISTEMA DE ILUMINAÇÃO DE ÁREAS EXTERNAS, POR PONTO, COM INSTALAÇÃO SUBTERRÂNEA - INCLUINDO POSTE ACESSÓRIOS E FIAÇÃO (INSTALAÇÃO E MONTAGEM)"
      when "1731" then "SISTEMA DE PROTEÇÃO CONTRA DESCARGASEM SPDA (FORNECIMENTO DE MATERIAL)"
      when "1732" then "SISTEMA DE PROTEÇÃO CONTRA DESCARGASEM SPDA (INSTALAÇÃO DE MONTAGEM)"
      when "18"   then "URBANIZAÇÃO"
      when "1801" then "PAVIMENTAÇÃO DE PASSEIOS"
      when "1802" then "PAVIMENTAÇÃO DE RUAS"
      when "1803" then "REGULARIZAÇÃO E REVESTIMENTO DE SUPERFÍCIES"
      when "1804" then "CERCA / MURO"
      when "1805" then "PORTÃO"
      when "1806" then "GRAMADO / ARBORIZAÇÃO"
      when "19"   then "INSTALAÇÕES MECÂNICAS"
      when "1901" then "CONJUNTO MOTO-BOMBA (MONTAGEM E INSTALAÇÃO)"
      when "1902" then "TALHA MANUAL COM TROLE MANUAL (MONTAGEM E INSTALAÇÃO)"
      when "1903" then "TALHA MANUAL COM TROLE ELÉTRICO (MONTAGEM E INSTALAÇÃO)"
      when "1904" then "TALHA ELÉTRICA COM TROLE MANUAL / ELÉTRICO (MONTAGEM E INSTALAÇÃO)"
      when "1905" then "PORTICO ROLANTE (MONTAGEM E INSTALAÇÃO)"
      when "1909" then "ELEMENTOS PARA FIXAÇÃO E SUPORTE"
      when "20"   then "LIGAÇOES PREDIAIS DE ÁGUA"
      when "2001" then "INTERLIGAÇÃO DE REDE NOVA COM REDE EXISTENTE"
      when "2002" then "RAMAL PREDIAL DE ÁGUA C/HIDROMETRO NO PASSEIO TIPO I - A PARA PEQUENOS E MÉDIOS CONSUMIDORES."
      when "2004" then "RAMAL PREDIAL DE ÁGUA C/HIDROMETRO NA PAREDE TIPO II - A PARA PEQUENOS E MÉDIOS CONSUMIDORES."
      when "2005" then "RAMAL PREDIAL DE ÁGUA S/HIDROMETRO NA PAREDE TIPO II - B PARA PEQUENOS E MÉDIOS CONSUMIDORES."
      when "2006" then "RAMAL PREDIAL DE ÁGUA C/HIDROMETRO NA MURETA TIPO III - A PARA PEQUENOS E MEDIOS CONSUMIDORES"
      when "2007" then "RAMAL PREDIAL DE ÁGUA S/HIDROMETRO NA MURETA TIPO III - B PARA PEQUENOS E MÉDIOS CONSUMIDORES."
      when "2008" then "RAMAL PREDIAL DE ÁGUA C/HIDROMETRO CAVALETE SEM PROTEÇÃO TIPO IV-A PARA PEQUENOS E MÉDIOS CONSUMIDORES"
      when "2009" then "RAMAL PREDIAL DE ÁGUA S/HIDROMETRO CAVALETE SEM PROTEÇÃO TIPO IV - B PARA PEQUENOS E MÉDIOS CONSUMIDORES"
      when "2010" then "INSTALAÇÃO DE HIDROMETRO EM LIGAÇÃO PREDIAL NÃO MEDIDA NA PAREDE OU MURETA TIPO-V, PARA PEQUENOS E MÉDIOS CONSUMIDORES"
      when "2011" then "INSTALAÇÃO DE HIDROMETRO EM LIGAÇÃO PREDIAL NÃO MEDIDA NO PASSEIO TIPO-VI, PARA PEQUENOS E MÉDIOS CONSUMIDORES"
      when "2012" then "RAMAL PREDIAL DE ÁGUA COM HIDRÔMETRO NO PASSEIO TIPO VII PARA GRANDES CONSUMIDORES"
      when "2013" then "RAMAL PREDIAL DE ÁGUA COM HIDRÓMETRO NO PASSEIO, TIPO VIII, PARA CONSUMIDORES INDUSTRIAIS"
      when "2014" then "FORNECIMENTO DE MURETA"
      when "21"   then "LIGAÇÕES PREDIAIS DE ESGOTO"
      when "2101" then "RAMAL PREDIAL (CONVENCIONAL)"
      when "2102" then "SISTEMA CONDOMINIAL"
      when "22"   then "ESTAÇÃO DE TRATAMENTO - ÁGUA E ESGOTO (ETA - ETE)"
      when "2201" then "CANAL DE CHEGADA"
      when "2202" then "FLOCULADORES"
      when "2203" then "DECANTADORES"
      when "2204" then "FILTROS"
      when "2205" then "CASA DE QUÍMICA E CASA DE CLORAÇÃO"
      when "2206" then "COMPORTAS E VERTEDORES"
      when "2207" then "GRADES MANUAIS PARA PRE-TRATAMENTO DE ESGOTOS / ÁGUA BRUTA"
      when "24"   then "POÇOS TUBULARES"
      when "2401" then "MOBILIZAÇÃO E DESMOBILIZAÇÃO"
      when "2402" then "CANTEIRO DE POÇOS"
      when "2403" then "PERFURAÇÃO"
      when "2501" then "SERVIÇOS DE MANUTENÇÃO, OPERAÇÃO E PARA SISTEMA DE ABASTECIMENTO DE ÁGUA"
      when "2502" then "SERVIÇOS DE MANUTENÇÃO, OPERAÇÃO PARA SISTEMA DE ESGOTAMENTO SANITÁRIO"
      when "2503" then "SERVIÇOS E ATIVIDADES COMERCIAIS"
      when "26"   then "SERVIÇOS DE MANUTENÇÃO MECÂNICA E ELETRO-ELETRÔNICA"
      when "2601" then "SERVIÇOS MECÂNICOS DE CORTE, DESBASTE, SOLDA E USINAGEM DE PEÇAS, ACESSÓRIOS E ESTRUTURAS METÁLICAS."
      when "2602" then "DESMONTAGEM, MANUTENÇÃO E MONTAGEM DE TUBULAÇÕES, PEÇAS, CONEXÕES, VÁLVULAS, APARELHOS E ACESSÓRIOS DE FERRO GALVANIZADO, FUNDIDO DÚCTIL OU AÇO CARBONO, JUNTA ROSQUEÁVEL, TRAVADA, MECÂNICA OU FLANGEADA."
      when "2603" then "RETIRADA, DESMONTAGEM, MANUTENÇÃO, MONTAGEM, REINSTALAÇÃO E ALINHAMENTO DE CONJUNTOS MOTO BOMBAS HORIZONTAIS, SEM FORNECIMENTO DE PEÇAS"
      when "2604" then "INSTALAÇÃO E REINSTALAÇÃO DE CONJUNTOS MOTO-BOMBAS SUBMERSOS SEM FORNECIMENTO DE PEÇAS"
      when "5010" then "PREPARO DE ARGAMASSAS"
      when "5020" then "CONCRETO"
      when "5021" then "CONCRETO CONVENCIONAL"
      when "5022" then "CONCRETO CICLOPICO"
      when "5024" then "CONCRETO PROJETADO"
      when "5025" then "ARGAMASSA PROJETADA"
      when "5026" then "CONCRETO ARMADO"
      when "5027" then "CONCRETO PAVIMENTACAO"
      when "5030" then "PECAS PRE-MOLDADAS"
      when "5040" then "APOIO DIVERSOS"
      when "5050" then "DIVERSAS FORMAS"
      when "5060" then "ALVENARIAS E DIVISORIAS"
      when "5070" then "TRATAMENTOS"
      when "5080" then "SERVICOS COMPLEMENTARES"
      when "5090" then "INSTALACOES HIDRO-SANITARIAS"
      when "52"   then "CUSTO HORÁRIO DE EQUIPAMENTOS"
      when "55"   then "COMPOSICOES AUXILIARES DAS DESPESAS INDIRETAS"
      when "5505" then "FECHAMENTO DA AREA DO CANTEIRO"
    else
      self
    end
  end

  def tipo_de_composicao_embasa_por_extenso
    case self
      when "02"   then %~SERVICOS PRELIMINARES~
      when "0201" then %~DEMOLICAO~
      when "0202" then %~REMOCAO / RECOMPOSICAO~
      when "0203" then %~PREPARO DO TERRENO / LIMPEZA DE AREAS~
      when "0204" then %~DESTOCAMENTO / ROCAGEM~
      when "0290" then %~SERVICOS NAO CODIFICADOS~
      when "03"   then %~TRANSITO E SEGURANCA~
      when "0301" then %~SINALIZACAO~
      when "0302" then %~TAPUMES E CERCAS DE PROTECAO~
      when "0303" then %~ESCORAMENTOS DE PROTECAO~
      when "0304" then %~PASSADICOS PROVISORIOS~
      when "0390" then %~SERVICOS NAO CODIFICADOS~
      when "04"   then %~SERVICOS TOPOGRAFICOS PARA LOCACAO E CADASTRO DE OBRAS~
      when "0401" then %~CADASTROS~
      when "0402" then %~GABARITOS~
      when "0490" then %~SERVICOS NAO CODIFICADOS~
      when "05"   then %~MOVIMENTO DE TERRA E ROCHA~
      when "0501" then %~ESCAVACOES DE VALAS P/ ADUTORAS E REDES DE DISTRIBUICAO DE AGUA (APLICA-SE P/LINHAS DE RECALQUE DE ESGOTO)~
      when "0502" then %~ESCAVACOES DE VALAS P/ REDES COLETORAS DE ESGOTO SANITARIO E DRENAGEM PLUVIAL~
      when "0503" then %~ESCAVACOES DE POCOS E CAVAS DE FUNDACAO~
      when "0504" then %~ATERROS DE VALAS / POCOS / CAVAS DE FUNDACAO~
      when "0505" then %~ENVOLTORIAS E BERCOS P/ VALAS~
      when "0506" then %~TERRAPLENAGEM~
      when "0507" then %~ESCAVACAO P/ OBRAS DE BARRAGENS~
      when "0508" then %~ATERROS P/ OBRAS DE BARRAGENS~
      when "0509" then %~ENROCAMENTO P/ OBRAS DE BARRAGENS~
      when "0510" then %~TRANSICOES / FILTROS E TRATAMENTOS P/ OBRAS DE BARRAGENS~
      when "0511" then %~SERVICOS ESPECIAIS EM OBRAS DE TERRA~
      when "0590" then %~SERVICOS NAO CODIFICADOS~
      when "06"   then %~TRANSPORTE DE SOLO, ROCHA E AGREGADOS~
      when "0601" then %~CARGA / DESCARGA / ESPALHAMENTO DE MATERIAIS~
      when "0602" then %~MOMENTO DE TRANSPORTE P/ MATERIAIS~
      when "0680" then %~SERVICOS DE TRANSPORTE DE MATERIAL INSALUBRE - RMS~
      when "0690" then %~SERVICOS NAO CODIFICADOS~
      when "07"   then %~ESCORAMENTO~
      when "0701" then %~ESCORAMENTO DESCONTINUO~
      when "0702" then %~ESCORAMENTO CONTINUO~
      when "0703" then %~ESCORAMENTO CONTINUO COM BLINDAGEM METALICA~
      when "0790" then %~SERVICOS NAO CODIFICADOS~
      when "08"   then %~ESGOTAMENTO~
      when "0801" then %~ESGOTAMENTO C/ BOMBAS~
      when "0802" then %~REBAIXAMENTO DE LENCOL FREATICO~
      when "0890" then %~SERVICOS NAO CODIFICADOS~
      when "09"   then %~ESTRUTURAS E FUNDACOES~
      when "0901" then %~CONCRETO CONVENCIONAL~
      when "0902" then %~CONCRETO CICLOPICO~
      when "0903" then %~CONCRETO COMPACTADO C/ ROLO ( CCR )~
      when "0904" then %~CONCRETO PROJETADO~
      when "0905" then %~ARGAMASSA PROJETADA~
      when "0906" then %~ARMADURA P/ CONCRETO~
      when "0907" then %~FORMA P/ RESERVATORIO APOIADO~
      when "0908" then %~FORMA P/ RESERVATORIO ELEVADO~
      when "0909" then %~FORMA P/ EDIFICACOES~
      when "0910" then %~FORMA P/ ESTRUTURAS DIVERSAS~
      when "0911" then %~FORMAS ESPECIAIS~
      when "0912" then %~CIMBRAMENTO~
      when "0913" then %~SERVICOS DE PROTENSAO P/ ESTRUTURAS DE RESERVATORIO APOIADO C/  CAP. DE 8700 m~
      when "0914" then %~LAJES PRE-FABRICADAS DE CONCRETO~
      when "0915" then %~TUBULOES DE CONCRETO~
      when "0916" then %~ESTACAS DE MADEIRA~
      when "0917" then %~ESTACAS METALICAS~
      when "0918" then %~ESTACAS DE CONCRETO PRE-MOLDADAS~
      when "0919" then %~ESTACAS DE CONCRETO MOLDADAS IN LOCO~
      when "0920" then %~JUNTAS DE DILATACAO~
      when "0930" then %~ESTRUTURA METALICA~
      when "0940" then %~SERVICOS DE PROTENSAO PARA ESTRUTURAS DE CONCRETO~
      when "0990" then %~SERVICOS NAO CODIFICADOS~
      when "10"   then %~CAIXAS, TAMPAS E POCOS DE VISITA~
      when "1001" then %~POCOS DE VISITA / INSPECAO / LIMPEZA P/ S.E.S.'s E DRENAGEM~
      when "1002" then %~CAIXAS DE DESCARGAS / VENTOSAS / PROT. DE HIDROMETRO / REG. DE MANOBRA P/ S.A.A.'s~
      when "1003" then %~CAIXA DE PASSAGEM / RECEPCAO / BOCA DE LOBO / LIGACAO PREDIAL P/ S.E.S's E DRENAGEM~
      when "1004" then %~TAMPAS / TAMPOES / GRELHAS~
      when "1005" then %~TUBOS DE QUEDA~
      when "1006" then %~TUBO AEREO~
      when "1090" then %~SERVICOS NAO CODIFICADOS~
      when "11"   then %~DRENAGEM, CONTENCOES E REFORCO DE SOLO~
      when "1101" then %~CALHAS PRE-MOLDADAS DE CONCRETO (1/2 CANA)~
      when "1102" then %~TUBOS DE CONCRETO C/ JUNTA ARGAMASSADA P/ AGUAS PLUVIAIS~
      when "1103" then %~TUBULACAO PERFURADA DE CONCRETO P/ DRENOS SUB-SUPERFICIAIS~
      when "1104" then %~TUBULACAO PERFURADA E CORRUGADA DE PVC RIGIDO/PEADP/ DRENOS SUB-SUPERFICIAIS~
      when "1105" then %~DISPOSITIVOS DE DRENAG. SUPERFICIAL EM CONCRETO MOLDADO NO LOCAL~
      when "1106" then %~DISPOSITIVOS DE DRENAGEM SUPERFICIAL EM ALVENARIA DE PEDRA ARGAMASSADA~
      when "1107" then %~ENROCAMENTO P/ PROTECAO~
      when "1108" then %~ENSECADEIRAS P/ PEQUENAS OBRAS~
      when "1109" then %~GABIOES~
      when "1110" then %~MANTA GEOTEXTIL~
      when "1190" then %~SERVICOS NAO CODIFICADOS~
      when "12"   then %~ASSENT. MONTAGEM E REMOCAO DE TUBULACOES, PECAS, CONEXOES, VALVULAS E APARELHOS~
      when "1201" then %~TUBULACOES ADUTORAS E REDES DE DISTRIB. DE AGUA, INCL. PECAS E CONEXOES-FoFo DUCTIL OU ACO CARBONO DE PONTA E BOLSA C/JUNTA ELAST. OU JUNTA TRAV.INTERNA(JTI)(APLICA-SE P/LINHAS DE AGUA E ESGOTO)~
      when "1202" then %~BARRILETES OU ARRANJOS EM TUBOS, PECAS, CONEXOES, VALVULAS, APARELHOS E ACESSORIOS DE FERRO FUNDIDO DUCTIL OU ACO CARBONO, C/ JUNTA TRAVADA EXTERNA, MECANICA OU FLANGEADA~
      when "1203" then %~TUBULA€OES DE ADUTORAS E REDES DE DISTRIBUI€AO DE AGUA, INCL. PE€AS E CONEXOES~
      when "1204" then %~TUBULA€OES DE REDE DE COLETA DE ESGOTO SANITARIO - PVC RIGIDO DE PONTA E BOLSAC/ JUNTA ELASTICA~
      when "1205" then %~TUBULA€OES DE REDE DE COLETA DE ESGOTO SANITARIO - CONCRETO DE PONTA E BOLSA C/ JUNTA ELASTICA~
      when "1206" then %~REMOCAO DE TUBULACAO~
      when "1207" then %~CORTE E ESMERILHAMENTO EM TUBO DE FERRO FUNDIDO DUCTIL OU ACO CARBONO (NA OBRA)~
      when "1208" then %~EXEC. DE "TUNNEL LINER" EM "LOCALIZACAO DA TRAVESSIA" C/ DN="DIAMETRO NOMINAL",L="EXTENSAO", INCL.  PROJETO EXECUTIVO ,SONDAGEM E FORNEC. DE MAT. EXCETO POCOS DE SERVICO~
      when "1209" then %~EXEC. DE TUNEL "MINI-SHIELD", C/ ANEL SEGMENTADO DE CONCRETO EM "Localiza‡ao da Travessia" C/ DN="Diametro Nominal",L="Extensao" INCL. PROJ. EXECUTIVO,SONDAGEM, E FORNEC. DE MAT.,EXCETO POCOS DE SERV~
      when "1210" then %~EXEC. DE TUNEL PELO PROCESSO TUBO CRAVADO EM "Localiza‡ao da Travessia" C/ DN="Diametro Nominal",L= "Extensao", INCL.PROJETO EXECUTIVO, SONDAGEM, E FORNEC. DE MAT., EXCETO POCOS DE SERVICO.~
      when "1211" then %~EXEC. DE TUNEL PELO PROCESSO N.A.T.M EM "Localiza‡ao da Travessia", C/ DN= "Diametro Nominal",L= "Extensao", INCL. PROJETO EXECUTIVO, SONDAGEM, E FORNEC. DEMAT.,EXCETO POCOS DE SERVICO~
      when "1212" then %~EXEC. DE PERFURACAO DIRECIONAL EM "Localiza‡ao da Travessia",C/ DN="Diametro Nominal", L= "Extensao",INCL.ASSENT. DE TUBO, PROJETO EXECUTIVO, SONDAGEM E FORNEC. DE MAT.~
      when "1213" then %~EXEC. DE FURO DIRECIONAL MND, C/ DN="Diametro Nominal", INCL.INCLUSIVE FORNEC.SOLDA E ASSENT. DE TUBO, C/EQUIPAMENTOS DE APOIO PARA EXECUCAO DOS SERVICOS, SONDAGEM E FORNEC. DE MAT.~
      when "1214" then %~LOCACAO DE CAMINHAO PIPA INCLUINDO MOTORISTA E COMBUSTIVEL~
      when "1215" then %~MONTAGEM DE TUBOS EM ACO CARBONO, INCLUINDO ASSENTAMENTO, SOLDAGEM, INSPECAO ETESTES~
      when "1290" then %~SERVICOS NAO CODIFICADOS~
      when "1293" then %~EXECUCAO TRAVESSIA SUB AQUATICA, INCLUSIVE MOB, DESMOB, LANCAMENTO TUBULACAO,SERVICOS SUB AQUATICOS, DERROCAMENTO/DRAGAGEM E DEMAIS SERV.NECESSARIOS C/FORNEC MATERIAL EXCETO TUBO PEAD - TROBOGY~
      when "13"   then %~TRANSPORTE DE TUBOS, PECAS E CONEXOES~
      when "1301" then %~CARGA E DESCARGA DE TUBOS, PECAS E CONEXOES DE PVC RIG./ RPVC / PRFV~
      when "1302" then %~CARGA E DESCARGA DE TUBOS,PECAS E CONEXOES DE F§F§ DUCTIL OU ACO CARBONO~
      when "1303" then %~CARGA E DESCARGA DE TUBOS DE CONCRETO~
      when "1304" then %~MOMENTO DE TRANSPORTE P/TUBOS, PECAS E CONEX. DE PVC RIGIDO/RPVC / PRFV~
      when "1305" then %~MOMENTO DE TRANSPORTE P/ TUBOS, PECAS E CONEXOES DE F§F§ DUCTIL OU ACO CARBONO~
      when "1306" then %~MOMENTO DE TRANSPORTE P/ TUBOS DE CONCRETO~
      when "1390" then %~SERVICOS NAO CODIFICADOS~
      when "14"   then %~DEMOLICAO E RECOMPOSICAO DE PAVIMENTOS~
      when "1401" then %~LEVANTAMENTO / DEMOLICAO DE PAVIMENTO EM ABERTURA DE VALAS~
      when "1402" then %~RECOMPOSICAO DE PAVIMENTACAO P/ FECHAMENTO DE VALAS~
      when "1490" then %~SERVICOS NAO CODIFICADOS~
      when "15"   then %~EDIFICACOES~
      when "1501" then %~PAREDES E PAINEIS~
      when "1502" then %~COBERTURA~
      when "1503" then %~ESQUADRIAS / VIDROS~
      when "1504" then %~REVESTIMENTOS DE PAREDES E TETOS~
      when "1505" then %~REVESTIMENTOS DE PISOS / ARREMATES~
      when "1506" then %~TRATAMENTO / IMPERMEABILIZACAO~
      when "1507" then %~PINTURA~
      when "1508" then %~SERVICOS COMPLEMENTARES~
      when "1509" then %~LIMPEZA DA OBRA~
      when "1590" then %~SERVICOS NAO CODIFICADOS~
      when "1592" then %~REVESTIMENTO DE FACHADA EM LUXALON M250 AZUL COBALTO COM FORNECIMENTO, COLOCACAO E MONTAGEM~
      when "16"   then %~INSTALACOES HIDRAULICAS E SANITARIAS~
      when "1601" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM CASA DE QUIMICA, INCL. ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., APARELHOS E ACESSORIOS~
      when "1602" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM CASA DE QUIMICA, INCL. FORNEC. E ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., APARELHOS E ACESSORIOS~
      when "1603" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM ESTACOES ELEVATORIAS DE AGUA OU ESGOTO, INCL. ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., APARELHOS E ACESSORIOS~
      when "1604" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM EST. ELEVATORIAS DE AGUA OU ESGOTO, INCL. FORNEC. E ASSENT. DE TANQUE P/RESERVACAO,TUBOS, VALVULAS,PECAS,CONEX., APARELHOS E ACESSORIOS~
      when "1605" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM ESCRITORIOS, INCL. ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., APARELHOSE ACESSORIOS~
      when "1606" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM ESCRITORIOS, INCL. FORNEC. E ASSENT. DE TANQUE P/ RESERV., TUBOS, VALVULAS, PECAS, CONEX., APARELHOS E ACESSORIOS~
      when "1607" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM CASAS DE OPERADOR, INCL. ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., APARELHOS E ACESSORIOS~
      when "1608" then %~INST. HIDRAULICAS (AGUA FRIA E INST. PLUVIAIS) E SANITARIAS EM CASAS DE OPERADOR, INCL. FORNEC. E ASSENT. DE TANQUE  P/ RESERV., TUBOS, VALVULAS, PECAS, CON~
      when "1609" then %~INST. HIDRAULICAS (AGUA FRIA) E SANITARIAS EM AREAS EXTERNAS, INCL.  ASSENT. DE TANQUE P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., ACESSORIOS, FOSSA E SUMIDOURO~
      when "1610" then %~INST. HIDRAULICAS (AGUA FRIA) E SANITARIAS EM AREAS EXTERNAS  INCL. FORNEC. EASSENT. DE TANQUES P/ RESERVACAO, TUBOS, VALVULAS, PECAS, CONEX., ACESSORIOS,FOSSA E SUMIDOURO~
      when "1611" then %~INST. HIDRAULICAS (AGUA FRIA E INST.PLUVIAIS) E SANITARIAS EM EDIFICACOES E AREAS EXTERNAS, INCL. FORNEC.E ASSENT. DE TANQUE P/RESERV.,TUB.,VALV.,PC.,CONEX.,APARELHOS,ACES., FOSSA E SUMIDOURO~
      when "1620" then %~RESERVATORIOS COM FUSTE METALICOS EM ACO USI SAC41~
      when "1621" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 5000l~
      when "1622" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 10000l~
      when "1623" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 15000l~
      when "1624" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 20000l~
      when "1625" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 30000l~
      when "1626" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 50000l~
      when "1627" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 75000l~
      when "1628" then %~RESERVATORIO METALICO EM ACO USI SAC41 COM CAPACIDADE NOMINAL DE 100000l~
      when "1630" then %~RESERVATORIO DE PLACA COM E SEM TAMPA~
      when "1690" then %~SERVICOS NAO CODIFICADOS~
      when "1692" then %~CAIXA D'AGUA 1000l~
      when "1693" then %~MONTAGEM DE TANQUE DE ACO PARAFUSADO, INCLUINDO TESTES E ACABAMENTOS PARA CAPACIDADE DE 3.000M3~
      when "17"   then %~SERVICOS AMBIENTAIS, RECUPERACAO DE AREAS DEGRADADAS E PAISAGISMO~
      when "1701" then %~PREPARACAO DO TERRENO E CORRECOES~
      when "1702" then %~CERCAS E INFRAESTRUTURA~
      when "1703" then %~PLANTIO DE GRAMAS, MUDAS ORNAMENTAIS E ARVORES~
      when "1704" then %~SISTEMAS DE IRRIGACAO~
      when "1705" then %~CONTROLE DE INSETOS E PRAGAS~
      when "1706" then %~MANUTENCAO DE AREAS E PERIODO DE PEGA~
      when "1707" then %~SUBESTA€OES AEREAS TIPO MONOPOSTE ( MONTAGEM E INST.)~
      when "1708" then %~SUBESTA€OES AEREAS TIPO MONOPOSTE ( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM EINST.)~
      when "1709" then %~SUBESTA€OES AEREAS TIPO BANCO ( MONTAGEM E INST.)~
      when "1710" then %~SUBESTA€OES AEREAS TIPO BANCO (FORNEC. DE MATERIAIS E EQUIP.,MONTAGEM E INST.)~
      when "1711" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES ELEVATORIAS DE AGUA ( MONTAGEM EINST.)~
      when "1712" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES ELEVATORIAS DE AGUA ( FORNEC. DEMATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1713" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ ESTA€OES ELEVATORIAS DE ESGOTO, EM PO€O SECO ( MONTAGEM E INST.)~
      when "1714" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ ESTA€OES ELEVATORIAS DE ESGOTO, EM PO€O SECO ( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1715" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ ESTA€OES ELEVATORIAS DE ESGOTO, EM PO€O UMIDO, C/ BOMBAS SUBMERSIVEIS (MONTAGEM E INST.)~
      when "1716" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ ESTA€OES ELEVATORIAS DE ESGOTO, EM PO€O UMIDO, C/ BOMBAS SUBMERSIVEIS ( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1717" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES DE TRATAMENTO DE AGUA ( MONTAGEME INST.)~
      when "1718" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES DE TRATAMENTO DE AGUA ( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1719" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES DE TRATAMENTO DE ESGOTO ( MONTAGEM E INST.)~
      when "1720" then %~SISTEMAS DE DISTRIBUI€AO DE FOR€A P/ESTA€OES DE TRATAMENTO DE ESGOTO ( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1721" then %~SISTEMAS DE ILUMINA€AO EM PREDIOS E AREAS EXTERNAS (MONTAGEM E INST.)~
      when "1722" then %~SISTEMAS DE ILUMINA€AO EM PREDIOS E AREAS EXTERNAS( FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1723" then %~SISTEMAS DE PROTE€AO CONTRA DESCARGAS ATMOSFERICAS (SPDA) (MONTAGEM E INST.)~
      when "1724" then %~SISTEMAS DE PROTE€AO CONTRA DESCARGAS ATMOSFERICAS (SPDA) (FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1725" then %~SISTEMAS DE ENERGIA DE EMERGENCIA (MONTAGEM E INST.)~
      when "1726" then %~SISTEMAS DE ENERGIA DE EMERGENCIA (FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1727" then %~INSTALA€OES ELETRICAS DO SISTEMA (FORNEC. DE MATERIAIS E EQUIP., MONTAGEM E INST.)~
      when "1790" then %~SERVI€OS NAO CODIFICADOS~
      when "18"   then %~URBANIZACAO~
      when "1801" then %~PAVIMENTACAO DE PASSEIOS~
      when "1802" then %~PAVIMENTACAO DE RUAS~
      when "1803" then %~REGULARIZACAO E REVESTIMENTO DE SUPERFICIES~
      when "1804" then %~CERCA / MURO~
      when "1805" then %~PORTAO~
      when "1806" then %~GRAMADO / ARBORIZACAO~
      when "1890" then %~SERVICOS NAO CODIFICADOS~
      when "1894" then %~SERVICOS DE CORTE DE PAVIMENTACAO ASFALTICA INCLUINDO EQUIPAMENTO, COMBUSTIVELINCLUINDO OPERADOR~
      when "19"   then %~INSTALACOES MECANICAS~
      when "1901" then %~CONJUNTO MOTO-BOMBA (MONTAGEM E INST.)~
      when "1902" then %~TALHA MANUAL C/ TROLE MANUAL  (MONTAGEM E INST.)~
      when "1903" then %~TALHA MANUAL C/ TROLE ELETRICO  (MONTAGEM E INST.)~
      when "1904" then %~TALHA ELETRICA C/ TROLE MANUAL / ELETRICO (MONTAGEM E INST.)~
      when "1905" then %~PORTICO ROLANTE ( MONTAGEM E INST.)~
      when "1906" then %~PONTE ROLANTE C/ TALHA MANUAL (MONTAGEM E INST.)~
      when "1907" then %~PONTE ROLANTE C/ TALHA ELETRICA (MONTAGEM E INST.)~
      when "1908" then %~BOMBA PARAFUSO (MONTAGEM E INST.)~
      when "1909" then %~ELEMENTOS P/ FIXACAO E SUPORTE~
      when "1990" then %~SERVICOS NAO CODIFICADOS~
      when "20"   then %~LIGACOES PREDIAIS DE AGUA~
      when "2001" then %~INTERLIGACAO DE REDE NOVA COM REDE EXISTENTE~
      when "2002" then %~RAMAL PREDIAL DE AGUA - CATEGORIAS 1 E 2 DE SOLO~
      when "2003" then %~RAMAL PREDIAL DE AGUA - EM LAMA~
      when "2004" then %~RAMAL PREDIAL DE AGUA - EM ROCHA~
      when "2090" then %~SERVICOS NAO CODIFICADOS~
      when "21"   then %~LIGACOES PREDIAIS DE ESGOTO~
      when "2101" then %~RAMAL PREDIAL - ESGOTO~
      when "2102" then %~LIGACOES INTRA-DOMICILIARES~
      when "2103" then %~SISTEMA CONDOMINIAL~
      when "2104" then %~RAMAL PREDIAL - ESGOTO~
      when "2105" then %~RAMAL PREDIAL - ESGOTO~
      when "2190" then %~SERVICOS NAO CODIFICADOS~
      when "22"   then %~ESTACAO DE TRATAMENTO - AGUA E ESGOTO~
      when "2201" then %~CANAL DE CHEGADA~
      when "2202" then %~FLOCULADORES~
      when "2203" then %~DECANTADORES~
      when "2204" then %~FILTROS~
      when "2205" then %~CASA DE QUIMICA E CASA DE CLORACAO~
      when "2206" then %~COMPORTAS E VERTEDORES~
      when "2207" then %~GRADES MANUAIS P/ PRE-TRATAMENTO DE ESGOTOS / AGUA BRUTA~
      when "2208" then %~GRADES MECANIZADAS P/PRE-TRATAMENTO DE ESGOTOS (MONTAGEM E INST)~
      when "2209" then %~DESARENADORES MECANICOS (MONTAGEM E INST.)~
      when "2210" then %~RADORES DE EIXO VERTICAL C/ ESTRUTURA FIXA (MONTAGEM E INST.)~
      when "2210" then %~EQUIPAMENTOS~
      when "2211" then %~AERADORES DE EIXO VERTICAL  C/ ESTRUTURA FLUTUANTE (MONTAGEM E INST.)~
      when "2212" then %~AERADORES DE EIXO VERTICAL SUBMERSIVEIS (MONTAGEM E INST.)~
      when "2213" then %~REMOVEDORES DE LODO P/ TANQUES RETANGULARES (MONTAGEM E INST.)~
      when "2214" then %~REMOVEDORES DE LODO P/ TANQUES CIRCULARES (MONTAGEM E INST.)~
      when "2215" then %~ESPESSADORES DE LODO (MONTAGEM E INST.)~
      when "2290" then %~SERVICOS NAO CODIFICADOS~
      when "23"   then %~AUTOMACAO DE SISTEMAS~
      when "2301" then %~AUTOMACAO DE SISTEMAS DE ABASTECIMENTO DE AGUA (MONTAGEM E INSTALACAO)~
      when "2302" then %~AUTOMACAO DE SISTEMAS DE ABASTECIMENTO DE AGUA (FORNEC. DOS MATERIAIS E EQUIP.,MONTAGEM E INSTALACAO)~
      when "2303" then %~AUTOMACAO DE SISTEMAS DE ESGOTAMENTO SANITARIO (MONTAGEM E INSTALACAO)~
      when "2304" then %~AUTOMACAO DE SISTEMAS DE ESGOTAMENTO SANITARIO (FORNEC. DOS MATERIAS E EQUIP.,MONTAGEM E INSTALACAO)~
      when "2390" then %~SERVICOS NAO CODIFICADOS~
      when "24"   then %~SERVICOS PARA PERFURACAO DE POCOS~
      when "2410" then %~ESTUDOS HIDROGEOLOGICOS (LOCACAO) DISTANCIA MENOR QUE 200 KM~
      when "2420" then %~ESTUDOS GEOFISICOS COM ELETRORESISTIVIDADE (LOCACAO) DISTANCIA MENOR QUE 200 KM~
      when "2421" then %~ESTUDOS GEOFISICOS COM ELETRORESISTIVIDADE (LOCACAO) DISTANCIA ENTRE 200KM E 500KM~
      when "2422" then %~ESTUDOS GEOFISICOS COM ELETRORESISTIVIDADE (LOCACAO) DISTANCIA MAIOR QUE 500KM~
      when "2423" then %~ESTUDOS GEOFISICOS COM VLF (LOCACAO) DISTANCIA MENOR QUE 200 KM~
      when "2424" then %~ESTUDOS GEOFISICOS COM VLF (LOCACAO) DISTANCIA ENTRE 200KM E 500KM~
      when "2425" then %~ESTUDOS GEOFISICOS COM VLF (LOCACAO) DISTANCIA MAIOR QUE 500KM~
      when "2430" then %~ACOMPANHAMENTO TECNICO EMPREITADO (PERFURACAO EM ROCHA - CRISTALINA/CALCARIA/META-SEDIMENTAR/QUATZITICA)~
      when "2440" then %~TRANSPORTES AUXILIARES~
      when "2450" then %~INSTALACAO DE UNIDADE DE PERFURACAO PERCUSSORA~
      when "2460" then %~PERFURACAO EM ROCHA SEDIMENTAR~
      when "2470" then %~DESCIDA DE REVESTIMENTO (CRAVACAO) EM ROCHA DECOMPOSTA (CALCARIO / CRISTALINO/ META-SEDIMENTO / QUARTZITO )~
      when "2480" then %~DESENVOLVIMENTO OU TESTE COM SONDA PERCUSSORA~
      when "2490" then %~COLETA DE AGUA E ANALISE LABORATORIAL~
      when "25"   then %~SERVICOS DE CONSERVACAO / MANUTENCAO / OPERACAO PARA S.A.A.'S E S.E.S.'S~
      when "2501" then %~CORRECAO DE VAZAMENTOS EM ADUTORAS REDES E RAMAIS~
      when "2502" then %~MANUTENCAO DE REDE~
      when "2503" then %~MANUTENCAO DE RAMAIS~
      when "2504" then %~MANUTENCAO DE REGISTRO DE MANOBRA E CAIXA NA REDE DISTRIBUICAO~
      when "2505" then %~SUBSTITUICAO DE RAMAL~
      when "2506" then %~AMPLIACAO DIAMETRO DE RAMAL~
      when "2507" then %~SERVICOS TÉCNICOS / COLETA E TRANSPORTE DE AMOSTRAS~
      when "2509" then %~PESQUISAS E VERIFICACOES~
      when "2510" then %~EXECUCAO DE CONSERTOS EM RAMAL,COLETOR,INTERCEPTOR E LINHA DE RECALQUE (produtividade das equipes para (I)=80%, p/RMS=70%)~
      when "2511" then %~AMPLIACAO DE REDE COLETORA E RAMAL PREDIAL DE ESGOTO~
      when "2512" then %~REMANEJAMENTRO DE REDE COLETORA E RAMAL DE ESGOTO~
      when "2513" then %~DESOBSTRUCAO DE REDE/RAMAL PREDIAL~
      when "2514" then %~LIMPEZA DE POCOS DE VISITAS E CAIXAS DE INSPACAO~
      when "2516" then %~CONSTRUCAO E CONSERTO EM POCOS DE VISITA E CAIXA DE INSPECAO~
      when "2517" then %~SERVICOS EM TAMPA E TAMPOES PARA CAIXAS E PV'S~
      when "2518" then %~LIGACAO PREDIAL DE ESGOTO~
      when "2519" then %~AMPLIACAO DIAMETRO DO RAMAL~
      when "2520" then %~SERVICOS TÉCNICOS / ADMINISTRATIVOS - ESGOTO~
      when "2590" then %~SERVICOS NAO CODIFICADOS~
      when "26"   then %~ATIVIDADES DA AREA COMERCIAL~
      when "2601" then %~VISITA, ENTREGA DE CONTA E LEITURA DE HIDROMETRO~
      when "2602" then %~AFERICAO DE HIDROMETRO~
      when "2603" then %~SUPRESSAO DE RAMAL DE AGUA~
      when "2604" then %~INSTALACAO DE HIDROMETRO~
      when "2605" then %~SUBSTITUICAO HIDROMETRO PARA MANUTENCAO~
      when "2606" then %~LIGACAO DE AGUA~
      when "2607" then %~REATIVACAO DE FORNECIMENTO DE AGUA~
      when "2608" then %~TRANSFERENCIA DE RAMAL E/OU HIDROMETRO~
      when "2609" then %~SUSPENSAO DE FORNECIMENTO DE AGUA~
      when "2611" then %~SERVICOS TÉNICOS / ADMINISTRATIVOS - COMERCIAL~
      when "2612" then %~CORRECAO DE IRREGULARIDADES~
      when "2620" then %~RECOMPOSICAO DE PAVIMENTACAO - RMS - COM APOIO DE CAMINHAO PARA DESLOCAMENTO DAS EQUIPES~
      when "2690" then %~SERVICOS NAO CODIFICADOS~
      when "30"   then %~RECURSOS HUMANOS E MATERIAIS~
      when "3001" then %~RECURSOS HUMANOS~
      when "3002" then %~RECURSOS MATERIAIS~
      when "3090" then %~SERVICOS NAO CODIFICADOS~
      when "31"   then %~SERVICOS TOPOGRAFICOS~
      when "3101" then %~LEVANTAMENTOS PLANIALTIMETRICOS CADASTRAIS~
      when "3102" then %~OUTROS SERVICOS TOPOGRAFICOS~
      when "3190" then %~SERVICOS NAO CODIFICADOS~
      when "32"   then %~SERVICOS GEOTECNICOS~
      when "3201" then %~SONDAGEM A TRADO (NBR  - 09603)~
      when "3202" then %~SONDAGEM DE SIMPLES RECONHECIMENTO DOS SOLOS (A PERCUSSAO)NBR 06484~
      when "3203" then %~ABERTURA DE POCO DE INSPECAO EM SOLO (NBR  - 09604)~
      when "3204" then %~SONDAGEM ROTATIVA~
      when "3205" then %~MOBILIZACAO E TRANSPORTE~
      when "3290" then %~SERVICOS NAO CODIFICADOS~
      when "33"   then %~ANALISES FISICO-QUIMICAS E BACTERIOLOGICAS P/ AGUA E/OU ESGOTO~
      when "3301" then %~ANALISE DE AMOSTRAS DE AGUA~
      when "3302" then %~ANALISES DE AMOSTRAS BRUTAS DE LODO E/OU SOLO P/ RECEBER O LODO~
      when "3303" then %~MOBILIZACAO / TRANSPORTE P/ COLETA~
      when "3304" then %~CARACTERIZACAO MICROBIOLOGICA E PARASITOLOGICA EM AMOSTRA BRUTA DE LODO~
      when "3390" then %~SERVICOS NAO CODIFICADOS~
      when "34"   then %~ENSAIOS P/ INVESTIGACAO E CONTROLE~
      when "3401" then %~ENSAIOS LABORATORIAIS EM AMOSTRAS DE SOLO~
      when "3402" then %~ENSAIOS LABORATORIAIS EM AGREGADO MIUDO  P/ CONCRETO~
      when "3403" then %~ENSAIOS LABORATORIAIS EM ROCHA OU AGREGADO GRAUDO~
      when "3404" then %~RETIRADAS DE AMOSTRAS DE SOLO~
      when "3405" then %~ENSAIOS P/ CONTROLE DE OBRAS~
      when "3490" then %~SERVICOS NAO CODIFICADOS~
      when "40"   then %~SERVICOS DE COMISSIONAMENTO, PRE-OPERACAO, PARTIDA E OPERACAO ASSISTIDA~
      when "41"   then %~COMISSIONAMENTO DE SISTEMAS~
      when "4101" then %~COMISSIONAMENTO DE SISTEMAS DE ESTACOES ELEVATORIAS~
      when "4105" then %~COMISSIONAMENTO DE ETE (ESTACAO DE TRATAMENTO DE ESGOTO)~
      when "4106" then %~COMISSIONAMENTO DE ETA (ESTACAO DE TRATAMENTO DE AGUA)~
      when "42"   then %~PRE-OPERACAO, PARTIDA DE SISTEMAS~
      when "4201" then %~PRE-OPERACAO, PARTIDA DE SISTEMAS DE AGUA~
      when "4205" then %~PRE-OPERACAO, PARTIDA DE SISTEMAS DE ESGOTO~
      when "43"   then %~OPERACAO ASSISTIDA E TREINAMENTO DE OPERADORES~
      when "50"   then %~COMPOSICOES AUXILIARES~
      when "5010" then %~PREPARO DE ARGAMASSAS~
      when "5020" then %~CONCRETO~
      when "5021" then %~CONCRETO CONVENCIONAL~
      when "5022" then %~CONCRETO CICLOPICO~
      when "5023" then %~CONCRETO COMPACTADO C/ ROLO ( CCR )~
      when "5024" then %~CONCRETO PROJETADO~
      when "5025" then %~ARGAMASSA PROJETADA~
      when "5026" then %~CONCRETO ARMADO~
      when "5027" then %~CONCRETO PAVIMENTACAO~
      when "5030" then %~PECAS PRE-MOLDADAS~
      when "5040" then %~APOIO DIVERSOS~
      when "5050" then %~DIVERSAS FORMAS~
      when "5060" then %~ALVENARIAS E DIVISORIAS~
      when "5070" then %~TRATAMENTOS~
      when "5080" then %~SERVICOS COMPLEMENTARES~
      when "5090" then %~INSTALACOES HIDRO-SANITARIAS~
      when "5091" then %~FOSSAS E SUMIDOUROS~
      when "55"   then %~COMPOSICOES AUXILIARES DAS DESPESAS INDIRETAS~
      when "5501" then %~LIMPEZA E PREPARO DO TERRENO~
      when "5502" then %~LOCACAO DO ARRANJO~
      when "5503" then %~ACESSOS~
      when "5504" then %~EDIFICACAOES ADMINISTRATIVAS E INDUSTRIAIS, ALOJAMENTOS E APOIO~
      when "5505" then %~FECHAMENTO DA AREA DO CANTEIRO~
      when "5506" then %~SERVICOS DIVERSOS~
      when "56"   then %~COMPOSICOES AUXILIARES SEM MAO DE OBRA PARA COMPOR O PRECOS DOS SERVICOS POR EQUIPE~
      when "5601" then %~ARGAMASSAS E CONCRETO~
      when "5602" then %~CONCRETO~
      when "5603" then %~PREPARO DE ARGAMASSA PARA CONCRETO~
      when "57"   then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA PARA PRODUCAO (HORISTAS)~
      when "5701" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5702" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "5703" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "5704" then %~COMPOSICAO REMUNERACAO - PROFISSIONAL DE NIVEL SUPERIOR~
      when "5710" then %~COMPOSICOES DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTA~
      when "5711" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5712" then %~COMPOSICAO REMUNERACAO - TECNICO OPERACIONAL E DE SUPORTE~
      when "5713" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "5714" then %~COMPOSICAO REMUNERACAO - PROFISSIONAL DE NIVEL SUPERIOR~
      when "5720" then %~COMPOSICOES DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTA (I) = INTERIOR~
      when "5721" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5722" then %~COMPOSICAO REMUNERACAO - TECNICO OPERACIONAL E DE SUPORTE~
      when "5723" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "5724" then %~COMPOSICAO REMUNERACAO - PROFISSIONAL DE NIVEL SUPERIOR~
      when "5740" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUI INSALUB~
      when "5741" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5742" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "5750" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I) = INTERIOR - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI E INSALUBRIDADE EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "5751" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5752" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "5770" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUE ENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, FERRAMENTAS E INSALUBRIDADE (OU PERICULOSIDADE)~
      when "5771" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5772" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "5780" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I) = INTERIOR - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, FERRAMENTAS E INSALUBRIDADE EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "5781" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "5782" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "5904" then %~COMPOSICAO DE CUSTOS PARA CONSUMO COMBUSTIVEL - (Considerando 12km/hora, em 8horas/dia, temos 96 km/dia e com 27,5dias/mes dando um total de 2.640 km/mes)~
      when "5905" then %~COMPOSICAO DOS CUSTOS PARA LOCACAO POR MES DO VEICULO PAGO POR KM RODADO (SEMMOTORISTA, 2640 KM/MES, INCLUINDO COMBUSTIVEL)~
      when "5906" then %~COMPOSICAO DOS CUSTOS PARA LOCACAO POR MES DO VEICULO (INCLUINDO COMBUSTIVEL PARA 2640KM/MES E ESTACAO MOVEL VEICULAR SEM MOTORISTA)~
      when "5990" then %~COMPOSICOES AUXILIARES DIVERSAS~
      when "60"   then %~INSTALACOES ELETRICAS~
      when "6001" then %~ELETRODUTO FLEXIVEL SEALTUBO 4"~
      when "6002" then %~CONEXOES~
      when "6003" then %~FIOS E CABOS~
      when "6004" then %~CAIXAS~
      when "6005" then %~QUADROS E DISJUNTORES~
      when "6006" then %~INTERRUPTORES E TOMADAS~
      when "6007" then %~LUMINARIA, BOCAL E LAMPADAS~
      when "6008" then %~ELETRIFICACAO E ILUMINACAO~
      when "6009" then %~LUMINARIA EXTERNA~
      when "6010" then %~TRANSFORMADORES~
      when "6011" then %~MONTAGEM DE GRUPO GERADOR~
      when "6012" then %~SISTEMAS DE PROTECAO - ATERRAMENTO~
      when "6013" then %~SERVICOS DIVERSOS~
      when "6014" then %~MONTAGEM E INSTALACAO DE PAINEL~
      when "6020" then %~CCM - CENTRO DE CONTROLE DE MOTORES~
      when "70"   then %~COMPOSICOES DE PRECOS AUXILIARES DAS EQUIPES POR MES (estruturadas de acordo com:tipo de servi‡o [ferramentas/EPI], local [insalubridade/periculosidade],tipo de veiculo [Moto/Gol/D 20].(PRODUCAO)~
      when "7001" then %~MANUTENCAO E CORRECAO DE VAZAMENTO EM ADUTORAS, REDES DE DISTRIBUICAO, RAMAISPREDIAIS E CAIXAS DE HIDROMETRO~
      when "7002" then %~SERVICOS DE FISCALIZACAO DAS ADUTORAS E REDES DE DISTRIBUICAO NO CAMPO~
      when "7003" then %~SERVICOS DE APOIO OPERACIONAL DE CAMPO NAS ADUTORAS E REDES DE DISTRIBUICAO~
      when "7004" then %~SERVICOS DE PITOMETRIA (AGENTE DE MEDICAO)~
      when "7005" then %~DETECCAO DE VAZAMENTOS NOTURNOS E EXECUCAO DE MANOBRAS (este grupo de servi‡oses igual ao grupo 700100 + AN-ADICIONAL NOTURNO)~
      when "7006" then %~SERVICO DE CADASTRAMENTO - AGUA~
      when "71"   then %~ATIVIDADES A SEREM FATURADAS NAS UNIDADES MOVEIS DE ESGOTO (Estas atividades exijem pagamento de insalubridade de 40%, e a depender do local a EPI deve serespecifica).~
      when "7101" then %~SERVICOS DE MANUTENCAO DE REDE COLETORA E RAMAIS PREDIAIS DE ESGOTO - (amplia‡ao, remanejamento, manuten‡ao PV e CX.,etc.)~
      when "7102" then %~SERVICOS DE FISCALIZACAO NOS INTERCEPTORAS, REDES COLETORAS DE ESGOTO, ETC., NO CAMPO~
      when "7103" then %~SERVICOS DE APOIO OPERACIONAL DE CAMPO NAS REDES COLETORAS DE ESGOTO~
      when "7104" then %~SERVICOS DE DESOBSTRUCAO DE REDE COLETORA E RAMAIS PREDIAIS DE ESGOTO~
      when "7105" then %~DETECCAO DE DESOBSTRUCAO NOTURNO E EXECUCAO DE MANOBRAS (este grupo de servi‡os es igual ao grupo 700100 + AN-ADICIONAL NOTURNO)~
      when "7106" then %~SERVICOS DE OPERACAO DE EEE/ETE~
      when "7108" then %~SERVICOS DE LIMPEZA DE ESTACAO ELEVATORIA DE ESGOTO~
      when "7109" then %~SERVICOS DE OPERACAO DE EQUIPAMENTOS PARA DESOBSTRUCOES~
      when "7110" then %~SERVICOS DE OPERACAO DE EQUIPAMENTOS - APOIO CAMPO AGUA (Clasificados como Mensalistas)**~
      when "7120" then %~SERVICOS DE EQUIPE PARA ATIVIDADES MISTA (DIURNA/NOTURNA - 12X36) POR MES~
      when "72"   then %~ATIVIDADES A SEREM FATURADAS NA AREA TÉCNICA COMERCIAL~
      when "7201" then %~SERVICOS DE CORTE, SUPRESSAO, RESTABELECIEMTO DO FORNECIMENTO DE AGUA. INSTALACAO, SUBSTITUICAO, TRANSFERENCIA, RETIRADA E AFERICAO DE HIDROMETROS E LIGACOES DOMICILIARES.~
      when "7202" then %~SERVICOS DE LEITURA E ENTREGA DE CONTAS DOS HIDROMETROS~
      when "7203" then %~SERVICOS DE COLETA E TRANSPORTE DE AMOSTRAS DE AGUA E ESGOTO (COLETA COM MOTO4.700 KM/MES, COLETA COM CARRO 6.000 KM/MES)~
      when "7212" then %~SERVICOS DE VERIFICACOES~
      when "7220" then %~SERVICOS DE REPAVIMENTACAO PARA REGIAO METROPOLITANA DE SALVADOR~
      when "7221" then %~EQUIPE DE 1 ELEMENTO COM F-4000~
      when "73"   then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUE ENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO E EPI~
      when "7301" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7302" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7303" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "7310" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUE ENCARGOS, FARDA, ALIMENTACAO E EPI EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "7311" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7312" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7313" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "7330" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUE ENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI E FERRAMENTAS~
      when "7331" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7332" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7333" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "7340" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI E FERRAMENTAS EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "7341" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7342" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7410" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - C/ ADICIONAL NOTURNO~
      when "7411" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7412" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7420" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUI ADICIONAL NOTURNO~
      when "7421" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7422" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7440" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUE ENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, INSALUBRIDADE E ADICIONAL NOTURNO~
      when "7441" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7442" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7450" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INC~
      when "7451" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7452" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7470" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUE ENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, FERRAMENTAS, INSALUBRIDADE E ADICIONALNOTURNO~
      when "7471" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7472" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7480" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, FERRAMENTAS, INSALUBRIDADE E ADICIONALNOTURNO EM LOCAIS SEM TRANSPORTE URBANA~
      when "7481" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7482" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "75"   then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUI ADICIONAL NOTURNO~
      when "7501" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7502" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7510" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUI ADICIONAL NOTURNO~
      when "7511" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7512" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7530" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - INCLUI ADICIONAL NOTURNO~
      when "7531" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7532" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7540" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - INCLUI ADICIONAL NOTURNO~
      when "7541" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7542" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7560" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TRABALHO AOS SABADOS E DOMINGOS~
      when "7561" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7562" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7563" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "7570" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TRABALHO AOS SABADOS E DOMINGOS~
      when "7571" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7572" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7573" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "7590" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TRABALHOS AOSSABADOS E DOMINGOS~
      when "7591" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7592" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "76"   then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TRABALHO AOS SABADOS E DOMINGOS~
      when "7601" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7602" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7620" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TRABALHO AOS SABADOS E DOMINGOS~
      when "7621" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7622" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7630" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TRABALHO AOS SABADOS E DOMINGOS~
      when "7631" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7632" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7650" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TRABALHO AOS SABADOS E DOMINGOS~
      when "7651" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7652" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7660" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TRABALHO AOS SABADOS E DOMINGOS~
      when "7661" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7662" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7680" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TRABALHO AOS SABADOS E DOMINGOS~
      when "7681" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "7682" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "7690" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TRABALHO AOS SABADOS E DOMINGOS~
      when "7691" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "80"   then %~COMPOSICOES DE PRECOS AUXILIARES DAS EQUIPES POR HORA (considerando 44 horas trabalhadas com 4,348 semana por mes, tem 191,32 horas/mes, menos 20% dos tempos improdutivos (SIPSAP),da 0,00653 mes/hora~
      when "8001" then %~MANUTENCAO E CORRECAO DE VAZAMENTO EM ADUTORAS, REDES DE DISTRIBUICAO, RAMAISPREDIAIS E CAIXAS DE HIDROMETRO~
      when "8002" then %~SERVICOS DE FISCALIZACAO DAS ADUTORAS E REDES DE DISTRIBUICAO NO CAMPO~
      when "8003" then %~SERVICOS DE APOIO OPERACIONAL DE CAMPO NAS ADUTORAS E REDES DE DISTRIBUICAO~
      when "8004" then %~SERVICOS DE PITOMETRIA~
      when "8005" then %~SERVICOS OPERACIONAIS DE S.A.A.~
      when "81"   then %~ATIVIDADES A SEREM FATURADAS NAS UNIDADES MOVEIS DE ESGOTO (Estas atividades exijem pagamento de insalubridade de 40%, e a depender do local a EPI deve serespecifica).~
      when "8101" then %~SERVICOS DE MANUTENCAO DE REDE COLETORA E RAMAIS PREDIAIS DE ESGOTO - (amplia‡ao, remanejamento, manuten‡ao PV e CX.,etc.)~
      when "8102" then %~SERVICOS DE FISCAL EM REDES E RAMAIS DE ESGOTO~
      when "8104" then %~SERVICOS DE DESOBSTRUCAO DE REDES COLETORA E RAMAIS PREDIAIS DE ESGOTO~
      when "8109" then %~SERVICOS DE OPERACAO DE EQUIPAMENTOS PARA DESOBSTRUCOES~
      when "82"   then %~ATIVIDADES A SEREM FATURADAS NA AREA TÉCNICA COMERCIAL (PRODUCAO)~
      when "8201" then %~SERVICOS DE CORTE/SUPRESSAO/INSTALACAO/SUBSTITUICAO/TRANSFERENCIA/RETIRADA/AFERICAO DE HIDROMETROS E LIGACOES DOMICILIARES~
      when "8202" then %~SERVICOS DE LEITURISTA E ENTREGA DE CONTAS DOS HIDROMETROS~
      when "8203" then %~SERVICOS DE COLETA E TRANSPORTE DE AMOSTRAS DE AGUA E ESGOTO (considerando umamedia de 6.000 km rodados por mes para carro e 4.700 km para moto)~
      when "8212" then %~SERVICOS DE VERIFICACOES~
      when "83"   then %~ATIVIDADES PAGAS POR HORAS EXTRAS TIPO 50 % - MENSALISTA~
      when "8310" then %~ATIVIDADES PAGAS POR HORAS EXTRAS TIPO 70 % - MENSALISTAS~
      when "8320" then %~ATIVIDADES PAGAS POR HORAS EXTRAS TIPO 110 % - MENSALISTAS~
      when "8340" then %~ATIVIDADES PAGAS POR HORAS EXTRAS TIPO 80 % - MENSALISTAS~
      when "8350" then %~ATIVIDADES PAGAS POR HORAS EXTRAS TIPO 150 % - MENSALISTAS~
      when "84"   then %~ATIVIDADES A SEREM FATURADAS EM UNIDADES FIXAS DE AGUA - MENSALISTAS~
      when "85"   then %~ATIVIDADES A SEREM FATURADAS EM UNIDADES FIXAS DE ESGOTO~
      when "86"   then %~ATIVIDADES A SEREM FATURADAS NA REPAVIMENTACAO~
      when "90"   then %~ATIVIDADES A SEREM FATURADAS NA AREA OPERACAO E MANUTENCAO DAS UNIDADES FIXAS- POR TURNO - (4turnos 6hs p/24 horas/dias, 6hs*24 dias=144 h/m, 5 turnos*24 dias=120 turno/mes, 5/120=0,00417m/turno.~
      when "93"   then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO E EPI~
      when "9302" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9310" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I) - INTERIOR - TURNO - INCLUE ENCARGOS, FARDA,  ALIMENTACAO E EPI EM LOCALIDADES SEM TRANSPORTEURBANO~
      when "9311" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9312" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9330" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI E FERRAMENTAS~
      when "9331" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9332" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9340" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI E FERRAMENTAS~
      when "9341" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9342" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9410" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO E ADICIONAL NOTURNO~
      when "9411" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9412" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9413" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "9420" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO E ADICIONAL NOTURNO EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "9421" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9422" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9423" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "9440" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, INSALUBRIDADE E ADICIONAL NOTURNO~
      when "9441" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9442" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9450" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, INSALUBRIDADE E ADICIONAL NOTURNO EM LOCAIS SEM TRANSPORTE URBANO~
      when "9451" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9452" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9470" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, FERRAMENTAS, INSALUBRIDADE E ADICIONAL NOTURNO~
      when "9471" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9472" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9480" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, FERRAMENTAS, INSALUBRIDADE E ADICIONAL NOTURNO EM LOCAIS SEM TRANPORTE~
      when "9481" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9482" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "95"   then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI E ADICIONAL NOTURNO~
      when "9501" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9502" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9510" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI E ADICIONAL NOTURNO EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "9511" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9512" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9530" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, FERRAMENTAS E ADICIONAL NOTURNO~
      when "9531" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9532" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9540" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, FERRAMENTAS E ADICIONAL NOTURNOEM LOCALIDADES SEM TRANSPORTE URBANO~
      when "9541" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9542" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9710" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE E ALIMENTACAO~
      when "9713" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "9720" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA E ALIMENTACAO EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "9723" then %~COMPOSICAO REMUNERACAO - AGENTE ADMINISTRATIVO~
      when "9740" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI E INSALUBRIDADE~
      when "9741" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9742" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9750" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI E INSALUBRIDADE EM LOCALIDADES SEM TRANSPORTE URBANO~
      when "9751" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9752" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9770" then %~COMPOSICAO DE PRECOS - REMUNERACAO DE MAO DE OBRA MENSALISTAS - TURNO - INCLUEENCARGOS, FARDA, TRANSPORTE, ALIMENTACAO, EPI, FERRAMENTAS E INSALUBRIDADE~
      when "9771" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9772" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "9780" then %~COMPOSICAO DE PRECOS - REMUNERACAO MAO DE OBRA MENSALISTAS (I)= INTERIOR - TURNO - INCLUE ENCARGOS, FARDA, ALIMENTACAO, EPI, FERRAMENTAS E INSALUBRIDADE EMLOCALIDADES SEM TRANSPORTE URBANO~
      when "9781" then %~COMPOSICAO REMUNERACAO - AGENTE OPERACIONAL~
      when "9782" then %~COMPOSICAO REMUNERACAO - TÉCNICO OPERACIONAL E DE SUPORTE~
      when "98"   then %~COMPOSICOES PARA EQUIPES DE PLANTOES OPERACIONAIS~
      when "9801" then %~SISTEMAS DE AGUA~
      when "9804" then %~SISTEMAS DE ESGOTO~
      when "9808" then %~OUTROS SISTEMAS / PLANTOES~
    else
      self
    end
  end

  def tipo_de_composicao_caern_por_extenso
    case self
      when %~101~ then %~SERVIÇOS PRELIMINARES~
      when %~102~ then %~TRABALHOS EM TERRA~
      when %~103~ then %~FUNDAÇÕES~
      when %~104~ then %~ESTRUTURAS~
      when %~105~ then %~PAREDES E PAINEIS~
      when %~106~ then %~INSTALAÇÕES ELÉTRICAS~
      when %~107~ then %~INSTALAÇÕES HIDROSSANITÁRIAS~
      when %~108~ then %~COBERTURA~
      when %~109~ then %~ESQUADRIAS~
      when %~110~ then %~REVESTIMENTOS~
      when %~111~ then %~PAVIMENTAÇÃO~
      when %~112~ then %~PINTURA~
      when %~113~ then %~ARGAMASSA~
      when %~114~ then %~INSTALAÇÕES DE COMBATE CONTRA INCÊNDIO~
      when %~117~ then %~DRENAGEM (BOCA DE LOBO E POÇO DE VISITA)~
      when %~120~ then %~DEMOLIÇÕES E RETIRADAS~
      when %~121~ then %~DIVERSOS~
      when %~122~ then %~VIDROS~
      when %~201~ then %~SERVIÇOS PRELIMINARES~
      when %~202~ then %~TRABALHOS EM TERRA~
      when %~204~ then %~ESTRUTURAS~
      when %~205~ then %~PAREDES E PAINEIS~
      when %~206~ then %~TUBOS, CAIXAS E POÇOS~
      when %~207~ then %~INSTALAÇÕES ELÉTRICAS~
      when %~209~ then %~INSTALAÇÕES ELETROMECÂNICAS~
      when %~210~ then %~LIGAÇÕES PREDIAIS~
      when %~212~ then %~ESQUADRIAS~
      when %~214~ then %~REVESTIMENTOS~
      when %~215~ then %~PAVIMENTAÇÃO~
      when %~216~ then %~PINTURAS~
      when %~220~ then %~OBRAS DE CONTENÇÃO~
      when %~221~ then %~DEMOLIÇÕES~
      when %~222~ then %~DIVERSOS~
      when %~224~ then %~SERVIÇOS ESPECIAIS~
      else
        self
      end
  end

  def retirar_ponto_zero
    if self[-2, 2] == ".0"
      self[-2, 2] = ""
      self
    else
      self
    end
  end



end
