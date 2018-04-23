tipo_de_composicao_sinapi_por_extenso = function (tipo) {
  switch (tipo) {
    case "ASTU": return "ASTU - ASSENTAMENTO DE TUBOS E PECAS"; break
    case "CANT": return "CANT - CANTEIRO DE OBRAS"; break
    case "COBE": return "COBE - COBERTURA"; break
    case "CHOR": return "CHOR - CUSTOS HORÁRIOS DE MÁQUINAS E EQUIPAMENTOS"; break
    case "DROP": return "DROP - DRENAGEM/OBRAS DE CONTENÇÃO / POÇOS DE VISITA E CAIXAS"; break
    case "ESCO": return "ESCO - ESCORAMENTO"; break
    case "ESQV": return "ESQV - ESQUADRIAS/FERRAGENS/VIDROS"; break
    case "FOMA": return "FOMA - FORNECIMENTO DE MATERIAIS E EQUIPAMENTOS"; break
    case "FUES": return "FUES - FUNDAÇÕES E ESTRUTURAS"; break
    case "IMPE": return "IMPE - IMPERMEABILIZAÇÕES E PROTEÇÕES DIVERSAS"; break
    case "INEL": return "INEL - INSTALAÇÃO ELÉTRICA/ELETRIFICAÇÃO E ILUMINAÇÃO EXTERNA"; break
    case "INPR": return "INPR - INSTALAÇÕES DE PRODUÇÃO"; break
    case "INES": return "INES - INSTALAÇÕES ESPECIAIS"; break
    case "INHI": return "INHI - INSTALAÇÕES HIDROS SANITÁRIAS"; break
    case "LIPR": return "LIPR - LIGAÇÕES PREDIAIS ÁGUA/ESGOTO/ENERGIA/TELEFONE"; break
    case "MOVT": return "MOVT - MOVIMENTO DE TERRA"; break
    case "PARE": return "PARE - PAREDES/PAINEIS"; break
    case "PAVI": return "PAVI - PAVIMENTAÇÃO"; break
    case "PINT": return "PINT - PINTURAS"; break
    case "PISO": return "PISO - PISOS"; break
    case "REVE": return "REVE - REVESTIMENTO E TRATAMENTO DE SUPERFÍCIES"; break
    case "SEDI": return "SEDI - SERVIÇOS DIVERSOS"; break
    case "SEEM": return "SEEM - SERVIÇOS EMPREITADOS"; break
    case "SEES": return "SEES - SERVIÇOS ESPECIAIS"; break
    case "SEOP": return "SEOP - SERVIÇOS OPERACIONAIS"; break
    case "SERP": return "SERP - SERVIÇOS PRELIMINARES"; break
    case "SERT": return "SERT - SERVIÇOS TÉCNICOS"; break
    case "TRAN": return "TRAN - TRANSPORTES, CARGAS E DESCARGAS"; break
    case "URBA": return "URBA - URBANIZAÇÃO"; break
  default: return tipo
  }
}

tipo_de_composicao_sicro2_por_extenso = function (tipo) {
  switch (tipo) {
    case "ATIVI": return "Atividades Auxiliares"; break
    case "CONST": return "Construção Rodoviária"; break
    case "CONSE": return "Conservação Rodoviária"; break
    case "SINAL": return "Sinalização Rodoviária"; break
    case "RESTA": return "Restauração Rodoviária"; break
  default: return tipo
  }
}

tipo_de_composicao_iopes_por_extenso = function (tipo) {
  switch (tipo) {
    case "01"  : return "SERVIÇOS PRELIMINARES"; break
    case "0102": return "DEMOLIÇÕES E RETIRADAS"; break
    case "0103": return "DEMOLIÇÕES E RETIRADAS"; break
    case "0104": return "LIMPEZA DO TERRENO"; break
    case "0105": return "LOCAÇÃO"; break
    case "02"  : return "INSTALAÇÃO DO CANTEIRO DE OBRAS"; break
    case "0203": return "TAPUMES, BARRACÕES E COBERTURAS"; break
    case "0207": return "INSTALAÇÃO DO CANTEIRO DE OBRAS (UTILIZAÇÃO 1 VEZ), PROJETO PADRÃO LABOR - NR.18 (OBRAS COM PRAZO DE EXECUÇÃO SUPERIOR A 12 MESES)"; break
    case "0208": return "INSTALAÇÃO DO CANTEIRO DE OBRAS (UTILIZAÇÃO 2 VEZES), PROJETO PADRÃO LABOR - NR.18 (OBRAS COM PRAZO DE EXECUÇÃO DE 6 A 12 MESES)"; break
    case "03"  : return "MOVIMENTO DE TERRA"; break
    case "0301": return "ESCAVAÇÕES"; break
    case "0302": return "REATERRO E COMPACTAÇÃO"; break
    case "0303": return "TRANSPORTES"; break
    case "04"  : return "ESTRUTURAS"; break
    case "0402": return "INFRA-ESTRUTURA (FUNDAÇÃO)"; break
    case "0403": return "SUPER-ESTRUTURA"; break
    case "0404": return "ESTRUTURAS DE CONCRETO APARENTE"; break
    case "0406": return "LAJES PRÉ-MOLDADAS"; break
    case "0407": return "DIVERSOS"; break
    case "0408": return "RECUPERAÇÃO DE ESTRUTURAS"; break
    case "0409": return "MURO DE ARRIMO (Conc. ciclópico 15MPa c/ 30% de pedra de mão, c/ forn., preparo e aplicação de concreto, forma de tábua pinho-reap.5 vezes, exclusive escav. e reaterro) seções tipicas nas seguintes dimensões:"; break
    case "05"  : return "PAREDES E PAINÉIS"; break
    case "0501": return "ALVENARIA DE VEDAÇÃO"; break
    case "0502": return "PLACAS E PAINÉIS DIVISÓRIOS"; break
    case "0503": return "VERGAS/CONTRAVERGA"; break
    case "0505": return "ALVENARIA ESTRUTURAL"; break
    case "0506": return "ALVENARIA DE VEDAÇÃO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "06"  : return "ESQUADRIAS DE MADEIRA"; break
    case "0601": return "MARCOS E ALIZARES"; break
    case "0611": return "FERRAGENS"; break
    case "0613": return "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV.C/ENCHIMENTO EM MADEIRA 1A.QUALIDADE ESP. 30MM P/ PINTURA, INCLUSIVE ALIZARES, DOBRADIÇAS E FECHADURA EXTERNA, EXCLUSIVE MARCO"; break
    case "0614": return "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA/EQUIV, ESP. 30MM C/ ACAB. LISO P/ PINTURA, INCL. FECHADURA TIPO \"LIVRE/OCUPADO\" E FERRAGENS P/ FIXAÇÃO EM GRANITO, EXCLUSIVE MARCO"; break
    case "0617": return "PORTA EM VENEZIANA, EM MADEIRA DE LEI, ESP. 30MM, INCL. DOBRADIÇAS, EXCLUSIVE ALIZAR, MARCO E FECHADURA"; break
    case "0619": return "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV. C/ ENCHIMENTO EM MADEIRA DE 1ª QUALIDADE ESP 30MM, COM VISOR DE VIDRO, INCL. ALIZARES, DOBRADIÇAS E FECHADURAS EXT EM LATÃO CROMADO LAFONTE/EQUIV , EXCL. MARCO, NAS DIMENSÕES:"; break
    case "0622": return "REVISÕES E REPAROS"; break
    case "0623": return "PORTA EM MADEIRA DE LEI COM ENCHIMENTO EM MADEIRA DE 1ª QUALIDADE, ESP. 30MM, PARA PINTURA, INCL. ALIZARES, DOBRADIÇAS, FECHADURA TIPO \"LIVRE/OCUPADO\" EXCLUSIVE MARCO"; break
    case "0625": return "PORTA EM MADEIRA DE LEI TIPO ANGELIM PEDRA OU EQUIV.,ESP. 35 MM, MACIÇA C/ FRISO P/ VERNIZ, PADRÃO SEDU, COM VISOR, INCLUSIVE ALIZARES, DOBRADIÇAS E FECHADURA DE BOLA EXTERNA, EXCLUSIVE MARCO"; break
    case "07"  : return "ESQUADRIAS METÁLICAS"; break
    case "0711": return "GRADES E PORTÕES"; break
    case "0717": return "ESQUADRIAS METÁLICAS (M2)"; break
    case "0718": return "REVISÕES E REPAROS"; break
    case "08"  : return "VIDROS E ESPELHOS"; break
    case "0801": return "VIDROS PARA ESQUADRIAS"; break
    case "0802": return "ESPELHOS"; break
    case "09"  : return "COBERTURA"; break
    case "0901": return "ESTRUTURA PARA TELHADO"; break
    case "0902": return "TELHADO"; break
    case "0903": return "RUFOS E CALHAS"; break
    case "0904": return "PLATIBANDA"; break
    case "0905": return "REVISÕES E REPAROS"; break
    case "10"  : return "IMPERMEABILIZAÇÃO"; break
    case "1001": return "IMPERMEABILIZAÇÃO DE CAIXAS DE ÁGUA"; break
    case "1002": return "IMPERMEABILIZAÇÃO CALHAS, LAJES DESCOBERTAS, BALDRAMES, PAREDES E JARDINEIRAS"; break
    case "1003": return "IMPERMEABILIZAÇÃO DE FOSSAS E FILTROS"; break
    case "11"  : return "TETOS E FORROS"; break
    case "1101": return "REVESTIMENTO COM ARGAMASSA"; break
    case "1102": return "REBAIXAMENTOS"; break
    case "1103": return "REVESTIMENTO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "1104": return "REVISÕES E REPAROS"; break
    case "12"  : return "REVESTIMENTO DE PAREDES"; break
    case "1201": return "REVESTIMENTO COM ARGAMASSA"; break
    case "1202": return "ACABAMENTOS"; break
    case "1203": return "REVESTIMENTO EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "13"  : return "PISOS INTERNOS E EXTERNOS"; break
    case "1301": return "LASTRO DE CONTRAPISO"; break
    case "1302": return "ACABAMENTOS"; break
    case "1303": return "DEGRAUS, RODAPÉS, SOLEIRAS E PEITORIS"; break
    case "1304": return "REVISÕES E REPAROS"; break
    case "14"  : return "INSTALAÇÕES HIDRO-SANITÁRIAS"; break
    case "1401": return "SUMIDOUROS, FOSSAS SÉPTICAS E FILTROS ANAERÓBIOS"; break
    case "1402": return "ENTRADA DE ÁGUA"; break
    case "1407": return "PONTOS HIDRO-SANITÁRIOS"; break
    case "1409": return "TUBULAÇÃO DE LIGAÇÃO DE CAIXAS"; break
    case "1411": return "CAIXAS EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "1412": return "REDE DE ÁGUA FRIA - TUBOS METÁLICOS"; break
    case "1414": return "REDE DE ÁGUA FRIA - TUBOS SOLDÁVEIS DE PVC"; break
    case "1415": return "REDE DE ÁGUA FRIA - CONEXÕES SOLDÁVEIS DE PVC"; break
    case "1419": return "REDE DE ESGOTO - TUBOS DE PVC"; break
    case "1421": return "CAIXAS DE PVC / EQUIPAMENTOS"; break
    case "1422": return "ABERTURA E FECHAMENTO DE RASGOS (inclusive preparo e aplicação de argamassa)"; break
    case "1423": return "REVISÕES E REPAROS"; break
    case "15"  : return "INSTALAÇÕES ELÉTRICAS"; break
    case "1501": return "PADRÃO DE ENTRADA"; break
    case "1503": return "QUADRO DE DISTRIBUIÇÃO"; break
    case "1506": return "CAIXAS DE PASSAGEM"; break
    case "1507": return "ENVELOPAMENTO DE ELETRODUTOS"; break
    case "1508": return "INSTALAÇÕES APARENTES"; break
    case "1509": return "COMPOSIÇÕES INTERMEDIÁRIAS P/ ELETRICA"; break
    case "1510": return "CAIXAS DE PASSAGEM EMPREGANDO ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "1511": return "ELETRODUTOS E CONEXÕES"; break
    case "1513": return "CHAVES, FUSIVEIS E DISJUNTORES"; break
    case "1514": return "FIOS E CABOS"; break
    case "1515": return "SERVIÇOS DIVERSOS"; break
    case "1516": return "ABERTURA E FECHAMENTO DE RASGOS (inclusive preparo e aplicação de argamassa)"; break
    case "1517": return "PADRAO DE ENTRADA DE ENERGIA - NORTEC-01 - ESCELSA"; break
    case "1518": return "PONTOS ELETRICOS REVISAO NR-10"; break
    case "1519": return "QUADROS DE DISTRIBUIÇÃO COM BARRAMENTO, TRINCO E FECHADURA"; break
    case "1520": return "TERMINAIS, CONECTORES E ABRAÇADEIRAS"; break
    case "16"  : return "OUTRAS INSTALAÇÕES"; break
    case "1601": return "INSTALAÇÃO DE TELEFONE"; break
    case "1602": return "INSTALAÇÃO DE GÁS"; break
    case "1603": return "INSTALAÇÃO DE PÁRA-RAIO"; break
    case "1606": return "INSTALAÇÃO DE INCÊNDIO"; break
    case "1607": return "DEPÓSITO DE GÁS"; break
    case "1608": return "INSTALAÇÃO DE REDE LÓGICA"; break
    case "17"  : return "APARELHOS HIDRO-SANITÁRIOS"; break
    case "1701": return "LOUÇAS"; break
    case "1702": return "BANCADAS"; break
    case "1703": return "TORNEIRAS, REGISTROS, VÁLVULAS E METAIS"; break
    case "1705": return "OUTROS APARELHOS"; break
    case "18"  : return "APARELHOS ELÉTRICOS"; break
    case "1801": return "LUMINÁRIAS"; break
    case "1802": return "INTERRUPTORES E TOMADAS"; break
    case "1803": return "BOMBAS"; break
    case "1804": return "POSTES"; break
    case "1807": return "VENTILADORES"; break
    case "1808": return "OUTROS APARELHOS"; break
    case "19"  : return "PINTURA"; break
    case "1901": return "SOBRE PAREDES E FORROS"; break
    case "1902": return "SOBRE CONCRETO OU BLOCOS CERÂMICOS APARENTES"; break
    case "1903": return "SOBRE MADEIRA"; break
    case "1904": return "SOBRE METAL"; break
    case "1905": return "SOBRE ELEMENTOS ESPECIAIS"; break
    case "1906": return "SOBRE PISOS"; break
    case "20"  : return "SERVIÇOS COMPLEMENTARES EXTERNOS"; break
    case "2001": return "MUROS E FECHAMENTOS"; break
    case "2002": return "PAVIMENTAÇÃO"; break
    case "2003": return "PAISAGISMO"; break
    case "2004": return "TRATAMENTO, CONSERVAÇÃO E LIMPEZA"; break
    case "2005": return "DIVERSOS EXTERNOS"; break
    case "2007": return "QUADRA DE ESPORTES (Ver nota 9 da planilha)"; break
    case "21"  : return "SERVIÇOS COMPLEMENTARES INTERNOS"; break
    case "2101": return "QUADROS DE GIZ / AVISO"; break
    case "2102": return "ARMÁRIOS E PRATELEIRAS"; break
    case "2103": return "DIVERSOS INTERNOS"; break
    case "22"  : return "APOIO"; break
    case "2208": return "Locação de veículo tipo Gol 1.000 a gasolina ou equivalente, com até 1 (um) ano de uso, em bom estado de conservação com:"; break
    case "31"  : return "SERVIÇOS GERAIS"; break
    case "3105": return "MÃO DE OBRA- (MENSALISTAS - SEM DESONERAÇÃO- LEIS SOCIAIS=77,5%)"; break
    case "3106": return "MÃO DE OBRA - (MENSALISTAS - LEIS SOCIAIS = 5%)"; break
    case "3108": return "ENCARGOS COMPLEMENTARES - EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL"; break
    case "3109": return "ENCARGOS COMPLEMENTARES - FERRAMENTAS MANUAIS"; break
    case "3110": return "ENCARGOS COMPLEMENTARES - ALIMENTAÇÃO"; break
    case "3119": return "MÃO DE OBRA (MENSALISTAS - COM DESONERAÇÃO - LS = 52,25%)"; break
  default: return tipo
  }
}

tipo_de_composicao_sudecap_por_extenso = function (tipo) {
  switch (tipo) {
    case "01"   : return "INSTALAÇAO DA OBRA"; break
    case "01.01": return "ESCRITORIO DE OBRA"; break
    case "01.02": return "BARRACAO DE OBRA"; break
    case "01.03": return "PLACA DE OBRA AFIXADA COM PEÇAS DE MADEIRA 8X12CM"; break
    case "01.04": return "TAPUME PADRAO SUDECAP (TIPO I, II E III)"; break
    case "01.05": return "CERCA PADRAO SUDECAP"; break
    case "01.06": return "INSTALAÇAO PROVISORIA - CONCESSIONARIA"; break
    case "01.07": return "FOSSA E SUMIDOURO"; break
    case "01.08": return "REDE INTERNA E PROVISORIA DE AGUA E ESGOTO"; break
    case "01.09": return "CONTAINER 6,0X2,30X2,82 M COM ISOLAMENTO TERMICO"; break
    case "01.10": return "BANHEIRO QUIMICO"; break
    case "01.11": return "SINALIZAÇAO"; break
    case "01.17": return "LOCAÇAO DE OBRA"; break
    case "01.29": return "ANDAIME FACHADEIRO"; break
    case "01.30": return "MONTAGEM E DESMONTAGEM DE ANDAIME"; break
    case "02"   : return "DEMOLIÇOES E REMOÇOES"; break
    case "02.01": return "REMOÇAO DE TELHA INCLUSIVE EMPILHAMENTO"; break
    case "02.02": return "REMOÇAO DE CALHA, RUFO E CONDUTOR,INCL.AFASTAMENTO"; break
    case "02.03": return "REMOÇAO DE ENGRADAMENTO DE TELHADO INCL.EMPILHAM."; break
    case "02.04": return "REMOÇAO DE FORRO INCLUSIVE EMPILHAMENTO"; break
    case "02.06": return "REMOÇAO DE ESQUADRIA DE MADEIRA INCL. EMPILHAMENTO"; break
    case "02.07": return "REMOÇAO DE ESQUADRIA METALICA"; break
    case "02.09": return "DEMOLIÇAO DE REVESTIMENTO INCLUSIVE AFASTAMENTO"; break
    case "02.10": return "DEMOLIÇAO DE PISO INCLUSIVE AFASTAMENTO"; break
    case "02.11": return "DEMOLIÇAO DE PASSEIO E PAVIMENTO"; break
    case "02.12": return "CORTE MECANICO EM CONCRETO/ASFALTO"; break
    case "02.13": return "DEMOLIÇAO DE CONCRETO INCLUSIVE AFASTAMENTO"; break
    case "02.14": return "DEMOLIÇAO MANUAL, DE ALVENARIA INCL. AFASTAMENTO"; break
    case "02.15": return "REMOÇAO DE MEIO-FIO"; break
    case "02.16": return "DEMOLIÇAO, REMOÇAO E CARGA MECANICA"; break
    case "02.19": return "DEMOLIÇAO DE DIVISORIA INCLUSIVE AFASTAMENTO"; break
    case "02.20": return "REMOÇAO DE QUADROS"; break
    case "02.21": return "REMOÇAO DE PEÇAS DIVERSAS"; break
    case "02.22": return "REMOÇAO DE BANCADA"; break
    case "02.23": return "REMOÇAO DE CERCA E ALAMBRADO"; break
    case "02.26": return "TRANSPORTE DE MATERIAL DEMOLIDO EM CARRINHO DE MAO"; break
    case "02.27": return "CARGA DE MATERIAL DEMOLIDO SOBRE CAMINHAO"; break
    case "02.28": return "TRANSPORTE DE MATERIAL DEMOLIDO EM CAMINHAO"; break
    case "02.29": return "TRANSPORTE DE MAT.DE QUALQUER NATUREZA EM CAÇAMBA"; break
    case "02.30": return "LIMPEZA DO PAVIMENTO"; break
    case "02.31": return "SUPRESSAO DE ARVORE"; break
    case "03"   : return "TRABALHOS EM TERRA"; break
    case "03.01": return "DESMATAMENTO, DESTOCAMENTO E LIMPEZA DO TERRENO"; break
    case "03.03": return "ESCAVAÇAO MECANICA INCLUSIVE TRANSPORTE ATE 50 M"; break
    case "03.05": return "ESCAVAÇAO E CARGA MECANIZADA"; break
    case "03.07": return "ESCAVAÇAO E CARGA EM MATERIAL DE 3ª CATEGORIA"; break
    case "03.12": return "CARGA DE MATERIAL DE QQUER NATUREZA SOBRE CAMINHAO"; break
    case "03.13": return "TRANSPORTE DE MATERIAL DE QUALQUER NATUREZA"; break
    case "03.15": return "ATERRO COMPACTADO"; break
    case "03.16": return "ESCAVAÇAO DE MATERIAL DE 3ª CATEGORIA"; break
    case "03.17": return "ESCAVAÇAO MANUAL DE VALAS"; break
    case "03.18": return "ESCAVAÇAO MECANICA DE VALAS COM DESCARGA LATERAL"; break
    case "03.19": return "ESCAVAÇAO MECANICA DE VALAS COM DESC. S/ CAMINHOES"; break
    case "03.20": return "ESCAVAÇAO EM SOLO MOLE"; break
    case "03.21": return "ESCAVAÇAO E CARGA DE VALA EM MATERIAL 3ª CATEGORIA"; break
    case "03.22": return "REATERRO DE VALA"; break
    case "03.23": return "REGULARIZAÇAO E COMPACTAÇAO DE TERRENO"; break
    case "03.24": return "TRANSPORTE DE MATERIAL DEMOLIDO EM CARRINHO DE MAO"; break
    case "03.25": return "TRANSPORTE DE MAT.DE QUALQUER NATUREZA EM CAÇAMBA"; break
    case "04"   : return "FUNDAÇOES"; break
    case "04.01": return "TUBULAO A CEU ABERTO"; break
    case "04.03": return "ESTACA BROCA PERFURADA A TRADO MANUAL"; break
    case "04.04": return "ESTACA BROCA PERFURADA A TRADO MECANIZADO"; break
    case "04.05": return "ESTACA STRAUSS - ESCAVAÇAO, ARMAÇAO E CONCRETAGEM"; break
    case "04.06": return "ESTACA HELICE CONTINUA"; break
    case "04.07": return "ESTACA TRILHO, CRAVADA (METALICA)"; break
    case "04.08": return "ESTACA PRE-MOLDADA DE CONCRETO ARMADO, CRAVADA"; break
    case "04.10": return "ESTACA RAIZ"; break
    case "04.11": return "ESTACA FRANKI - CRAVAÇAO, ARMAÇAO E CONCRETAGEM"; break
    case "04.12": return "FORNEC. CONCRETO USINADO CONV. LANC. EM FUNDACAO"; break
    case "04.13": return "FORMA, ESCORAMENTO, DESFORMA E LIMPEZA EM FUNDAÇAO"; break
    case "04.15": return "ARMAÇAO INCL. CORTE, DOBRA E COLOCAÇAO EM FUNDAÇAO"; break
    case "04.19": return "CONCRETO CICLOPICO LANÇADO EM FUNDAÇAO E ARRIMO"; break
    case "04.21": return "CONCRETO CONVENCIONAL B1,B2 LANÇADO EM FUNDAÇAO"; break
    case "04.23": return "CONCRETO USINADO B1,B2 LANÇADO EM FUNDAÇAO"; break
    case "04.27": return "CONCRETO USINADO BOMBEADO LANÇADO EM FUNDAÇAO"; break
    case "04.30": return "BALDRAME DE ALVENARIA DE BLOCO DE CONCRETO(SAPATA)"; break
    case "05"   : return "GALERIA CELULAR E/OU CONTENÇOES"; break
    case "05.01": return "ENROCAMENTO COM PEDRA DE MAO"; break
    case "05.02": return "TUBO DE CONCRETO POROSO"; break
    case "05.03": return "CONCRETO DE REGULARIZAÇAO"; break
    case "05.04": return "FORMA INCLUSIVE DESFORMA E LIMPEZA"; break
    case "05.05": return "ARMAÇAO INCLUSIVE CORTE, DOBRA E COLOCAÇAO"; break
    case "05.06": return "JUNTA ELASTICA"; break
    case "05.07": return "CONCRETO ESTRUTURAL, FORN. APLICAÇAO E ADENSAMENTO"; break
    case "05.09": return "FORNECIMENTO E LANÇAMENTO DE MATERIAL DRENANTE"; break
    case "05.11": return "MANTA DRENANTE GEOTEXTIL"; break
    case "05.12": return "DRENO BARBACAN"; break
    case "05.13": return "DRENOS DE GALERIA"; break
    case "05.16": return "POÇO DE BOMBEAMENTO"; break
    case "05.17": return "ALA DE GALERIA CELULAR"; break
    case "05.19": return "GRELHA"; break
    case "05.20": return "GABIAO"; break
    case "06"   : return "ESTRUTURAS DE CONCRETO E METALICA"; break
    case "06.01": return "FORMA, ESCORAMENTO, DESFORMA E LIMPEZA - ESTRUTURA"; break
    case "06.03": return "ARMAÇAO INCL.CORTE, DOBRA E COLOCAÇAO EM ESTRUTURA"; break
    case "06.04": return "TELA SOLDADA"; break
    case "06.05": return "CONCRETO CONVENCIONAL B1,B2 LANÇADO EM ESTRUTURA"; break
    case "06.07": return "CONCRETO USINADO B1,B2 LANÇADO EM ESTRUTURA"; break
    case "06.09": return "CONCRETO USINADO BOMBEADO LANÇADO EM ESTRUTURA"; break
    case "06.11": return "LAJE PRE-MOLDADA, A REVESTIR INCLUSIVE CAPEAMENTO"; break
    case "06.13": return "LAJE PRE-MOLDADA, APARENTE, INCLUSIVE CAPEAMENTO"; break
    case "06.15": return "LAJE NIVEL ZERO ACABAMENTO POLIDO MECANICAMENTE"; break
    case "07"   : return "ALVENARIAS E DIVISOES"; break
    case "07.01": return "ALVENARIA DE TIJOLO MACIÇO REQUEIMADO"; break
    case "07.03": return "ALVENARIA DE TIJOLO FURADO(BLOCO CERAMICO VEDAÇÃO)"; break
    case "07.05": return "ALVENARIA DE BLOCO DE CONCRETO"; break
    case "07.06": return "ALVENARIA DE BLOCO DE CONCRETO ESTRUTURAL"; break
    case "07.07": return "ALVENARIA DE TIJOLO LAMINADO"; break
    case "07.09": return "ALVENARIA DE TIJOLO DE VIDRO"; break
    case "07.11": return "ALVENARIA DE COBOGO CERAMICO"; break
    case "07.13": return "ALVENARIA DE COBOGO DE CONCRETO"; break
    case "07.32": return "DIVISORIA EM PEDRA (PANEIS FIXOS)"; break
    case "07.34": return "DIVISORIA EM PAINEL REMOVIVEL"; break
    case "07.35": return "VERGAS E CONTRA-VERGAS DE CONCRETO PRE-FABRICADAS"; break
    case "08"   : return "COBERTURAS E FORROS"; break
    case "08.01": return "ENGRADAMENTO EM MADEIRA PARAJU"; break
    case "08.02": return "PEÇAS PARA ENGRADAMENTO EM MADEIRA PARAJU"; break
    case "08.07": return "COBERTURA EM TELHA CERAMICA"; break
    case "08.09": return "COBERTURA EM TELHA FIBROCIMENTO (CIMENTO AMIANTO)"; break
    case "08.12": return "COBERTURA EM TELHA METALICA"; break
    case "08.15": return "CUMEEIRA"; break
    case "08.20": return "FORRO DE MADEIRA"; break
    case "08.22": return "FORRO DE GESSO"; break
    case "08.25": return "FORRO EM PVC"; break
    case "08.85": return "CALHA DE CHAPA GALVANIZADA"; break
    case "08.87": return "RUFO E CONTRA-RUFO DE CHAPA GALVANIZADA"; break
    case "09"   : return "IMPERMEABILIZAÇOES E ISOLAMENTOS"; break
    case "09.03": return "CAMADA DE REGULARIZAÇAO (CIMENTO/AREIA)"; break
    case "09.04": return "CAMADA DE PROTEÇAO (CIMENTO/AREIA)"; break
    case "09.07": return "IMPERMEABILIZAÇAO COM ARGAMASSA RIGIDA (CIM/AREIA)"; break
    case "09.09": return "IMPERMEABILIZAÇAO POR INFILTRAÇAO E CRISTALIZAÇAO"; break
    case "09.11": return "IMPERMEABILIZAÇAO C/ MANTA ASFALTICA PRE-FABRICADA"; break
    case "09.12": return "PINTURA ASFALTICA IMPERMEABILIZANTE"; break
    case "10"   : return "INSTALAÇAO HIDRO-SANITARIA, INCENDIO E GAS"; break
    case "10.03": return "TUBO PVC AGUA SOLDA CLASSE 15 INCLUSIVE CONEXOES"; break
    case "10.04": return "TUBO AÇO GALVANIZADO DIN 2440, INCLUSIVE CONEXOES"; break
    case "10.05": return "TUBO DE COBRE SOLDADO CLASSE A INCLUSIVE CONEXOES"; break
    case "10.06": return "TUBO DE COBRE CLASSE E INCLUSIVE CONEXOES"; break
    case "10.10": return "TUBO PVC ESGOTO, PB, VIROLA E ANEL, INCL. CONEXOES"; break
    case "10.12": return "TUBO PVC ESGOTO PONTA/BOLSA, SOLDA, INCL.CONEXOES"; break
    case "10.14": return "TUBO PVC ESG. REFORÇADO, PB, VIR., ANEL INCL.CONEX"; break
    case "10.18": return "CONEXOES"; break
    case "10.20": return "REGISTRO DE PRESSAO"; break
    case "10.22": return "REGISTRO DE GAVETA"; break
    case "10.24": return "TORNEIRA"; break
    case "10.25": return "VALVULA"; break
    case "10.26": return "GRELHA E RALO METALICO"; break
    case "10.27": return "CHUVEIRO, LIGAÇAO E SIFAO"; break
    case "10.29": return "LIGACAO DE AGUA"; break
    case "10.30": return "ACESSORIO DE FIXAÇAO"; break
    case "10.35": return "CAIXA E RALO"; break
    case "10.40": return "LAVATORIO"; break
    case "10.41": return "VASO SANITARIO"; break
    case "10.43": return "MICTORIO"; break
    case "10.45": return "PIA E CUBA"; break
    case "10.46": return "TANQUE"; break
    case "10.47": return "BEBEDOURO E FILTRO"; break
    case "10.48": return "COMPLEMENTO"; break
    case "10.50": return "INSTALAÇAO DE GAS"; break
    case "10.70": return "CAIXA ALVENARIA COM TAMPA CONCRETO-PADRAO SUDECAP"; break
    case "10.72": return "CAIXA COLETORA DE ALVEN. C/ GRELHA AÇO-PAD.SUDECAP"; break
    case "10.74": return "CAIXA SIFONADA DE ALVEN.TAMPA CONCRETO PAD.SUDECAP"; break
    case "10.78": return "CONJ.QUADRO E CANTONEIRA DE FERRO(REQUADRO TAMPAS)"; break
    case "10.79": return "TAMPAS/PLACAS"; break
    case "10.80": return "BOMBA"; break
    case "10.90": return "PREVENÇAO E COMBATE A INCENDIO"; break
    case "11"   : return "INSTALAÇA0 ELETRICA E TELEFONICA"; break
    case "11.01": return "ELETRODUTO PVC RIGIDO, ROSCA, INCLUSIVE CONEXOES"; break
    case "11.02": return "ELETRODUTO PVC FLEXIVEL CORRUGADO TIGREFLEX/EQUIVALENTE"; break
    case "11.03": return "ELETRODUTO SEALTUBO PVC ZINCADO ASPIRADO C/TRACADO"; break
    case "11.05": return "ELETRODUTO AÇO GALVANIZADO PESADO, INCL. CONEXOES"; break
    case "11.11": return "ELETROCALHA"; break
    case "11.12": return "PERFILADO E ACESSORIO, INCLUSIVE CONEXOES"; break
    case "11.14": return "CAIXA E ACESSORIOS"; break
    case "11.15": return "QUADRO DISTRIBUIÇAO DE CIRCUITOS"; break
    case "11.17": return "CONDULETE"; break
    case "11.18": return "DISJUNTOR TERMOMAGNETICO (200V-60HRZ)-PADRAO NEMA"; break
    case "11.20": return "INTERRUPTOR DIFERENCIAL RESIDUAL"; break
    case "11.22": return "CHAVE/FUSIVEL/RELE FOTOELETR. TECNOWATT OU EQUIVALENTE"; break
    case "11.23": return "FIO COM ISOLAMENTO NÃO HALOGÊNO 750V"; break
    case "11.24": return "CABO FLEXÍVEL NÃO HALOGÊNO"; break
    case "11.30": return "INTERRUPTOR, TOMADA E ACESS. SILENTOQUE PIAL/EQUIVALENTE"; break
    case "11.31": return "INTERRUPTOR, TOMADA E ACESSORIO-LINHA DECORATIVA"; break
    case "11.37": return "LUMINARIA SOBREPOR P/LAMP.FLUOR, REFLETOR ALUMINI0"; break
    case "11.38": return "LUMINARIA EMBUTIR P/LAMP. FLUOR. REFLETOR ALUMINIO"; break
    case "11.43": return "LUMINARIA PARA TETO"; break
    case "11.45": return "ARANDELA"; break
    case "11.51": return "LUMINARIA EXTERNA DECORATIVA PARA POSTES"; break
    case "11.53": return "ILUMINACAO PUBLICA - PADRAO CEMIG"; break
    case "11.54": return "PROJETORES PARA QUADRAS E CAMPOS DE FUTEBOL"; break
    case "11.55": return "COMPLEMENTOS PARA LUMINARIAS"; break
    case "11.56": return "POSTE GALVANIZADO ESCALONADO RETO ENGASTADO"; break
    case "11.58": return "REATORES P/ LAMPADA FLUORESCENTE"; break
    case "11.59": return "REATOR ELETRONICO P/ LAMP.  DESCARGA (VM/VS/VMET)"; break
    case "11.60": return "LAMPADAS - 127V/220V"; break
    case "11.61": return "PADRAO CEMIG AEREO EM MURETA"; break
    case "11.62": return "PADRAO CEMIG SUBTERRANEO EM MURETA"; break
    case "11.80": return "FIOS E CABOS PADRAO TELEMAR"; break
    case "11.81": return "TOMADAS PADRAO PARA TELECOMUNICACOES"; break
    case "11.82": return "ACESSORIOS PARA INSTALAÇAO TELEFONICA/INFORMATICA"; break
    case "11.83": return "ATERRAMENTO PARA INSTALAÇAO"; break
    case "11.84": return "CAIXAS PARA INSTALAÇAO TELEFONICA PADRAO TELEMAR"; break
    case "11.85": return "CX INTERNA METAL.-EMBUTIR/SOBREPOR-PADRAO TELEMAR"; break
    case "11.91": return "CONDUTORES DE ATERRAMENTO"; break
    case "11.92": return "PROTECAO EXTERNA - CONTRA DESCARGA ATMOSFERICA"; break
    case "11.93": return "PROTECAO INTERNA - CONTRA SURTO"; break
    case "12"   : return "ESQUADRIA DE MADEIRA (MARCENARIA)"; break
    case "12.02": return "PORTA DE MADEIRA DE LEI ESPECIAL (EXCLUSIVE MARCO)"; break
    case "12.03": return "PORTA ABRIR MAD. LEI, PRANCHETA COMPLETA / TARJETA"; break
    case "12.04": return "PORTA ABRIR EM MADEIRA DE LEI, PRANCHETA COMPLETA"; break
    case "12.10": return "ESQUADRIA DE MADEIRA PADRAO SUDECAP"; break
    case "12.30": return "FOLHA DE PORTA EM MADEIRA DE LEI"; break
    case "12.40": return "MARCO DE MADEIRA, INCLUSIVE ALIZARES"; break
    case "12.50": return "FECHADURA, TARJETA E DOBRADIÇA"; break
    case "13"   : return "SERRALHERIA"; break
    case "13.31": return "PORTAO EM TELA"; break
    case "13.32": return "PORTAO EM CHAPA E PERFIL DE FERRO"; break
    case "13.38": return "GRADES"; break
    case "13.40": return "GUARDA-CORPO E CORRIMAO"; break
    case "13.55": return "ACESSORIOS E PEÇAS COMPLEMENTARES"; break
    case "13.70": return "PADRAO GRUPO ESCOLAR"; break
    case "13.72": return "PADRAO POLICLINICA"; break
    case "13.74": return "PADRAO UNIDADE DE SAUDE"; break
    case "13.76": return "PADRAO CENTRO DE SAUDE"; break
    case "13.78": return "PADRAO CRECHE"; break
    case "14"   : return "REVESTIMENTOS"; break
    case "14.05": return "REVESTIMENTO COM ARGAMASSA DE CIMENTO, CAL E AREIA"; break
    case "14.06": return "REVESTIMENTO COM ARGAMASSA ESPECIAL"; break
    case "14.07": return "REVESTIMENTO INTERNO EM GESSO"; break
    case "14.15": return "REVESTIMENTO COM AZULEJO"; break
    case "14.17": return "REVESTIMENTO COM CERAMICA"; break
    case "14.21": return "REVESTIMENTO COM PEDRA"; break
    case "14.35": return "COMPLEMENTO PARA ARREMATE CERAMICO"; break
    case "15"   : return "PISOS, RODAPES, SOLEIRAS E PEITORIS"; break
    case "15.02": return "LAJE DE TRANSIÇAO"; break
    case "15.03": return "LAJE DE PISO"; break
    case "15.04": return "CONTRAPISO DESEMPENADO, COM ARG.1:3 SEM JUNTA"; break
    case "15.05": return "PISO CIMENT.DESEMP.FELTRADO,ARG.1:3,JUNTA PL.17X3M"; break
    case "15.06": return "PISO CIMENTADO NATADO COM ARGAMASSA 1:3, SEM JUNTA"; break
    case "15.07": return "PISO CIMENTADO NATADO COM ARG.1:3 JUNTA PL. 17x3MM"; break
    case "15.08": return "PISO CIMENTADO ACAB. LISO ARGAMASSA 1:3 JUNTA SECA"; break
    case "15.15": return "PISO DE MADEIRA"; break
    case "15.17": return "PISO CERAMICO"; break
    case "15.20": return "PISO DE PEDRA EM PLACAS"; break
    case "15.22": return "PISO DE LADRILHO HIDRAULICO"; break
    case "15.25": return "PISO VINILICO E DE BORRACHA"; break
    case "15.31": return "MARMORITE E REVEDUR, INCLUSIVE CONTRAPISO E= 3 CM"; break
    case "15.33": return "PISO DE TIJOLO"; break
    case "15.35": return "PISO DE CONCRETO (PATIO)"; break
    case "15.36": return "PISO DE CONCRETO (QUADRA)"; break
    case "15.37": return "CALÇADA PORTUGUESA"; break
    case "15.40": return "RODAPE DE MADEIRA"; break
    case "15.46": return "RODAPE DE PEDRA"; break
    case "15.48": return "RODAPE DE ARGAMASSA 1:3"; break
    case "15.50": return "RODAPE DE MARMORITE E REVEDUR"; break
    case "15.54": return "SOLEIRA DE PEDRA"; break
    case "15.58": return "PEITORIL DE PEDRA"; break
    case "15.60": return "PEITORIL DE CONCRETO"; break
    case "15.61": return "ACABAMENTO COM SINTECO OU RESINA"; break
    case "16"   : return "VIDROS, ESPELHOS E ACESSORIOS"; break
    case "16.02": return "VIDRO LISO"; break
    case "16.04": return "VIDRO FANTASIA"; break
    case "16.06": return "VIDRO CANELADO"; break
    case "16.08": return "VIDRO ARAMADO"; break
    case "16.20": return "ESPELHO NACIONAL"; break
    case "17"   : return "PINTURA"; break
    case "17.01": return "CAIAÇAO"; break
    case "17.02": return "APLICACAO DE LIQUIBRILHO"; break
    case "17.05": return "PINTURA LATEX PVA EXCLUSIVE SELADOR (SEM FUNDO)"; break
    case "17.07": return "LATEX PVA INCLUS. SELADOR PVA OU FUNDO PREPARADOR"; break
    case "17.09": return "PINTURA LATEX PVA INCLUSIVE FUNDO SELADOR ACRILICO"; break
    case "17.15": return "PINTURA ACRILICA"; break
    case "17.25": return "PINTURA ESMALTE SINTETICO"; break
    case "17.30": return "PINTURA EPOXI"; break
    case "17.37": return "SISTEMA PARA SUPERFICIES GALVANIZADAS"; break
    case "17.41": return "ENVERNIZAMENTO POLIURETANO MADEIRA RESINOSA"; break
    case "17.42": return "ENVERNIZAMENTO POLIURETANO MADEIRA NAO RESINOSA"; break
    case "17.44": return "TRATAMENTO(SUPERF.CONCR.PEDRAS ALVENARIA/CERAMICA)"; break
    case "17.45": return "ENCERAMENTO"; break
    case "17.50": return "PINTURA DE QUADRAS, PATIOS E ESTACIONAMENTO"; break
    case "18"   : return "SERVICOS DIVERSOS"; break
    case "18.02": return "EQUIPAMENTOS ESPORTIVOS"; break
    case "18.05": return "PLACAS"; break
    case "18.06": return "SINALIZAÇÃO TÁTIL E PLACAS EM BRAILLE"; break
    case "18.08": return "BANCADA"; break
    case "18.09": return "PRATELEIRA"; break
    case "18.10": return "BANCOS E MESAS"; break
    case "18.30": return "EQUIPAMENTOS E PEÇAS PADRAO"; break
    case "18.40": return "EQUIPAMENTO PARA PLAYGROUND EM EUCALIPTO IMUNIZADO"; break
    case "18.41": return "PLAYGROUND LONGEVIDADE"; break
    case "18.50": return "EQUIPAMENTO PARA PLAYGROUND METALICO"; break
    case "18.52": return "EQUIPAMENTOS PARA PLAYGROUND"; break
    case "19"   : return "DRENAGEM"; break
    case "19.03": return "TUBO CORRUGADO POLIETILENO ALTA DENSIDADE PEAD N12"; break
    case "19.04": return "REDE TUB. CONCRETO CIMENTO ARI PLUS RS CLASSE PA-1"; break
    case "19.05": return "REDE TUB. CONCRETO CIMENTO ARI PLUS RS CLASSE PA-2"; break
    case "19.06": return "REDE TUB.CONCRETO CIMENTO ARI PLUS RS CLASSE PA-3"; break
    case "19.07": return "CONCRETO PARA BERÇO DE REDE TUBULAR"; break
    case "19.08": return "FORMA PARA BERÇO"; break
    case "19.09": return "ESTIVA DE MADEIRA"; break
    case "19.10": return "ALA DE REDE TUBULAR"; break
    case "19.11": return "CAIXA PARA BOCA LOBO"; break
    case "19.12": return "ALTEAMENTO DE CAIXA PARA BOCA DE LOBO"; break
    case "19.13": return "CONJUNTO QUADRO E GRELHA PARA BOCA DE LOBO"; break
    case "19.14": return "CANTONEIRA PARA BOCA DE LOBO"; break
    case "19.15": return "CAIXA DE PASSAGEM TIPO A - PADRAO SUDECAP"; break
    case "19.16": return "CAIXA DE PASSAGEM TIPO B - PADRAO SUDECAP"; break
    case "19.17": return "CAIXA DE PASSAGEM TIPO C - PADRAO SUDECAP"; break
    case "19.18": return "POÇO DE VISITA TIPO A - PADRAO SUDECAP"; break
    case "19.19": return "POÇO DE VISITA TIPO B - PADRAO SUDECAP"; break
    case "19.20": return "POÇO DE VISITA TIPO C - PADRAO SUDECAP"; break
    case "19.21": return "CHAMINE DE POÇO DE VISITA - PADRAO SUDECAP"; break
    case "19.22": return "TAMPAO DE POÇO DE VISITA"; break
    case "19.23": return "DESCIDA D'AGUA TIPO DEGRAU - PADRAO SUDECAP"; break
    case "19.24": return "DESCIDA D'AGUA TIPO CALHA - PADRAO SUDECAP"; break
    case "19.25": return "DRENO - PADRAO SUDECAP"; break
    case "19.27": return "BARRAGEM - PADRAO SUDECAP"; break
    case "19.28": return "CALHA DE BICA - PADRAO SUDECAP"; break
    case "19.29": return "TORRE DE BICA - PADRAO SUDECAP"; break
    case "19.30": return "SARJETA - PADRAO SUDECAP"; break
    case "19.31": return "CANALETA - PADRAO SUDECAP"; break
    case "19.32": return "ESCORAMENTO DESCONTINUO DE VALAS - PADRAO SUDECAP"; break
    case "19.33": return "ESCORAMENTO CONTINUO DE VALAS - PADRAO SUDECAP"; break
    case "19.50": return "ASSENTAMENTO DE MANILHA CERAMICA"; break
    case "19.51": return "ESTRUTURA DE ESCORAMENTO"; break
    case "19.52": return "POÇO DE VISITA INCL. FORNEC. DO ANEL/TAMPAO/LAJE"; break
    case "19.53": return "LASTRO DE PEDRA"; break
    case "19.56": return "TUBO DE QUEDA"; break
    case "19.57": return "POÇO LUMINAR INCL.ESCAV./TAMPAO E FUNDO PREMOLDADO"; break
    case "19.59": return "CONSTR.RAMAL ESGOTO EXT.ATE 2 M C/ MATERIAL"; break
    case "19.60": return "CONST.RAMAL PREDIAL EXTENSAO EXED.A 2,0M C/MATERIA"; break
    case "19.70": return "TUBO PVC RIG.NBR-7362/2 INCL.CONEXOES (TIGRE/EQUIVALENTE)"; break
    case "20"   : return "PAVIMENTAÇAO"; break
    case "20.01": return "REGULARIZAÇAO"; break
    case "20.03": return "REFORÇO DO SUB-LEITO COMPACTADO EXCL.ESCAV.E CARGA"; break
    case "20.04": return "SUB-BASE ESTAB. GRANUL. ENERGIA PROCTOR INTERMED."; break
    case "20.05": return "SUB-BASE ESTAB.GRANUL., COMP. ENERG.PROCTOR MODIF."; break
    case "20.06": return "BASE ESTAB. GRANUL.COMPACT.ENERG.PROCTOR INTERMED."; break
    case "20.07": return "BASE ESTAB. GRANUL., COMP. ENERG. PROCTOR MODIF."; break
    case "20.08": return "BASE ESTAB. GRANUL.C/ MISTURA EM PESO PROCTOR INT."; break
    case "20.09": return "BASE COMPACTADA C/ EQUIP. PLACA VIBRAT. OU EQUIVALENTE"; break
    case "20.10": return "TRANSPORTE DE MATERIAL DE QUALQUER NATUREZA"; break
    case "20.11": return "IMPRIMAÇAO"; break
    case "20.12": return "PINTURA"; break
    case "20.13": return "CONCRETO BETUMINOSO USINADO A QUENTE"; break
    case "20.15": return "CONCRETO PRE-MISTURADO A FRIO"; break
    case "20.16": return "LAMA ASFALTICA COM EMULSAO RL-1C"; break
    case "20.17": return "REVESTIMENTO EM ALVENARIA POLIEDRICA"; break
    case "20.18": return "REMOÇAO E RECONSTRUÇAO REVEST.ALVENARIA POLIEDRICA"; break
    case "20.19": return "PAVIMENTO INTERTRAVADO EM BLOCO DE CONCRETO"; break
    case "20.20": return "FRESAGEM"; break
    case "21"   : return "URBANIZAÇAO E OBRAS COMPLEMENTARES"; break
    case "21.03": return "MEIO FIO E CORDAO - PADRAO SUDECAP"; break
    case "21.04": return "REMOÇAO E REASSENTAMENTO DE MEIO-FIO"; break
    case "21.05": return "PASSEIOS"; break
    case "21.06": return "FORNEC. E LANÇAM. DE MATERIAL EM DRENO E PATIO"; break
    case "21.07": return "LANÇAMENTO E ESPALHAMENTO  DE MATERIAIS EM PASSEIO"; break
    case "21.08": return "MURO DE VEDAÇAO DE CONCRETO PREMOLD. TIPO CALHA\"V\""; break
    case "21.09": return "QUADRA"; break
    case "21.11": return "MURO DIVISA ALV.INCL.SAPATA 1:3:6 30X40CM E CHAPEU"; break
    case "21.12": return "CHAPEU DE MURO"; break
    case "21.15": return "CERCA DE MOURAO A CADA 2,5 M"; break
    case "21.20": return "ALAMBRADO"; break
    case "21.25": return "ESTRUTURA SUPORTE PARA FIXAÇAO DE ARAME FARPADO"; break
    case "21.29": return "BARREIRA DE SEGURANÇA DE CONCRETO"; break
    case "21.30": return "GRAMACAO, INCLUSIVE PLANTIO"; break
    case "21.31": return "PREPARO DE COVAS, EXCLUSIVE O FORNECIMENTO DA MUDA"; break
    case "21.32": return "FORNECIMENTO DE MATERIAL PARA PAISAGISMO:"; break
    case "21.33": return "FORNECIMENTO DE MUDAS"; break
    case "21.34": return "CERCA DE PROTEÇAO PARA ARVORES"; break
    case "21.40": return "LIXEIRA"; break
    case "40"   : return "SERVICOS AUXILIARES"; break
    case "40.04": return "MAO DE OBRA ESPECIALIZADA"; break
    case "40.05": return "CONCRETO CIMENTO E CASCALHO - PREPARO"; break
    case "40.06": return "CONCRETO CIMENTO E CASCALHO , LANCADO EM FUNDACAO"; break
    case "40.07": return "CONCRETO CICLOPICO LANCADO EM FUNDACAO E ARRIMO"; break
    case "40.08": return "CONCRETO CONVENCIONAL BRITA 1-2 CALCAREA - PREPARO"; break
    case "40.09": return "CONCRETO CONVENCIONAL B1-B2 CALC., LANC. EM FUND."; break
    case "40.10": return "CONCRETO CONVENCIONAL BRITA CALC. LANC. EM ESTRUT."; break
    case "40.11": return "SOLO CIMENTO"; break
    case "40.12": return "CONCRETO CONVENCIONAL BRITA 1 CALCAREA - PREPARO"; break
    case "40.13": return "CONCRETO CONVENCIONAL B1 CALC.,LANCADO EM FUNDACAO"; break
    case "40.14": return "CONCRETO CONVENCIONAL B1 CALC,LANCADO EM ESTRUTURA"; break
    case "40.17": return "CONCRETO USINADO, BRITA CALC., LANCADO EM FUNDACAO"; break
    case "40.18": return "CONCRETO USINADO, BRITA CALC.,LANCADO EM ESTRUTURA"; break
    case "40.19": return "CONCRETO ESTRUTURAL, FORN. APLICACAO E ADENSAMENTO"; break
    case "40.20": return "FORMA E ESCORAMENTO"; break
    case "40.22": return "ACO"; break
    case "40.24": return "ARGAMASSA DE CIMENTO E AREIA - PREPARO"; break
    case "40.26": return "ARGAMASSA DE CIMENTO, AREIA E PEDRISCO - PREPARO"; break
    case "40.30": return "ALVENARIA"; break
    case "40.31": return "REVESTIMENTOS"; break
    case "40.32": return "MOVIMENTO DE TERRA"; break
    case "40.33": return "CONCRETO DE REGULARIZACAO"; break
    case "40.34": return "TRANSPORTE"; break
    case "40.37": return "CONCRETO ASFALTICO"; break
    case "40.39": return "TRABALHOS LACUSTRES"; break
    case "40.40": return "FORNECIMENTO E LANCAMENTO DE MATERIAL DRENANTE"; break
    case "40.41": return "MANTA DRENANTE GEOTEXTIL"; break
    case "40.42": return "DRENO BARBACAN"; break
    case "40.43": return "CORTE MECÂNICO EM CONCRETO/ASFALTO"; break
    case "40.60": return "SERVICOS AUXILIARES - BARRACAO DE OBRA"; break
    case "40.70": return "PINTURA"; break
    case "40.80": return "SERVIÇOS AUXILIARES - COPASA"; break
    case "40.85": return "TUBO CONC.SIMPLES JUNTA ELASTICA,NBR8890 CLASSE ES"; break
    case "40.87": return "TUBO CONC.ARMADO JUNTA ELASTICA,NBR8890 CLASSE EA2"; break
    case "40.88": return "REDE TUBULAR EM PVC - RIB LOC/TIGRE"; break
    case "41"   : return "INSTALACOES DA OBRA"; break
    case "41.01": return "ESCRITORIOS"; break
    case "41.02": return "INSTALACAO PROVISORIA DE AGUA E ENERGIA"; break
    case "42"   : return "DESPESAS FIXAS DIVERSAS"; break
    case "42.01": return "TRANSPORTES"; break
    case "42.02": return "DESPESAS E TAXAS"; break
    case "42.03": return "EQUIPAMENTOS COMPLEMENTARES"; break
    case "43"   : return "SERVICOS TECNICOS"; break
    case "43.01": return "TOPOGRAFIA"; break
    case "44"   : return "ADMINISTRACAO DA OBRA"; break
    case "44.01": return "MAO DE OBRA"; break
    case "45"   : return "EQUIPAMENTOS"; break
    case "45.01": return "VEICULOS"; break
    case "47"   : return "SERVICOS AUXILIARES DE MARCENARIA"; break
    case "47.01": return "PECAS PADRAO ESCOLA"; break
    case "47.02": return "PORTA"; break
    case "47.03": return "MOVEIS"; break
    case "48"   : return "SERVICOS AUXILIARES DE SERRALHERIA"; break
    case "48.05": return "JANELA DE CORRER"; break
    case "48.32": return "MARCO DE FERRO CANTONEIRA"; break
    case "48.42": return "SERVICOS DIVERSOS"; break
    case "48.43": return "GRELHAS E GRADES"; break
    case "48.49": return "CANTONEIRA E MASTRO"; break
    case "48.70": return "SERRALHERIA - GRUPO ESCOLAR"; break
    case "48.72": return "SERRALHERIA - POLICLINICA"; break
    case "48.73": return "SERRALHERIA - VESTIARIO PADRAO"; break
    case "48.74": return "SERRALHERIA - UNIDADE DE SAUDE"; break
    case "48.76": return "SERRALHERIA - CENTRO DE SAUDE (CODEURB)"; break
    case "48.78": return "SERRALHERIA - CRECHE"; break
    case "50"   : return "CUSTO HORARIO DE EQUIPAMENTO"; break
    case "50.01": return "ACABADORA DE ASFALTO, LAMA E VASSOURA MECANICA"; break
    case "50.04": return "BATE ESTACA E MARTELO"; break
    case "50.05": return "BETONEIRA"; break
    case "50.06": return "BOMBA D'AGUA E LAMA"; break
    case "50.10": return "CAMINHAO, CARROCERIA E CAVALO MECANICO"; break
    case "50.11": return "CARREGADEIRA"; break
    case "50.13": return "COMPACTADOR"; break
    case "50.14": return "COMPRESSOR E ACESSORIOS"; break
    case "50.16": return "DISTRIBUIDOR DE AGREGADO E BETUME"; break
    case "50.19": return "EQUIPAMENTO DE PERFURACAO E ROMPEDOR"; break
    case "50.20": return "ESCAVADEIRA E DRAGA"; break
    case "50.21": return "ROCADEIRA"; break
    case "50.25": return "GRADE DE DISCO"; break
    case "50.27": return "GUINDASTE"; break
    case "50.31": return "MAQUINA E APARELHO DE SOLDA"; break
    case "50.32": return "MOTONIVELADORA"; break
    case "50.36": return "TRATOR"; break
    case "50.37": return "USINA DE ASFALTO, SOLOS E CONCRETO"; break
    case "50.39": return "VIBRADOR"; break
    case "50.40": return "VEICULOS"; break
    case "50.41": return "EQUIPAMENTOS DE APOIO"; break
    case "61"   : return "PESSOAL"; break
    case "61.11": return "ENGENHEIRO PARA ELABORACAO DE PROJETOS"; break
    case "61.12": return "AUXILIAR DE ENGENHARIA"; break
    case "61.13": return "PROJETISTA PARA ELABORACAO DE PROJETOS"; break
    case "61.14": return "TECNICO PARA ELABORACAO DE PROJETOS"; break
    case "61.15": return "DESENHISTA PARA ELABORACAO DE PROJETOS"; break
    case "61.16": return "SERVICOS ADMINISTRATIVOS"; break
    case "61.21": return "ENGENHEIRO PARA SUPERVISAO DE OBRAS"; break
    case "61.22": return "AUXILIAR DE ENGENHARIA"; break
    case "61.23": return "TECNICO PARA SUPERVISAO DE OBRAS"; break
    case "61.24": return "DESENHISTA PARA SUPERVISAO DE OBRAS"; break
    case "61.31": return "TOPOGRAFIA"; break
    case "61.32": return "LABORATORIO"; break
    case "61.33": return "INSPECAO DE OBRAS"; break
    case "61.34": return "AUXILIARES DE APOIO"; break
    case "62"   : return "PROJETOS"; break
    case "62.01": return "PROJETOS DE EDIFICACOES"; break
    case "62.02": return "ANTEPROJETO"; break
    case "62.03": return "PROJETOS DE INFRA ESTRUTURA URBANA"; break
    case "62.04": return "LAUDOS TECNICOS"; break
    case "62.05": return "SERVICOS DE TOPOGRAFIA"; break
    case "62.11": return "CADASTRO"; break
    case "62.20": return "PROJETOS DE EDIFICACAO POR M2"; break
    case "62.21": return "PROJETOS DE IMPLANTACAO DE TIPOLOGIAS"; break
    case "62.22": return "PROJETOS DE EDIFICACOES NOVAS"; break
    case "62.23": return "PROJETOS DE REFORMAS"; break
    case "63"   : return "VEICULOS E EQUIPAMENTOS"; break
    case "63.01": return "VEICULOS"; break
    case "63.20": return "NIVEL, COM COMPLEMENTOS"; break
    case "63.21": return "ESTAÇAO TOTAL"; break
    case "64"   : return "SERVICOS DE GRAFICA"; break
    case "64.01": return "COPIA XEROGRAFICA SULFITE"; break
    case "64.03": return "COPIA XEROGRAFICA EM PAPEL VEGETAL"; break
    case "64.05": return "COPIA XEROGRAFICA EM PAPEL POLYESTER"; break
    case "64.07": return "XEROX SIMPLES OPACO"; break
    case "64.09": return "XEROX COLORIDO SULFITE"; break
    case "64.11": return "ENCADERNACAO"; break
    case "64.12": return "PLOTAGEM PRETO E BRANCO SULFITE"; break
    case "64.13": return "PLOTAGEM PRETO E BRACO PAPEL VEGETAL GR.90GR/CM2"; break
    case "64.15": return "PLOTAGEM COLORIDA SULFITE"; break
    case "64.17": return "PLOTAGEM COLORIDA VEGETAL"; break
    case "64.18": return "DIGITALIZAÇÃO DE GRANDES FORMATOS"; break
    case "65"   : return "INVESTIGACOES GEOTECNICAS"; break
    case "65.01": return "SONDAGEM A PERCUSSAO D= 2 1/2\" (SPT)"; break
    case "65.02": return "SONDAGEM A TRADO D= 20 CM"; break
    case "65.03": return "SONDAGEM (OUTRAS)"; break
    case "65.06": return "SONDAGEM ROTATIVA D= NW"; break
    case "65.08": return "RETIRADA DE AMOSTRA INDEFORMADA"; break
    case "65.11": return "ENSAIOS"; break
    case "66"   : return "ENSAIOS DE ASFALTO"; break
    case "66.01": return "ENSAIOS DE ASFALTO"; break
    case "67"   : return "ENSAIOS DE SOLO E AGREGADO"; break
    case "67.01": return "ENSAIOS DE SOLO"; break
    case "67.02": return "ENSAIOS DE AGREGADO"; break
    case "68"   : return "ENSAIOS DE CIMENTO, CALDA, ARGAMASSA E CONCRETO"; break
    case "68.01": return "ENSAIOS DE CIMENTO PORTLAND"; break
    case "68.02": return "ENSAIOS DE CALDA DE CIMENTO"; break
    case "68.03": return "ENSAIOS DE ARGAMASSA"; break
    case "68.04": return "ENSAIOS DE CONCRETO"; break
    case "69"   : return "ENSAIOS DE ACO, BLOCO, MADEIRA,TELHA,TIJOLO E TUBO"; break
    case "69.01": return "ENSAIOS DE ACO"; break
    case "69.02": return "ENSAIOS DE BLOCOS DE CONCRETO"; break
    case "69.03": return "ENSAIOS DE BLOCOS CERAMICOS"; break
    case "69.04": return "ENSAIOS DE MADEIRA"; break
    case "69.05": return "ENSAIO DE TELHAS FRANCESAS E COLONIAIS"; break
    case "69.06": return "ENSAIOS DE TELHAS ONDULADAS DE CIMENTO AMIANTO"; break
    case "69.07": return "ENSAIOS DE TIJOLOS CERAMICOS"; break
    case "69.08": return "ENSAIOS DE TUBOS CERAMICOS"; break
  default: return tipo
  }
}

tipo_de_composicao_orse_por_extenso = function (tipo) {
  switch (tipo) {
    case "1": return "OBRAS CIVIS"; break
    case "2": return "INFRA-ESTRUTURA"; break
    case "3": return "PROJETOS"; break
    case "4": return "Serviços Preliminares"; break
    case "5": return "Fundações"; break
    case "6": return "Estruturas"; break
    case "7": return "Elevações"; break
    case "8": return "Coberturas"; break
    case "9": return "Instalações Elétricas/Telefônicas/Cabeamento Estruturado"; break
    case "10": return "Instalações Hidráulicas"; break
    case "11": return "Instalações de Combate a Incêndio"; break
    case "12": return "Instalações Sanitárias"; break
    case "13": return "Esquadrias"; break
    case "14": return "Revestimentos de Tetos e Paredes"; break
    case "15": return "Louças e Metais"; break
    case "16": return "Pavimentação"; break
    case "17": return "Pinturas e Tratamentos"; break
    case "18": return "Instalação de Antena Coletiva"; break
    case "19": return "Instalação de Gás de Cozinha"; break
    case "20": return "Instalação de Ar Condicionado"; break
    case "21": return "Instalações de Gases Medicinais"; break
    case "22": return "Instalação de Câmaras Frigoríficas"; break
    case "23": return "Diversos"; break
    case "24": return "Serviços Auxiliares de Obras Civis"; break
    case "25": return "Provisório"; break
    case "26": return "X - Grupo Provisório de Serviços / Distribuir"; break
    case "27": return "Terraplenagem"; break
    case "28": return "Urbanismo e Sinalização"; break
    case "29": return "Pavimentação Rodoviária"; break
    case "30": return "Redes de Água e Adutoras"; break
    case "31": return "Estações de Tratamento e Elevatórias de Água"; break
    case "32": return "Poços Artesianos"; break
    case "33": return "Redes de Esgotos"; break
    case "34": return "Estação de Tratamento e Elevatórias de Esgotos Sanitários"; break
    case "35": return "Redes de Drenagem"; break
    case "36": return "Redes de Irrigação"; break
    case "37": return "Redes de Distribuição de Energia Elétrica  e de Iluminação Pública em Tensão Classe 35 ou"; break
    case "38": return "Redes de Telefonia"; break
    case "39": return "Contenções e Escoramentos"; break
    case "40": return "Esgotamentos de Água"; break
    case "41": return "Serviços Auxiliares de Infra-estrutura"; break
    case "42": return "Apoio Administrativo de Obra"; break
    case "43": return "Projetos Básicos e Executivos"; break
    case "44": return "Serviços Iniciais de Obras Civis"; break
    case "45": return "Demolições / Remoções"; break
    case "46": return "Locação de Edificações"; break
    case "47": return "Mobilização / Instalações Provisórias / Desmobilização"; break
    case "48": return "Escavações"; break
    case "49": return "Aterros / Reaterros / Compactações"; break
    case "50": return "Formas para Fundações"; break
    case "51": return "Alvenarias de Pedra e Concretos para Fundações"; break
    case "52": return "Estacas Brocas"; break
    case "53": return "Estacas Pré-Moldadas"; break
    case "54": return "Estacas Moldadas no local Tipo Strauss"; break
    case "55": return "Estacas Moldadas no local Tipo Franki"; break
    case "56": return "Estacas Metálicas"; break
    case "57": return "Tubulões"; break
    case "58": return "Camadas Reguralizadoras"; break
    case "59": return "Formas"; break
    case "60": return "Concreto Simples"; break
    case "61": return "Concreto Armado"; break
    case "62": return "Escoramento em Edificações"; break
    case "63": return "Armaduras Convencionais"; break
    case "64": return "Fios e Cordoalhas de Protensão"; break
    case "65": return "Estruturas Pre-Moldadas de Concreto"; break
    case "66": return "Alvenarias de Vedação"; break
    case "67": return "Elementos Vazados"; break
    case "68": return "Divisórias"; break
    case "69": return "Colunas em Alvenaria"; break
    case "70": return "Madeiramento"; break
    case "71": return "Estrutura Metálica"; break
    case "72": return "Telhamento"; break
    case "73": return "Complementos"; break
    case "74": return "Subsestação Transformadora Abrigada"; break
    case "75": return "Subestação Transformadora em Poste"; break
    case "76": return "Entrada em Baixa Tensão"; break
    case "77": return "Interligações até Quadro Geral - Eletrodutos e Conexões"; break
    case "78": return "Interligações até Quadro Geral - Fios e Cabos"; break
    case "79": return "Fusíveis, Disjuntores e Chaves"; break
    case "80": return "Quadros de Distribuição de Energia"; break
    case "81": return "Quadros de Distribuição de Telefone"; break
    case "82": return "Luminárias Internas"; break
    case "83": return "Luminárias Externas"; break
    case "84": return "Luminárias Industriais"; break
    case "85": return "Revisões e Reposições"; break
    case "86": return "Pontos de Suprimento de Energia Convencionais"; break
    case "87": return "Pontos de Suprimento de Telefone"; break
    case "88": return "Pontos de Suprimento de Energia para Ar Condicionado"; break
    case "89": return "Pontos de Suprimento de Energia para Computador"; break
    case "90": return "Pontos de Suprimento de Lógica"; break
    case "91": return "Tomadas Convencionais e Interruptores"; break
    case "92": return "Tomadas para Telefone"; break
    case "93": return "Tomadas para Ar Condicionado"; break
    case "94": return "Tomadas para Computadores"; break
    case "95": return "Tomadas para Lógica"; break
    case "96": return "Postes Tubulares de Ferro Galvanizado"; break
    case "97": return "Aparelhos, Utensílios e Equipamentos Elétricos"; break
    case "98": return "Pára-raios"; break
    case "99": return "Tubos e Conexões de Ferro Galvanizado"; break
    case "100": return "Tubos e Conexões de PVC Rígido Soldável"; break
    case "101": return "Tubos e Conexões de PVC Rígido Roscável"; break
    case "102": return "Tubos e Conexões de Ferro Fundido"; break
    case "103": return "Tubos e Conexões de Cobre Soldáveis e Roscáveis"; break
    case "104": return "Reservatórios"; break
    case "105": return "Registros e Válvulas"; break
    case "106": return "Equipamentos para Combate a Incêndio"; break
    case "107": return "Tubos e Conexões de PVC Rígido Soldável para Esgoto"; break
    case "108": return "Pontos de Ligação de Esgoto"; break
    case "109": return "Caixas de Inspeção"; break
    case "110": return "Fossas Sépticas"; break
    case "111": return "Fossas Secas"; break
    case "112": return "Filtros e Sumidouros"; break
    case "113": return "Esquadrias de Madeira"; break
    case "114": return "Esquadrias de Alumínio"; break
    case "115": return "Esquadrias de Ferro"; break
    case "116": return "Vidros Lisos"; break
    case "117": return "Vidros Tipo Fantasia"; break
    case "118": return "Vidros Laminados"; break
    case "119": return "Vidros Temperados"; break
    case "120": return "Vidros Aramados"; break
    case "121": return "Espelhos"; break
    case "122": return "Persianas e Cortinas"; break
    case "123": return "Argamassas"; break
    case "124": return "Azulejos e Cerâmicas"; break
    case "125": return "Revestimento com Pedras"; break
    case "126": return "Revestimentos em Laminados"; break
    case "127": return "Revestimentos com Mármores e Granitos"; break
    case "128": return "Revestimentos com Papel de Parede"; break
    case "129": return "Forros"; break
    case "130": return "Impermeabilização"; break
    case "131": return "Isolamento Térmico"; break
    case "132": return "Isolamento Acústico"; break
    case "133": return "Peitoris e Tampos de Balcões"; break
    case "134": return "Falhas em Revestimentos"; break
    case "135": return "Louças e Metais Sanitários"; break
    case "136": return "Pisos : Cimentados, em Concreto Simples, tipo Tech-Stone e de Alta Resistência"; break
    case "137": return "Pisos Cerâmicos"; break
    case "138": return "Pisos com Pedras"; break
    case "139": return "Pisos Sintéticos / Vinílicos"; break
    case "140": return "Pisos de Madeira"; break
    case "141": return "Pisos de Borracha"; break
    case "142": return "Pavimentações Externas"; break
    case "143": return "Soleiras e Rodapés"; break
    case "144": return "Latex PVA"; break
    case "145": return "Esmalte Sintético / Óleo"; break
    case "146": return "Pintura em Estrutura Metálica"; break
    case "147": return "Outras Pinturas"; break
    case "148": return "Tratamentos de Superfícies"; break
    case "149": return "Equipamentos e Acessórios para Antena Coletiva"; break
    case "150": return "Equipamentos e Acessórios para Instalações de Gás de Cozinha"; break
    case "151": return "Equipamentos e Acessórios para Instalação de Ar Condicionado"; break
    case "152": return "Fornecimento de Gases Medicinais"; break
    case "153": return "Redes de Distribuição de Gases"; break
    case "154": return "Equipamentos e Acessórios para Centrais de Suprimento e Redes de Distribuição de Gases"; break
    case "155": return "Equipamentos e Acessórios para Postos de Consumo"; break
    case "156": return "Equipamentos para Câmaras Frigoríficas"; break
    case "157": return "Portas Frigoríficas"; break
    case "158": return "Acessórios para Instalação de Câmaras Frigoríficas"; break
    case "159": return "Muros"; break
    case "160": return "Cercas"; break
    case "161": return "Alambrados e Gradis"; break
    case "162": return "Paisagismo"; break
    case "163": return "Urbanização de Parques e Praças"; break
    case "164": return "Limpeza"; break
    case "165": return "Andaimes"; break
    case "166": return "Anadimes"; break
    case "167": return "Mobiliário"; break
    case "168": return "Diversos"; break
    case "169": return "Execução de Rasgos em Alvenaria e Concretos para Passagem de Tubulações"; break
    case "170": return "Enchimento de Rasgos em Alvenaria ou Concreto"; break
    case "171": return "Transporte de Materiais na Obra"; break
    case "172": return "Provisórios"; break
    case "173": return "Grupo Provisório - Distribuir"; break
    case "174": return "Desmatamento e Limpeza"; break
    case "175": return "Regularização de Áreas"; break
    case "176": return "Escavação Manual em Área Urbana"; break
    case "177": return "Escavação Manual em Campo Aberto"; break
    case "178": return "Escavação Mecanizada em Área Urbana"; break
    case "179": return "Escavação Mecanizada em Campo Aberto"; break
    case "180": return "Carga de Material"; break
    case "181": return "Execução de Cortes e  Aterros"; break
    case "182": return "Transportes"; break
    case "183": return "Locação de Serviços de Terraplenagem e Acompanhamento Topográfico da Obra"; break
    case "184": return "Demarcação de Quadras e Lotes"; break
    case "185": return "Sinalização Vertical"; break
    case "186": return "Sinalização Horizontal"; break
    case "187": return "Regularização do Subleito"; break
    case "188": return "Reforço do Sub - Leito"; break
    case "189": return "Preparo de Materiais em Usina"; break
    case "190": return "Concreto Betuminoso - Usinagem"; break
    case "191": return "Sub - Base Estabilizada Granulometricamente"; break
    case "192": return "Sub - Base com Solo Cimento"; break
    case "193": return "Base Estabilizada Granulometricamente"; break
    case "194": return "Base com Solo-Cimento"; break
    case "195": return "Imprimação"; break
    case "196": return "Pintura de Ligação"; break
    case "197": return "Tratamento Superficial"; break
    case "198": return "Pavimentação com Concreto Betuminoso Pré-misturado a Frio"; break
    case "199": return "Pavimentação com Concreto Betuminoso Usinado a Quente (CBUQ)"; break
    case "200": return "Pavimentação com Areia-Asfalto a Quente"; break
    case "201": return "Pavimentação em Concreto Armado"; break
    case "202": return "Pavimentação em Paralepípedo ou com Peças Pré-moldadas de Concreto"; break
    case "203": return "Base de Macadame Hidráulico"; break
    case "204": return "Sarjetas"; break
    case "205": return "Meios-Fios e Guias"; break
    case "206": return "Controle Tecnológico"; break
    case "207": return "Areia-asfalto - Usinagem"; break
    case "208": return "Fornencimento de Ligantes Betuminosos"; break
    case "209": return "Serviços Iniciais"; break
    case "210": return "Desmontagem/Remoção de Tubos e Conexões"; break
    case "211": return "Serviços de Proteção e Segurança"; break
    case "212": return "Fornecimento de Tubos de PVC Junta Elástica, Ponta e Bolsa"; break
    case "213": return "Fornecimento de Conexões de PVC Junta Elástica"; break
    case "214": return "Assentamento/Montagem de Tubos e Conexões"; break
    case "215": return "Fornecimento de Tubos de PVC DEFOFO, Junta Elástica - PN 1MPa"; break
    case "216": return "Fornecimento de Conexões de PVC DEFOFO, Junta Elástica, PN 1MPa"; break
    case "217": return "Fornecimento de Tubos de Ferro Fundido"; break
    case "218": return "Fornecimento de Conexões de Ferro Fundido com Junta Elástica"; break
    case "219": return "Fornecimento de Conexões de Ferro Fundido com Junta Travada"; break
    case "220": return "Fornecimento de Conexões de Ferro Fundido com  Junta Mecânica"; break
    case "221": return "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 10"; break
    case "222": return "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 16"; break
    case "223": return "Fornecimento de Conexões de Ferro Fundido com Juntas com Flanges PN 25"; break
    case "224": return "Fornecimento de Peças de Montagem e de Intervenção, em Ferro Fundido"; break
    case "225": return "Assentamento de Peças de Montagem e de Intervenção, em Ferro Fundido"; break
    case "226": return "Fornecimento de Tubos em  Aço"; break
    case "227": return "Fornecimento de Tubos de Polietileno de Alta Densidade (PEAD)"; break
    case "228": return "Fornecimento de Conexões de Polietileno de Alta Densidade (PEAD)"; break
    case "229": return "Execução de Caixas para Registros, Ventosas, Descargas e Macro-Medidores"; break
    case "230": return "Fornecimento de Registros"; break
    case "231": return "Assentamento de Registros"; break
    case "232": return "Fornecimento de Válvulas"; break
    case "233": return "Assentamento de Válvulas"; break
    case "234": return "Fornecimento de Macro-Medidores, Filtros para Macro-Medidores e Ventosas"; break
    case "235": return "Assentamento de Macro-Medidores, Filtros para Macro-Medidores e Ventosas"; break
    case "236": return "Blocos de Ancoragem"; break
    case "237": return "Chafarizes"; break
    case "238": return "Fornecimento de Hidrômetros"; break
    case "239": return "Ligações Prediais de Água"; break
    case "240": return "Teste Hidrostático e Desinfecção de Redes de Água e Adutoras"; break
    case "241": return "Cadastro Técnico e Comercial dos Consumidores"; break
    case "242": return "Transportes de Tubos e Conexões"; break
    case "243": return "Serviços Diversos"; break
    case "244": return "Fornecimento de Equipamentos de Medição"; break
    case "245": return "Assentamento de Equipamentos de Medição"; break
    case "246": return "Fornecimento de Dosadores e Extintores de Cal"; break
    case "247": return "Instalação de Dosadores e Extintores de Cal"; break
    case "248": return "Fornecimento de Misturadores"; break
    case "249": return "Instalação de Misturadores"; break
    case "250": return "Fornecimento de Equipamentos de Floculação"; break
    case "251": return "Instalação de Equipamentos de Floculação"; break
    case "252": return "Fornecimento de Equipamentos de Decantação"; break
    case "253": return "Instalação de Equipamentos de Decantação"; break
    case "254": return "Fornecimento de Materiais para Filtragem"; break
    case "255": return "Colocação de  Materiais para Filtragem"; break
    case "256": return "Fornecimento de Equipamentos para Desinfecção"; break
    case "257": return "Instalação de Equipamentos para Desinfecção"; break
    case "258": return "Fornecimento de Equipamentos para Estações de Tratamento e Elevatórias de Água"; break
    case "259": return "Instalação de Equipamentos para Estações de Tratamento e Elevatórias de Água"; break
    case "260": return "Fornecimento de Bombas e Válvulas de Pé"; break
    case "261": return "Instalação de Bombas e Válvulas de Pé"; break
    case "262": return "Serviços Preliminares para Execução de Poços Profundos"; break
    case "263": return "Perfurações"; break
    case "264": return "Revestimento e Proteção"; break
    case "265": return "Montagem"; break
    case "266": return "Desenvolvimento, ensaio de vazão, entrega do poço"; break
    case "267": return "Locação e Acompanhamento Topográfico de Redes de Esgotos"; break
    case "268": return "Lastros, Lajes e Berços"; break
    case "269": return "Fornecimento de Tubos de PVC Junta Elástica para Redes de Esgotos Sanitários, Ponta e Bolsa"; break
    case "270": return "Assentamento de Tubos de PVC Junta Elástica para Redes de Esgotos Sanitários, Ponta e Bolsa"; break
    case "271": return "Fornecimento de Conexões de PVC Junta Elástica para Redes de Esgoto"; break
    case "272": return "Assentamento de Conexões de PVC Junta Elástica para Redes de Esgotos Sanitários"; break
    case "273": return "Fornecimento de Tubo de Concreto para Redes de Esgotos Sanitários"; break
    case "274": return "Assentamento de Tubo de Concreto para Redes de Esgotos Sanitários"; break
    case "275": return "Poços de Visita para Redes de Esgoto"; break
    case "276": return "Fornecimento de Tampões para Poços de Visita e Caixas de Inspeção"; break
    case "277": return "Ligações Prediais de Esgotos"; break
    case "278": return "Cadastro de Redes Urbanas de Esgotos"; break
    case "279": return "Fornecimento de Bombas para Estações de Tratamento e Elevatórias de Esgotos"; break
    case "280": return "Instalação de Bombas em Estações de Tratamento e Elevatórias de Esgotos"; break
    case "281": return "Fornecimento de Equipamentos para Estações de Tratamento e Elevatórias de Esgotos Sanitários"; break
    case "282": return "Instalação de Equipamentos em Estações de Tratamento e Elevatórias de Esgotos Sanitários"; break
    case "283": return "Serviços Preliminares para Execução de Redes de Drenagem"; break
    case "284": return "Entradas e Saídas D'agua"; break
    case "285": return "Bueiros Tubulares e Celulares"; break
    case "286": return "Poços de Visita para Redes de Drenagem"; break
    case "287": return "Estruturas Complementares"; break
    case "288": return "Drenos"; break
    case "289": return "Caixas de Passagem em alvenaria de tijolos maciços"; break
    case "290": return "Bocas de Lobo"; break
    case "291": return "Cadastro de Redes de Drenagem"; break
    case "292": return "Limpeza e Desobstrução de Bueiros"; break
    case "293": return "Locação da Rede de Irrigação e Acompanhamento Topográfico da Obra"; break
    case "294": return "Fornecimento de Tubo de PVC PEAD para Redes de Irrigação"; break
    case "295": return "Assentamernto de Tubo de PVC PEAD para Redes de Irrigação"; break
    case "296": return "Fornecimento de Tubo de Alumínio, Tipo Engate Rápido, para Redes de Irrigação"; break
    case "297": return "Assentamento de Tubo de Alumínio, Tipo Engate Rápido, para Redes de Irrigação"; break
    case "298": return "Fornecimento de Tubos de PVC Engate Rápido"; break
    case "299": return "Assentamento de Tubos de PVC para Micro-Aspersão"; break
    case "300": return "Fornecimento de Hidrantes, Aspersores e Acessórios para Irrigação"; break
    case "301": return "Assentamento de Hidrantes, Aspersores e Acessórios para Irrigação"; break
    case "302": return "Serviços Preliminares para Execução de Redes de Energia Elétrica e de Iluminação Pública"; break
    case "303": return "Fornecimento de Materiais para Redes de Energia Elétrica e Iluminação"; break
    case "304": return "Serviços em Redes de Energia Elétrica e Iluminação"; break
    case "305": return "Cadastro de Redes de Distribuição de Energia"; break
    case "306": return "Serviços Preliminares para Execução de Redes de Telefonia"; break
    case "307": return "Dutos e Sub-Dutos"; break
    case "308": return "Caixas"; break
    case "309": return "Cadastro de Redes de Telefonia"; break
    case "310": return "Gabiões"; break
    case "311": return "Muros de Arrimo"; break
    case "312": return "Cortinas de Contenção"; break
    case "313": return "Enrocamentos"; break
    case "314": return "Mantas Geotéxteis"; break
    case "315": return "Concreto e Argamassas Projetados e Injetados"; break
    case "316": return "Ensecadeiras"; break
    case "317": return "Escoramentos de Valas, Cavas e Poços"; break
    case "318": return "Cimbramentos de Grandes Estruturas"; break
    case "319": return "Bombeamento Direto"; break
    case "320": return "Equipes de Montagem e Construção"; break
    case "321": return "Manuseio de Equipamentos, Peças e Conexões"; break
    case "322": return "Nivelamento e Fixação de Equipamentos, Peças e Conexões"; break
    case "323": return "Execução de Juntas Flangeadas em Ferro Fundido"; break
    case "324": return "Execução de Junta Elástica em Ferro Fundido"; break
    case "325": return "Execução de Junta Mecânica em Ferro Fundido"; break
    case "326": return "Montagem de Quadros de Comando para Equipamentos"; break
    case "327": return "Vale Tranporte"; break
    case "328": return "Alimentação"; break
    case "329": return "Equipamentos de Proteção Individual (EPI)"; break
    case "330": return "Procedimentos para Elaboração"; break
    case "331": return "Conversão InfoWOrca"; break
    case "333": return "Estações Elevatórias e Estações de Tratamento de Esgotos"; break
    case "334": return "Pessoal Técnico e Administrativo para Elaboração de Projetos e Gerenciamento de Obras"; break
    case "335": return "Remoção de tubos/conexões em redes coletoras de esgoto"; break
    case "336": return "Esquadrias de PVC"; break
    case "337": return "Novo Item"; break
    case "338": return "Restauro"; break
    case "339": return "Ferragens"; break
    case "340": return "Reparo, Proteção e Reforço de Estrutura de Concreto Armado"; break
    case "341": return "Junta de dilatação"; break
    case "342": return "Novo Item"; break
  default: return tipo
  }
}

tipo_de_composicao_sbc_por_extenso = function (tipo) {
  switch (tipo) {
    case "000": return "PROJETOS"; break
    case "011": return "SERVICOS ADMINISTRATIVOS"; break
    case "012": return "INSTALACOES PROVISORIAS"; break
    case "013": return "MAQUINAS E FERRAMENTAS"; break
    case "014": return "CONSUMOS"; break
    case "015": return "EQUIPAMENTOS DE SEGURANCA"; break
    case "016": return "DESPESAS LEGAIS"; break
    case "017": return "TRANSPORTES E CARRETOS"; break
    case "018": return "MAQUINAS E EQUIPAMENTOS"; break
    case "020": return "PREPARACAO DO TERRENO"; break
    case "021": return "CONTENCOES"; break
    case "022": return "DEMOLICOES"; break
    case "023": return "REFORMA E RECONSTRUCAO"; break
    case "024": return "SERVICOS DE MANUTENCAO"; break
    case "030": return "FUNDACOES DIRETAS"; break
    case "031": return "FUNDACOES INDIRETAS"; break
    case "032": return "REBAIXAMENTOS"; break
    case "040": return "ESTRUTURA"; break
    case "047": return "POCOS ARTESIANOS"; break
    case "050": return "INSTALACOES HIDRAULICAS - ABASTECIMENTO"; break
    case "051": return "INSTALACOES HIDRAULICAS - ESGOTAMENTO"; break
    case "052": return "INSTALACOES HIDRAULICAS - AGUA"; break
    case "053": return "INSTALACOES HIDRAULICAS - ESGOTO"; break
    case "054": return "INSTALACOES HIDRAULICAS - AGUAS PLUVIAIS"; break
    case "055": return "INSTALACOES HIDRAULICAS - INCENDIO"; break
    case "056": return "INSTALACOES HIDRAULICAS - GAS"; break
    case "057": return "SANEAMENTO"; break
    case "058": return "INSTALACOES ELETRICAS - DETECCAO DE INCENDIO"; break
    case "059": return "INSTALACOES DE TELEFONE-LOGICA-CFTV-CATV"; break
    case "060": return "INSTALACOES ELETRICAS - LUMINARIAS"; break
    case "061": return "INSTALACOES ELETRICAS - ELETRODUTOS"; break
    case "062": return "INSTALACOES ELETRICAS - DUTOS E TOMADAS"; break
    case "063": return "INSTALACOES ELETRICAS - LEITOS E CABOS"; break
    case "064": return "INSTALACOES ELETRICAS - QUADROS"; break
    case "065": return "INSTALACOES ELETRICAS - SUBESTACOES E GERACAO"; break
    case "066": return "INSTALACOES ELETRICAS - REDES PREDIAIS"; break
    case "067": return "INSTALACOES ELETRICAS - SINALIZACAO"; break
    case "068": return "INSTALACOES ELETRICAS - SONORIZACAO"; break
    case "069": return "ILUMINACAO PUBLICA"; break
    case "070": return "INSTALACOES MECANICAS - AR CONDICIONADO"; break
    case "071": return "INSTALACOES MECANICAS - VAPOR E CALEFACAO"; break
    case "073": return "INSTALACOES MECANICAS - EXAUSTAO"; break
    case "077": return "INSTALACOES MECANICAS - BOMBAS"; break
    case "078": return "ATERRAMENTO"; break
    case "080": return "ELEVADORES - MONTA CARGAS - ACESSIBILIDADE"; break
    case "090": return "PAREDES E PAINEIS"; break
    case "100": return "COBERTURAS"; break
    case "110": return "ESQUADRIAS DE MADEIRA"; break
    case "111": return "ESQUADRIAS DE FERRO"; break
    case "112": return "ESQUADRIAS DE ALUMINIO"; break
    case "120": return "REVESTIMENTOS INTERNOS"; break
    case "121": return "REVESTIMENTOS EXTERNOS"; break
    case "130": return "RODAPES, SOLEIRAS E PEITORIS"; break
    case "140": return "FERRAGENS"; break
    case "150": return "VIDROS"; break
    case "160": return "TRATAMENTOS E IMPERMEABILIZACOES"; break
    case "170": return "PAVIMENTACOES INTERNAS"; break
    case "171": return "PAVIMENTACOES EXTERNAS"; break
    case "172": return "URBANIZACAO"; break
    case "180": return "PINTURAS"; break
    case "190": return "APARELHOS SANITARIOS"; break
    case "200": return "ELEMENTOS DECORATIVOS"; break
    case "201": return "AJARDINAMENTOS"; break
    case "202": return ""; break
    case "210": return "LIMPEZA"; break
  default: return tipo
  }
}

tipo_de_composicao_sco_por_extenso = function (tipo) {
  switch (tipo) {
    case "AD": return "Administracao Local, Mobilizacao, Desmobilizacao e Apoio Tecnologico"; break
    case "AL": return "Alvenarias e Paredes Divisorias"; break
    case "AP": return "Aparelhos Hidraulicos, Sanitarios, Eletricos, Mecanicos e Esportivos"; break
    case "BP": return "Pavimentacao"; break
    case "CE": return "Consultoria Especializada"; break
    case "CI": return "Coberturas, Isolamentos e Impermeabilizacoes"; break
    case "CO": return "Canteiro de Obras"; break
    case "DR": return "Galerias, Drenos e Conexos"; break
    case "EQ": return "Equipamentos"; break
    case "ES": return "Esquadrias"; break
    case "ET": return "Estruturas"; break
    case "FD": return "Fundacoes"; break
    case "IP": return "Iluminacao Publica"; break
    case "IT": return "Instalacoes Eletricas, Hidraulicas, Sanitarias e Mecanicas"; break
    case "MP": return "Manutencao Preventiva e Corretiva"; break
    case "MT": return "Movimento de Terra"; break
    case "PJ": return "Servicos de Parques e Jardins"; break
    case "PT": return "Pinturas"; break
    case "RV": return "Revestimentos"; break
    case "SC": return "Servicos Complementares"; break
    case "SE": return "Servicos de Escritorio, Laboratorio e Campo"; break
    case "ST": return "Servicos de Engenharia de Trafego"; break
    case "TC": return "Transporte, Carga e Descarga"; break
  default: return tipo
  }
}

tipo_de_composicao_fde_por_extenso = function (tipo) {
  switch (tipo) {
    case "01"   : return "Servicos preliminares"; break
    case "01.01": return "Limpeza do terreno"; break
    case "01.02": return "Movimento de terra manual"; break
    case "01.03": return "Movimento de terra mecanizado"; break
    case "01.04": return "Escoramento de terra"; break
    case "01.05": return "Escavacao manual em terra"; break
    case "01.06": return "Apiloamento e aterro de cavas"; break
    case "01.07": return "Lastro de pedra britada ou de concreto simples"; break
    case "01.08": return "Drenagem do terreno"; break
    case "01.10": return "Locação de obra"; break
    case "01.50": return "Demolicoes"; break
    case "01.60": return "Retiradas"; break
    case "01.70": return "Recolocacoes"; break
    case "01.80": return "Conservacao - servicos preliminares"; break
    case "02"   : return "Infra estrutura"; break
    case "02.01": return "Escavacao"; break
    case "02.02": return "Fundacao profunda"; break
    case "02.03": return "Forma"; break
    case "02.04": return "Armadura"; break
    case "02.05": return "Concreto"; break
    case "02.06": return "Embasamento"; break
    case "02.07": return "Impermeabilizacoes"; break
    case "02.50": return "Demolicoes"; break
    case "02.60": return "Retiradas"; break
    case "02.70": return "Recolocacoes"; break
    case "02.80": return "Conservacao - infra estrutura"; break
    case "03"   : return "Super estrutura"; break
    case "03.01": return "Forma"; break
    case "03.02": return "Armadura"; break
    case "03.03": return "Concreto"; break
    case "03.04": return "Estrutura metalica"; break
    case "03.05": return "Estrutura de madeira"; break
    case "03.50": return "Demolicoes"; break
    case "03.60": return "Retiradas"; break
    case "03.70": return "Recolocacoes"; break
    case "03.80": return "Conservacao - super estrutura"; break
    case "04"   : return "Alvenaria e outros elementos divisorios"; break
    case "04.01": return "Alvenaria"; break
    case "04.02": return "Elementos vazados"; break
    case "04.03": return "Placas divisorias"; break
    case "04.50": return "Demolicoes"; break
    case "04.60": return "Retiradas"; break
    case "04.70": return "Recolocacao - alvenaria e outros elementos divisorios"; break
    case "04.80": return "Conservacao - alvenaria e outros elementos divisorios"; break
    case "05"   : return "Elementos de madeira/componentes especiais"; break
    case "05.01": return "Portas/batentes/ferragens"; break
    case "05.02": return "Janelas"; break
    case "05.03": return "Ferragens"; break
    case "05.04": return "Quadro negro / quadros de aviso"; break
    case "05.05": return "Outros componentes padronizados"; break
    case "05.06": return "Outros componentes"; break
    case "05.50": return "Demolicoes"; break
    case "05.60": return "Retiradas"; break
    case "05.70": return "Recolocacao - elementos de madeira/componentes especiais"; break
    case "05.80": return "Conservacao - elementos de madeira/componentes especiais - parte 1"; break
    case "05.81": return "Conservacao - elementos de madeira/componentes especiais - parte 2"; break
    case "05.82": return "Conservacao - elementos de madeira/componentes especiais - parte 3"; break
    case "06"   : return "Elementos metalicos/componentes especiais"; break
    case "06.01": return "Esquadrias metalicas"; break
    case "06.02": return "Portas"; break
    case "06.03": return "Outros elementos metalicos"; break
    case "06.50": return "Demolicoes"; break
    case "06.60": return "Retiradas"; break
    case "06.70": return "Recolocacao - elementos metalicos/componentes especiais"; break
    case "06.80": return "Conservacao - elementos metalicos/componentes especiais"; break
    case "07"   : return "Cobertura"; break
    case "07.01": return "Estrutura de cobertura em madeira de lei"; break
    case "07.02": return "Estrutura de cobertura metalica"; break
    case "07.03": return "Cobertura"; break
    case "07.04": return "Pecas para cobertura"; break
    case "07.05": return "Fechamentos / vedacoes / pecas para cobertura"; break
    case "07.50": return "Demolicoes"; break
    case "07.60": return "Retiradas"; break
    case "07.70": return "Recolocacao"; break
    case "07.80": return "Conservacao - cobertura"; break
    case "08"   : return "Instalacoes hidraulicas"; break
    case "08.01": return "Cavalete e abrigo"; break
    case "08.02": return "Abrigo e rede de gas"; break
    case "08.03": return "Rede de agua fria: tubulacoes"; break
    case "08.04": return "Rede de agua fria: demais servicos"; break
    case "08.05": return "Rede de agua quente: tubulacoes"; break
    case "08.06": return "Rede de agua quente: demais servicos"; break
    case "08.07": return "Combate a incendio : tubulacoes"; break
    case "08.08": return "Combate a incendio : demais serviços"; break
    case "08.09": return "Rede de esgoto: tubulacoes"; break
    case "08.10": return "Rede de esgoto: demais servicos"; break
    case "08.11": return "Rede de aguas pluviais: tubulacoes"; break
    case "08.12": return "Rede de aguas pluviais: demais servicos"; break
    case "08.13": return "Reservatorio: instalacoes - tubulacoes"; break
    case "08.14": return "Reservatorio: instalacoes - demais servicos"; break
    case "08.15": return "Bebedouros,lavatorios e mictorios padronizados"; break
    case "08.16": return "Loucas"; break
    case "08.17": return "Aparelhos e metais"; break
    case "08.50": return "Demolicoes"; break
    case "08.60": return "Retiradas"; break
    case "08.70": return "Recolocacao - instalacoes hidraulicas"; break
    case "08.80": return "Conservacao - rede de gas e agua fria"; break
    case "08.82": return "Conservacao - rede de esgoto e aguas pluviais"; break
    case "08.84": return "Conservacao - aparelhos e metais"; break
    case "08.86": return "Conservacao - tratamento de despejos sanitarios"; break
    case "09"   : return "Instalacoes eletricas"; break
    case "09.01": return "Ligacoes em tensao primaria - poste/cabine de medicao e transformacao"; break
    case "09.02": return "Entrada em baixa tensao"; break
    case "09.03": return "Entrada: interligacao ao quadro geral"; break
    case "09.04": return "Quadro geral"; break
    case "09.05": return "Rede de baixa tensao: duto/quadros parciais luz/quadros telefone"; break
    case "09.06": return "Rede de baixa tensao: caixas de passagem"; break
    case "09.07": return "Rede de baixa tensao: enfiacao"; break
    case "09.08": return "Pontos de: interruptores e tomadas"; break
    case "09.09": return "Luminarias internas"; break
    case "09.10": return "Centro de luz"; break
    case "09.11": return "Iluminacao externa"; break
    case "09.12": return "Aparelhos eletricos"; break
    case "09.13": return "Para raios"; break
    case "09.50": return "Demolicoes - alta tensao"; break
    case "09.52": return "Demolicoes - baixa tensao"; break
    case "09.54": return "Demolicoes - aparelhos e equipamentos"; break
    case "09.56": return "Demolicoes - para raios e aterramento"; break
    case "09.60": return "Retiradas - alta tensao"; break
    case "09.62": return "Retiradas - baixa tensao"; break
    case "09.64": return "Retiradas - aparelhos e equipamentos"; break
    case "09.66": return "Retiradas - para raios e aterramento"; break
    case "09.70": return "Recolocacao - alta tensao"; break
    case "09.72": return "Recolocacoes - baixa tensao"; break
    case "09.74": return "Recolocacoes - aparelhos e equipamentos"; break
    case "09.76": return "Recolocacoes para-raios e aterramento"; break
    case "09.80": return "Conservacao - alta tensao"; break
    case "09.82": return "Conservacao - baixa tensao"; break
    case "09.83": return "Conservacao - baixa tensao"; break
    case "09.84": return "Conservacao - aparelhos e equipamentos"; break
    case "09.85": return "Conservacao - aparelhos e equipamentos"; break
    case "09.86": return "Conservacao - para-raios e aterramentos"; break
    case "10"   : return "Forro"; break
    case "10.01": return "Forro"; break
    case "10.50": return "Demolicoes"; break
    case "10.60": return "Retiradas"; break
    case "10.70": return "Recolocacao - forros"; break
    case "10.80": return "Conservacao - forros"; break
    case "11"   : return "Impermeabilizacoes / juntas de dilatacao"; break
    case "11.01": return "Impermeabilizacoes: subsolos e baldrames"; break
    case "11.02": return "Impermeabilizacoes: lajes, calhas, marquises"; break
    case "11.03": return "Impermeabilizacoes: reservatorios d'agua"; break
    case "11.04": return "Juntas de dilatacao"; break
    case "11.50": return "Demolicoes"; break
    case "11.60": return "Retiradas"; break
    case "11.70": return "Recolocacao - impermeabilizacoes/juntas de dilatacao"; break
    case "11.80": return "Conservacao - impermeabilizacao/juntas de dilatacao"; break
    case "12"   : return "Revestimentos: teto e parede"; break
    case "12.01": return "Revestimento de teto"; break
    case "12.02": return "Revestimento de paredes internas"; break
    case "12.04": return "Revestimento de paredes externas"; break
    case "12.50": return "Demolicoes"; break
    case "12.60": return "Retiradas"; break
    case "12.70": return "Recolocacao - revestimentos de forro e parede"; break
    case "12.80": return "Conservacao - revestimentos teto e parede"; break
    case "13"   : return "Pisos internos / rodapes / peitoris"; break
    case "13.01": return "Lastro para pisos e enchimento de rebaixos de lajes"; break
    case "13.02": return "Revestimento de pisos"; break
    case "13.03": return "Revestimento de pisos / pedras naturais"; break
    case "13.04": return "Revestimento de degraus"; break
    case "13.05": return "Revestimento de rodapes"; break
    case "13.06": return "Revestimento de soleiras"; break
    case "13.07": return "Revestimento de peitoris"; break
    case "13.50": return "Demolicoes"; break
    case "13.60": return "Retiradas"; break
    case "13.70": return "Recolocacao - pisos/rodapes/peitoris"; break
    case "13.80": return "Conservacao - pisos / rodapes / peitoris"; break
    case "14"   : return "Vidros"; break
    case "14.01": return "Vidros"; break
    case "14.02": return "Espelhos"; break
    case "14.60": return "Retiradas"; break
    case "14.70": return "Recolocacao"; break
    case "14.80": return "Conservacao - vidros"; break
    case "15"   : return "Pintura"; break
    case "15.01": return "Estrutura"; break
    case "15.02": return "Forros / paredes internas"; break
    case "15.03": return "Esquadrias"; break
    case "15.04": return "Externa"; break
    case "15.50": return "Remocoes"; break
    case "15.80": return "Conservacao - pintura"; break
    case "16"   : return "Servicos complementares"; break
    case "16.01": return "Fecho:muros/alambrados/portoes"; break
    case "16.02": return "Pisos"; break
    case "16.03": return "Gramados/paisagismo"; break
    case "16.04": return "Quadra de esportes"; break
    case "16.05": return "Águas pluviais e drenagem de acabamento"; break
    case "16.06": return "Complementos externos/canteiro de obra/alambrado"; break
    case "16.07": return "Area externa : recreacao"; break
    case "16.08": return "Rede e tratamento de esgoto"; break
    case "16.09": return "Poco absorvente"; break
    case "16.10": return "Poco de agua potavel"; break
    case "16.11": return "Limpeza final"; break
    case "16.13": return "Muros de arrimo - servicos em terra"; break
    case "16.14": return "Muros de arrimo - concreto armado"; break
    case "16.15": return "Muros de arrimo - outros servicos"; break
    case "16.18": return "Servicos complementares - civil"; break
    case "16.19": return "Servicos complementares - hidraulica"; break
    case "16.20": return "Servicos complementares - eletrica"; break
    case "16.25": return "Salas de emergência em aço"; break
    case "16.30": return "Servicos de recuperacao estrutural - servicos preliminares"; break
    case "16.31": return "Servicos de recuperacao estrutural - reforco de fundacoes"; break
    case "16.32": return "Servicos de recuperacao estrutural"; break
    case "16.33": return "Servicos de tratamento protetor do concreto aparente"; break
    case "16.34": return "Servicos preliminares"; break
    case "16.35": return "Procedimentos para preparo e limpeza do substrato"; break
    case "16.36": return "Reparos supercificiais localizados"; break
    case "16.37": return "Reparos superficiais em grandes areas"; break
    case "16.38": return "Reparos em juntas de movimentacao"; break
    case "16.39": return "Reparos profundos em estruturas"; break
    case "16.40": return "Reparo de armaduras corroidas por acao de cloretos"; break
    case "16.41": return "Reforcos estruturais para reconstituicao da armadura"; break
    case "16.42": return "Reparos estruturais por injecao de graute base de epoxi"; break
    case "16.43": return "Furos em concreto"; break
    case "16.44": return "Fornecimento e colocacao de chumbadores quimicos"; break
    case "16.45": return "Fornecimento e colocacao de chumbadores expansiveis"; break
    case "16.46": return "Ancoragem de barras de espera"; break
    case "16.47": return "Preparacao de pontes de aderencia"; break
    case "16.48": return "Preparacao e conservacao de superficies de concreto / aco"; break
    case "16.49": return "Servicos especiais para estrutura pre-moldada"; break
    case "16.50": return "Demolicao-servicos complementares"; break
    case "16.80": return "Conservacao - servicos complementares"; break
    case "16.85": return "Poco tubular profundo: perfuracao e equipamentos"; break
  default: return tipo
  }
}

tipo_de_composicao_emop_por_extenso = function (tipo) {
  switch (tipo) {
    case "01": return "SERVIÇOS DE ESCRITÓRIO, LABORATÓRIO E CAMPO"; break
    case "02": return "CANTEIRO DE OBRA"; break
    case "03": return "MOVIMENTO DE TERRA"; break
    case "04": return "TRANSPORTES"; break
    case "05": return "SERVICOS COMPLEMENTARES"; break
    case "06": return "GALERIAS, DRENOS E CONEXOS"; break
    case "07": return "ARGAMASSAS, INJEÇÕES E CONSOLIDAÇÕES"; break
    case "08": return "BASES E PAVIMENTOS"; break
    case "09": return "SERVIÇOS DE PARQUES E JARDINS"; break
    case "10": return "FUNDAÇÕES "; break
    case "11": return "ESTRUTURAS"; break
    case "12": return "ALVENARIAS E DIVISÓRIAS"; break
    case "13": return "REVESTIMENTO DE PAREDES, TETOS E PISOS"; break
    case "14": return "ESQUADRIAS DE PVC, FERRO, ALUMÍNIO OU MADEIRA , VIDRAÇAS E FERRAGENS"; break
    case "15": return "INSTALAÇÕES ELÉTRICAS, HIDRÁULICAS, SANITÁRIAS E MECÂNICAS"; break
    case "16": return "COBERTURA, ISOLAMENTOS E IMPERMEABILIZAÇÕES"; break
    case "17": return "PINTURAS"; break
    case "18": return "APARELHOS HIDRÁULICOS, SANITÁRIOS, ELÉTRICOS, MECÂNICOS E ESPORTIVOS"; break
    case "19": return "ALUGUEL DE EQUIPAMENTOS"; break
    case "20": return "CUSTOS RODOVIÁRIOS"; break
    case "21": return "ILUMINAÇÃO PÚBLICA"; break
    case "22": return "REFLORESTAMENTO E EXPLORAÇÃO FLORESTAL"; break
  default: return tipo
  }
}

tipo_de_composicao_cpos_por_extenso = function (tipo) {
  switch (tipo) {
    case "01"   : return "SERVIÇO TÉCNICO ESPECIALIZADO"; break
    case "01.02": return "Parecer técnico"; break
    case "01.06": return "Projeto de instalações elétricas"; break
    case "01.17": return "Projeto executivo"; break
    case "01.20": return "Levantamento topográfico e geofísico"; break
    case "01.21": return "Estudo geotécnico (sondagem)"; break
    case "01.23": return "Tratamento, recuperação e trabalhos especiais em concreto"; break
    case "01.27": return "Estudos e programas ambientais"; break
    case "01.28": return "Poço profundo."; break
    case "02"   : return "INÍCIO, APOIO E ADMINISTRAÇÃO DA OBRA"; break
    case "02.01": return "Construção provisória"; break
    case "02.02": return "Container"; break
    case "02.03": return "Tapume, vedação e proteções diversas"; break
    case "02.05": return "Andaimes e balancins"; break
    case "02.06": return "Alocação de equipe, equipamento e ferramental"; break
    case "02.08": return "Sinalização de obra"; break
    case "02.09": return "Limpeza de terreno"; break
    case "02.10": return "Locação de obra"; break
    case "03"   : return "DEMOLIÇÃO SEM REAPROVEITAMENTO"; break
    case "03.01": return "Demolição de concreto, lastro, mistura e afins"; break
    case "03.02": return "Demolição de alvenaria"; break
    case "03.03": return "Demolição de revestimento em massa"; break
    case "03.04": return "Demolição de revestimento cerâmico e ladrilho hidráulico"; break
    case "03.05": return "Demolição de revestimento sintético"; break
    case "03.06": return "Demolição de revestimento em pedra e blocos maciços"; break
    case "03.07": return "Demolição de revestimento asfáltico"; break
    case "03.08": return "Demolição de forro"; break
    case "03.09": return "Demolição de impermeabilização e afins"; break
    case "03.10": return "Remoção pintura"; break
    case "04"   : return "RETIRADA COM PROVÁVEL REAPROVEITAMENTO"; break
    case "04.01": return "Retirada de fechamento e elemento divisor"; break
    case "04.02": return "Retirada de elementos de estrutura (concreto, ferro, alumínio e madeira)"; break
    case "04.03": return "Retirada de telhamento e proteção"; break
    case "04.04": return "Retirada de revestimento em pedra e blocos maciços"; break
    case "04.05": return "Retirada de revestimentos em madeira"; break
    case "04.06": return "Retirada de revestimentos sintéticos e metálicos"; break
    case "04.07": return "Retirada de forro, brises e fachadas"; break
    case "04.08": return "Retirada de esquadria e elemento de madeira"; break
    case "04.09": return "Retirada de esquadria e elementos metálicos"; break
    case "04.10": return "Retirada de ferragens e acessórios para esquadrias"; break
    case "04.11": return "Retirada de aparelhos, metais sanitários e registro"; break
    case "04.12": return "Retirada de aparelhos elétricos e hidráulicos"; break
    case "04.13": return "Retirada de impermeabilização e afins"; break
    case "04.14": return "Retirada de vidro"; break
    case "04.17": return "Retirada em instalação elétrica - letra A até B"; break
    case "04.18": return "Retirada em instalação elétrica - letra C"; break
    case "04.19": return "Retirada em instalação elétrica - letra D até I"; break
    case "04.20": return "Retirada em instalação elétrica - letra J até N"; break
    case "04.21": return "Retirada em instalação elétrica - letra O até S"; break
    case "04.22": return "Retirada em instalação elétrica - letra T até o final"; break
    case "04.30": return "Retirada em instalação hidráulica"; break
    case "04.31": return "Retirada em instalação de combate a incêndio"; break
    case "04.35": return "Retirada de sistema e equipamento de conforto mecânico"; break
    case "04.40": return "Retiradas diversas de peças pré-moldadas"; break
    case "05"   : return "TRANSPORTE E MOVIMENTAÇÃO, DENTRO E FORA DA OBRA"; break
    case "05.04": return "Transporte de material solto"; break
    case "05.07": return "Transporte comercial, carreteiro e aluguel"; break
    case "05.08": return "Transporte mecanizado de material solto"; break
    case "05.10": return "Transporte mecanizado de solo"; break
    case "06"   : return "SERVIÇO EM SOLO E ROCHA, MANUAL"; break
    case "06.01": return "Escavação manual em campo aberto de solo, exceto rocha"; break
    case "06.02": return "Escavação manual em valas e buracos de solo, exceto rocha"; break
    case "06.11": return "Reaterro manual sem fornecimento de material"; break
    case "06.12": return "Aterro manual sem fornecimento de material"; break
    case "06.14": return "Carga / carregamento e descarga manual"; break
    case "07"   : return "SERVIÇO EM SOLO E ROCHA, MECANIZADO"; break
    case "07.01": return "Escavação ou corte mecanizados em campo aberto de solo, exceto rocha"; break
    case "07.02": return "Escavação mecanizada de valas e buracos em solo, exceto rocha"; break
    case "07.05": return "Escavação mecanizada em solo brejoso ou turfa"; break
    case "07.06": return "Escavação ou carga mecanizada em campo aberto"; break
    case "07.10": return "Apiloamento e nivelamento mecanizado de solo"; break
    case "07.11": return "Reaterro mecanizado sem fornecimento de material"; break
    case "07.12": return "Aterro mecanizado sem fornecimento de material"; break
    case "08"   : return "ESCORAMENTO, CONTENÇÃO E DRENAGEM"; break
    case "08.01": return "Escoramento"; break
    case "08.02": return "Cimbramento"; break
    case "08.03": return "Descimbramento"; break
    case "08.05": return "Mantas, filtros e drenos"; break
    case "08.06": return "Barbacãs"; break
    case "08.07": return "Esgotamento"; break
    case "08.10": return "Contenção"; break
    case "09"   : return "FORMA"; break
    case "09.01": return "Forma em tábua"; break
    case "09.02": return "Forma em madeira compensada"; break
    case "09.04": return "Forma em papelão"; break
    case "09.07": return "Forma em polipropileno"; break
    case "10"   : return "ARMADURA E CORDOALHA ESTRUTURAL"; break
    case "10.01": return "Armadura em barra"; break
    case "10.02": return "Armadura em tela"; break
    case "11"   : return "CONCRETO, MASSA E LASTRO"; break
    case "11.01": return "Concreto usinado com controle fck - fornecimento do material"; break
    case "11.02": return "Concreto usinado não estrutural - fornecimento do material"; break
    case "11.03": return "Concreto executado no local com controle fck - fornecimento do material"; break
    case "11.04": return "Concreto não estrutural executado no local - fornecimento do material"; break
    case "11.05": return "Concreto e argamassa especial"; break
    case "11.16": return "Lançamento e aplicação"; break
    case "11.18": return "Lastros e enchimentos"; break
    case "11.20": return "Reparos, conservações e complementos - GRUPO 11"; break
    case "12"   : return "FUNDAÇÃO PROFUNDA"; break
    case "12.01": return "Broca"; break
    case "12.04": return "Estaca pré-moldada de concreto"; break
    case "12.05": return "Estaca escavada mecanicamente"; break
    case "12.06": return "Estaca tipo STRAUSS"; break
    case "12.07": return "Estaca tipo RAIZ"; break
    case "12.09": return "Tubulão"; break
    case "12.12": return "Estaca hélice contínua"; break
    case "12.14": return "Estaca escavada com injeção ou microestada"; break
    case "13"   : return "LAJE E PAINEL DE FECHAMENTO PRÉ-FABRICADOS"; break
    case "13.01": return "Laje pré-fabricada mista em vigotas treliçadas e lajotas"; break
    case "13.02": return "Laje pré-fabricada mista em vigotas protendidas e lajotas"; break
    case "13.03": return "Laje pré-fabricada em painel protendido"; break
    case "13.05": return "Pré-laje"; break
    case "14"   : return "ALVENARIA E ELEMENTO DIVISOR"; break
    case "14.01": return "Alvenaria de fundação (embasamento)"; break
    case "14.02": return "Alvenaria com tijolo maciço comum ou especial"; break
    case "14.03": return "Alvenaria com tijolo laminado aparente"; break
    case "14.04": return "Alvenaria com bloco cerâmico de vedação"; break
    case "14.05": return "Alvenaria com bloco cerâmico estrutural"; break
    case "14.10": return "Alvenaria com bloco de concreto de vedação"; break
    case "14.11": return "Alvenaria com bloco de concreto estrutural"; break
    case "14.15": return "Alvenaria de concreto celular ou sílico calcário"; break
    case "14.20": return "Peças moldadas no local (vergas, pilaretes,etc.)"; break
    case "14.25": return "Alvenaria e fechamento com vidro"; break
    case "14.28": return "Elementos vazados (concreto, cerâmica e vidros)"; break
    case "14.30": return "Divisória e fechamento"; break
    case "14.31": return "Divisória e fechamento."; break
    case "14.40": return "Reparos, conservações e complementos - GRUPO 14"; break
    case "15"   : return "ESTRUTURA EM MADEIRA, FERRO, ALUMÍNIO E CONCRETO"; break
    case "15.01": return "Estrutura em madeira para cobertura"; break
    case "15.03": return "Estrutura em aço"; break
    case "15.05": return "Estrutura pré-fabricada de concreto"; break
    case "15.20": return "Reparos, conservações e complementos - GRUPO 15"; break
    case "16"   : return "TELHAMENTO"; break
    case "16.02": return "Telhamento em barro"; break
    case "16.03": return "Telhamento em cimento reforçado com fio sintético (CRFS)"; break
    case "16.10": return "Telhamento em madeira, ou fibra vegetal"; break
    case "16.12": return "Telhamento metálico comum"; break
    case "16.13": return "Telhamento metálico especial"; break
    case "16.16": return "Telhamento em material sintético"; break
    case "16.20": return "Telhamento em vidro"; break
    case "16.30": return "Domos"; break
    case "16.32": return "Painel, chapas e fechamento"; break
    case "16.33": return "Calhas e rufos"; break
    case "16.40": return "Reparos, conservações e complementos - GRUPO 16"; break
    case "17"   : return "REVESTIMENTO EM MASSA E OU FUNDIDO NO LOCAL"; break
    case "17.01": return "Regularização de base"; break
    case "17.02": return "Revestimento em argamassa"; break
    case "17.03": return "Revestimento em cimentado"; break
    case "17.04": return "Revestimento em gesso"; break
    case "17.05": return "Revestimento em concreto"; break
    case "17.10": return "Revestimento em granilite fundido no local"; break
    case "17.12": return "Revestimento industrial fundido no local"; break
    case "17.20": return "Revestimento especial fundido no local"; break
    case "17.40": return "Reparos e conservações em massa e concreto - GRUPO 17"; break
    case "18"   : return "REVESTIMENTO CERÂMICO"; break
    case "18.05": return "Plaquetas laminadas para revestimentos"; break
    case "18.06": return "Pisos em placas cerâmicas esmaltadas prensadas"; break
    case "18.07": return "Pisos em placas cerâmicas não esmaltadas extrudadas"; break
    case "18.08": return "Revestimento em porcelanato"; break
    case "18.11": return "Revestimentos em placas cerâmicas esmaltadas prensadas"; break
    case "18.12": return "Revestimentos em pastilhas e mosaicos"; break
    case "18.13": return "Revestimento em placas cerâmicas não esmaltadas extrudadas"; break
    case "19"   : return "REVESTIMENTO EM PEDRA"; break
    case "19.01": return "Granito"; break
    case "19.02": return "Mármore"; break
    case "19.03": return "Pedra"; break
    case "19.20": return "Reparos, conservações e complementos - GRUPO 19"; break
    case "20"   : return "REVESTIMENTO EM MADEIRA"; break
    case "20.01": return "Lambris de madeira"; break
    case "20.03": return "Soalho de madeira"; break
    case "20.04": return "Tacos"; break
    case "20.08": return "Revestimentos em madeira"; break
    case "20.10": return "Rodapé de madeira"; break
    case "20.20": return "Reparos, conservações e complementos - GRUPO 20"; break
    case "21"   : return "REVESTIMENTOS SINTÉTICOS E METÁLICOS"; break
    case "21.01": return "Revestimento em borracha"; break
    case "21.02": return "Revestimento vinílico"; break
    case "21.03": return "Revestimento metálico"; break
    case "21.04": return "Forração e carpete"; break
    case "21.05": return "Revestimento em cimento reforçado com fio sintético (CRFS)"; break
    case "21.06": return "Revestimento em plástico"; break
    case "21.07": return "Revestimento sintético"; break
    case "21.10": return "Rodapé sintético"; break
    case "21.11": return "Degrau sintético"; break
    case "21.20": return "Reparos, conservações e complementos - GRUPO 21"; break
    case "22"   : return "FORRO, BRISE E FACHADA"; break
    case "22.01": return "Forro de madeira"; break
    case "22.02": return "Forro de gesso"; break
    case "22.03": return "Forro sintético"; break
    case "22.04": return "Forro metálico"; break
    case "22.06": return "Brise-soléil"; break
    case "22.20": return "Reparos, conservações e complementos - GRUPO 22"; break
    case "23"   : return "ESQUADRIA, MARCENARIA E ELEMENTO EM MADEIRA"; break
    case "23.01": return "Janela e veneziana em madeira"; break
    case "23.02": return "Porta macho / fêmea montada com batente"; break
    case "23.04": return "Porta lisa laminada montada com batente"; break
    case "23.08": return "Marcenaria em geral"; break
    case "23.09": return "Porta lisa comum montada com batente."; break
    case "23.11": return "Porta lisa para acabamento em verniz montada com batente"; break
    case "23.20": return "Reparos, conservações e complementos - GRUPO 23"; break
    case "24"   : return "ESQUADRIA, SERRALHERIA E ELEMENTO EM FERRO"; break
    case "24.01": return "Caixilho em ferro"; break
    case "24.02": return "Portas, portões e gradis"; break
    case "24.03": return "Elementos em ferro"; break
    case "24.04": return "Esquadria, serralheria de segurança"; break
    case "24.06": return "Esquadria, serralheria e elemento em ferro."; break
    case "24.07": return "Portas, portões e gradis."; break
    case "24.08": return "Esquadria, serralheria e elemento em aço inoxidável"; break
    case "24.20": return "Reparos, conservações e complementos - GRUPO 24"; break
    case "25"   : return "ESQUADRIA, SERRALHERIA E ELEMENTO EM ALUMÍNIO"; break
    case "25.01": return "Caixilho em alumínio"; break
    case "25.02": return "Porta em alumínio"; break
    case "25.03": return "Elementos em alumínio"; break
    case "25.20": return "Reparos, conservações e complementos - GRUPO 25"; break
    case "26"   : return "ESQUADRIA E ELEMENTO EM VIDRO"; break
    case "26.01": return "Vidro comum e laminado"; break
    case "26.02": return "Vidros temperados"; break
    case "26.03": return "Vidros especiais"; break
    case "26.04": return "Espelhos"; break
    case "26.20": return "Reparos, conservações e complementos - GRUPO 26"; break
    case "27"   : return "ESQUADRIA E ELEMENTO EM MATERIAL ESPECIAL"; break
    case "27.02": return "Policarbonato"; break
    case "27.03": return "Chapa de fibra de vidro"; break
    case "27.04": return "PVC"; break
    case "28"   : return "FERRAGEM COMPLEMENTAR PARA ESQUADRIAS"; break
    case "28.01": return "Ferragem para porta"; break
    case "28.05": return "Cadeado"; break
    case "28.20": return "Reparos, conservações e complementos - GRUPO 28"; break
    case "29"   : return "INSERTE METÁLICO"; break
    case "29.01": return "Cantoneira"; break
    case "29.03": return "Cabos e cordoalhas"; break
    case "29.20": return "Reparos, conservações e complementos - GRUPO 29"; break
    case "30"   : return "GRUPO 30 - BARRA DE APOIO"; break
    case "30.01": return "Barra de apoio"; break
    case "30.03": return "Aparelhos elétricos, hidráulicos e a gás"; break
    case "30.04": return "Revestimento"; break
    case "30.06": return "Comunicação visual e sonora"; break
    case "30.08": return "Aparelhos sanitários"; break
    case "30.12": return "Calçadas e passeios"; break
    case "30.14": return "Elevadores e plataformas"; break
    case "32"   : return "IMPERMEABILIZAÇÃO, PROTEÇÃO E JUNTA"; break
    case "32.06": return "Isolamentos térmicos / acústicos"; break
    case "32.07": return "Juntas de dilatação"; break
    case "32.08": return "Juntas de dilatação estrutural"; break
    case "32.09": return "Apoios e afins"; break
    case "32.10": return "Envelope de concreto e proteção de tubos"; break
    case "32.11": return "Isolantes térmicos para tubos e dutos"; break
    case "32.15": return "Impermeabilização flexível com manta"; break
    case "32.16": return "Impermeabilização flexível com membranas"; break
    case "32.17": return "Impermeabilização rígida"; break
    case "32.20": return "Reparos, conservações e complementos - GRUPO 32"; break
    case "33"   : return "PINTURA"; break
    case "33.01": return "Preparo de base"; break
    case "33.02": return "Massa corrida"; break
    case "33.03": return "Pintura em superfícies de concreto / massa / gesso / pedras"; break
    case "33.05": return "Pintura em superfícies de madeira"; break
    case "33.06": return "Pintura em pisos"; break
    case "33.07": return "Pintura em estruturas metálicas"; break
    case "33.09": return "Pintura de sinalização"; break
    case "33.10": return "Pintura em superfície de concreto/massa/gesso/pedras, inclusive preparo"; break
    case "33.11": return "Pintura em superfície metálica, inclusive preparo"; break
    case "33.12": return "Pintura em superfície de madeira, inclusive preparo"; break
    case "33.20": return "Reparos, conservações e complementos - GRUPO 33"; break
    case "34"   : return "PAISAGISMO E FECHAMENTOS"; break
    case "34.01": return "Preparação de solo"; break
    case "34.02": return "Vegetação rasteira"; break
    case "34.03": return "Vegetação arbustiva"; break
    case "34.04": return "Árvores"; break
    case "34.05": return "Cercas e fechamentos"; break
    case "34.07": return "Árvores."; break
    case "34.12": return "Árvores.."; break
    case "34.20": return "Reparos, conservações e complementos - GRUPO 34"; break
    case "35"   : return "PLAYGROUND E EQUIPAMENTO RECREATIVO"; break
    case "35.01": return "Quadra e equipamento de esportes"; break
    case "35.03": return "Abrigo, guarita e quiosque"; break
    case "35.04": return "Bancos"; break
    case "35.05": return "Equipamento recreativo"; break
    case "35.07": return "Mastro para bandeiras"; break
    case "35.20": return "Reparos, conservações e complementos - GRUPO 35"; break
    case "36"   : return "ENTRADA DE ENERGIA ELÉTRICA E TELEFONIA"; break
    case "36.01": return "Entrada de energia - componentes"; break
    case "36.03": return "Caixas de entrada / medição"; break
    case "36.04": return "Suporte (Braquet)"; break
    case "36.05": return "Isoladores"; break
    case "36.06": return "Muflas e terminais"; break
    case "36.07": return "Pára-raios de média tensão"; break
    case "36.08": return "Gerador e grupo gerador"; break
    case "36.09": return "Transformador de entrada"; break
    case "36.20": return "Reparos, conservações e complementos - GRUPO 36"; break
    case "37"   : return "QUADRO E PAINEL PARA ENERGIA ELÉTRICA E TELEFONIA"; break
    case "37.01": return "Quadro para telefonia embutir, proteção IP40 chapa nº 16msg"; break
    case "37.02": return "Quadro para telefonia de sobrepor, proteção IP 40 chapa nº 16msg"; break
    case "37.03": return "Quadro distribuição de luz e força de embutir universal"; break
    case "37.04": return "Quadro distribuição de luz e força de sobrepor universal"; break
    case "37.06": return "Painel autoportante"; break
    case "37.10": return "Barramentos"; break
    case "37.11": return "Bases"; break
    case "37.12": return "Fusíveis"; break
    case "37.13": return "Disjuntores"; break
    case "37.14": return "Chave de baixa tensão"; break
    case "37.15": return "Chave de média tensão"; break
    case "37.16": return "Bus-way"; break
    case "37.17": return "Dispositivo DR ou interruptor de corrente de fuga"; break
    case "37.18": return "Transformador de Potencial"; break
    case "37.19": return "Transformador de corrente"; break
    case "37.20": return "Reparos, conservações e complementos - GRUPO 37"; break
    case "37.21": return "Capacitor de potência"; break
    case "37.22": return "Transformador de comando"; break
    case "37.24": return "Supressor de surto"; break
    case "37.25": return "Disjuntores."; break
    case "38"   : return "TUBULAÇÃO E CONDUTO PARA ENERGIA ELÉTRICA E TELEFONIA BÁSICA"; break
    case "38.01": return "Eletroduto em PVC rígido roscável"; break
    case "38.04": return "Eletroduto em ferro galvanizado - médio"; break
    case "38.05": return "Eletroduto em ferro galvanizado - pesado"; break
    case "38.06": return "Eletroduto em ferro galvanizado a quente - pesado"; break
    case "38.07": return "Canaleta, perfilado e acessórios"; break
    case "38.10": return "Duto fechado de piso e acessórios"; break
    case "38.12": return "Leitos e acessórios"; break
    case "38.13": return "Eletroduto em polietileno de alta densidade"; break
    case "38.15": return "Eletroduto metálico flexível"; break
    case "38.16": return "Rodapé técnico e acessórios"; break
    case "38.19": return "Eletroduto em PVC corrugado flexível"; break
    case "38.21": return "Eletrocalha e acessórios"; break
    case "38.22": return "Eletrocalha e acessórios."; break
    case "38.23": return "Eletrocalha e acessórios.."; break
    case "39"   : return "CONDUTOR E ENFIAÇÃO DE ENERGIA ELÉTRICA E TELEFONIA"; break
    case "39.03": return "Cabo de cobre, isolamento 0,6/1kV, isolação em PVC 70°C"; break
    case "39.04": return "Cabo de cobre nu, têmpera mole"; break
    case "39.05": return "Cabo de cobre tripolar tensão de isolamento 8,7/15 kV, isolação 90°C"; break
    case "39.06": return "Cabo de cobre unipolar, isolamento 8,7/15 kV, isolação EPR 90°C"; break
    case "39.07": return "Cabo de cobre, isolamento 0,6/1 kV, isolação em EPR 90°C"; break
    case "39.08": return "Cabo de cobre tripolar, isolamento 0,6/1kV, isolação para 90°C"; break
    case "39.09": return "Conectores"; break
    case "39.10": return "Terminais de pressão e compressão"; break
    case "39.11": return "Fios e cabos telefônicos"; break
    case "39.12": return "Cabo de cobre de comando para uso geral"; break
    case "39.14": return "Cabo de alumínio nu com alma de aço"; break
    case "39.15": return "Cabo de alumínio nu sem alma de aço"; break
    case "39.18": return "Cabo para transmissão de dados"; break
    case "39.20": return "Reparos, conservações e complementos - GRUPO 39"; break
    case "39.25": return "Cabo de cobre unipolar, isolamento 15/25 kV, isolação 90 °C / 105 °C"; break
    case "39.26": return "Cabo de cobre flexível, isolamento 0,6/1kV - 90° C, baixa emissão fumaça e gases"; break
    case "39.27": return "Cabo óptico"; break
    case "39.30": return "Fios e cabos - audio e vídeo"; break
    case "40"   : return "DISTRIBUIÇÃO DE FORÇA E COMANDO DE ENERGIA ELÉTRICA E TELEFONIA"; break
    case "40.01": return "Caixa de passagem estampada"; break
    case "40.02": return "Caixa de passagem com tampa"; break
    case "40.04": return "Tomadas"; break
    case "40.05": return "Interruptores e minuterias"; break
    case "40.06": return "Conduletes"; break
    case "40.07": return "Caixa de passagem em PVC"; break
    case "40.10": return "Contator"; break
    case "40.11": return "Relé"; break
    case "40.12": return "Chave comutadora e seletora"; break
    case "40.13": return "Amperímetro"; break
    case "40.14": return "Voltímetro"; break
    case "40.20": return "Reparos, conservações e complementos - GRUPO 40"; break
    case "41"   : return "ILUMINAÇÃO"; break
    case "41.02": return "Lâmpadas"; break
    case "41.04": return "Acessórios para iluminação"; break
    case "41.05": return "Lâmpada de descarga de alta potência"; break
    case "41.06": return "Lâmpadas incandescentes"; break
    case "41.07": return "Lâmpadas fluorescentes"; break
    case "41.08": return "Reatores e equipamentos para lâmpadas de descarga de alta potência"; break
    case "41.09": return "Reatores e equipamentos para lâmpadas fluorescentes"; break
    case "41.10": return "Postes e acessórios"; break
    case "41.11": return "Aparelho de iluminação pública e decorativa"; break
    case "41.12": return "Aparelho de iluminação de longo alcance e específica"; break
    case "41.13": return "Aparelho de iluminação a prova de tempo, gases e vapores"; break
    case "41.14": return "Aparelho de iluminação comercial e industrial"; break
    case "41.15": return "Aparelho de iluminação interna decorativa"; break
    case "41.20": return "Reparos, conservações e complementos - GRUPO 41"; break
    case "41.30": return "Luminária e acessórios especiais"; break
    case "41.31": return "ILUMINAÇÃO LED"; break
    case "42"   : return "PÁRA-RAIOS PARA EDIFICAÇÃO"; break
    case "42.01": return "Complementos para pára-raios"; break
    case "42.02": return "Isoladores galvanizados uso geral"; break
    case "42.03": return "Isoladores galvanizados para mastros"; break
    case "42.04": return "Componente de sustentação para mastro galvanizado"; break
    case "42.05": return "Componentes para cabo de descida"; break
    case "42.20": return "Reparos, conservações e complementos - GRUPO 42"; break
    case "43"   : return "APARELHOS ELÉTRICOS, HIDRÁULICOS E A GÁS."; break
    case "43.01": return "Bebedouros"; break
    case "43.02": return "Chuveiros"; break
    case "43.03": return "Aquecedores"; break
    case "43.04": return "Torneiras elétricas"; break
    case "43.05": return "Exaustor, ventilador e circulador de ar"; break
    case "43.06": return "Emissores de som"; break
    case "43.07": return "Aparelho condicionador de ar"; break
    case "43.08": return "Equipamentos para sistema VRF ar condicionado"; break
    case "43.10": return "Bombas centrífugas - uso geral"; break
    case "43.11": return "Bombas submersíveis"; break
    case "43.12": return "Bombas especiais, uso industrial"; break
    case "43.20": return "Reparos, conservações e complementos - GRUPO 43"; break
    case "44"   : return "APARELHOS E METAIS SANITÁRIOS"; break
    case "44.01": return "Aparelhos e louças"; break
    case "44.02": return "Bancadas e tampos"; break
    case "44.03": return "Acessórios e metais"; break
    case "44.04": return "Prateleiras"; break
    case "44.06": return "Aparelhos de aço inoxidável"; break
    case "44.20": return "Reparos, conservações e complementos - GRUPO 44"; break
    case "45"   : return "ENTRADA DE ÁGUA, INCÊNDIO E GÁS"; break
    case "45.01": return "Entrada de água"; break
    case "45.02": return "Entrada de gás"; break
    case "45.03": return "Hidrômetro"; break
    case "45.20": return "Reparos, conservações e complementos - GRUPO 45"; break
    case "46"   : return "TUBULAÇÃO E CONDUTORES PARA ÍIQUIDOS E GASES"; break
    case "46.01": return "Tubulação com conexões em PVC rígido marrom para sistemas prediais de água fria"; break
    case "46.02": return "Tubulação com conexões em PVC rígido branco para esgoto domiciliar"; break
    case "46.03": return "Tubulação c/conexões em PVC rígido branco série R - A.P e esgoto domiciliar"; break
    case "46.04": return "Tubulação c/conexões em PVC rígido c/junta elástica - adução e distribuição água"; break
    case "46.05": return "Tubulação c/conexões em PVC rígido com junta elástica - rede de esgoto"; break
    case "46.07": return "Tubulação com conexões em ferro galvanizado"; break
    case "46.08": return "Tubulação com conexões em aço galvanizado classe schedule"; break
    case "46.09": return "Conexões e acessórios em ferro fundido, predial e tradicional, esgoto e pluvial"; break
    case "46.10": return "Tubulação com conexões em cobre para água quente, gás e vapor"; break
    case "46.12": return "Tubulação em concreto para rede de águas pluviais"; break
    case "46.13": return "Tubulação com conexões em PEAD corrugado perfurado para rede drenagem"; break
    case "46.14": return "Tubulação com conexões em ferro dúctil para redes de saneamento"; break
    case "46.15": return "Tubulação com conexões em PEAD - recalque de tratamento de esgoto"; break
    case "46.18": return "Tubulação e conexões flangeadas em ferro dúctil para redes saneamento"; break
    case "46.19": return "Tubulação e conexões flangeadas em ferro dúctil para redes saneamento."; break
    case "46.20": return "Reparos, conservações e complementos - GRUPO 46"; break
    case "46.21": return "Tubulação com conexões em aço preto classe schedule"; break
    case "46.23": return "Tubulação em concreto para rede de esgoto sanitário"; break
    case "46.26": return "Tubulações, conexões e acessórios em ferro fundido predial SMU-esgoto e pluvial"; break
    case "46.27": return "Tubulação com conexões em cobre, para sistema de ar condicionado"; break
    case "46.29": return "Tubulação, conexões e acessórios em PPR - Água fria / quente"; break
    case "46.30": return "Tubulação, conexões e acessórios em PPR - Água fria / quente."; break
    case "46.31": return "Tubulações, conexões e acessórios em PEAD"; break
    case "46.32": return "Tubulação com conexões em cobre rígido, para sistema VRF de ar condicionado"; break
    case "47"   : return "VÁLVULAS E APARELHOS DE MEDIÇÃO E CONTROLE PARA LÍQUIDOS E GASES"; break
    case "47.01": return "Registro e / ou válvula em latão fundido sem acabamento"; break
    case "47.02": return "Registro e ou válvula em latão fundido com acabamento cromado"; break
    case "47.04": return "Válvula de descarga ou para acionamento de metais sanitários"; break
    case "47.05": return "Registro e / ou válvula em bronze"; break
    case "47.06": return "Registro e / ou válvula em ferro fundido"; break
    case "47.07": return "Registro e / ou válvula em aço carbono fundido"; break
    case "47.09": return "Registro e / ou válvula em aço carbono forjado"; break
    case "47.10": return "Registro e / ou válvula em aço inoxidável forjado"; break
    case "47.11": return "Aparelhos de medição e controle"; break
    case "47.12": return "Registro e / ou válvula em ferro dúctil"; break
    case "47.14": return "Registro e / ou válvula em PVC rígido ou ABS"; break
    case "47.20": return "Reparos, conservações e complementos - GRUPO 47"; break
    case "48"   : return "RESERVATÓRIO E TANQUE PARA LÍQUIDOS E GASES"; break
    case "48.02": return "Reservatório em material sintético"; break
    case "48.03": return "Reservatório metálico"; break
    case "48.04": return "Reservatório em concreto"; break
    case "48.05": return "Torneira de bóia"; break
    case "48.20": return "Reparos, conservações e complementos - GRUPO 48"; break
    case "49"   : return "CAIXA, RALO, GRELHA E ACESSÓRIO HIDRÁULICO"; break
    case "49.01": return "Caixas sifonadas de PVC rígido"; break
    case "49.03": return "Caixa de gordura"; break
    case "49.04": return "Ralos de PVC rígido"; break
    case "49.05": return "Ralos de ferro fundido"; break
    case "49.06": return "Grelhas e tampas"; break
    case "49.08": return "Caixas de passagem e inspeção"; break
    case "49.11": return "Canaletas e afins"; break
    case "49.12": return "Poço de visita / boca de lobo / caixa de passagem e afins"; break
    case "49.13": return "Filtros anaeróbios"; break
    case "49.14": return "Fossa séptica"; break
    case "49.15": return "Anel e aduela pré-moldados"; break
    case "49.16": return "Acessórios hidráulicos para água de reuso"; break
    case "50"   : return "DETECÇÃO, COMBATE E PREVENÇÃO A INCÊNDIO"; break
    case "50.01": return "Hidrantes e acessórios"; break
    case "50.02": return "Registros e válvulas controladoras"; break
    case "50.05": return "Iluminação e sinalização de emergência"; break
    case "50.10": return "Extintores"; break
    case "50.20": return "Reparos, conservações e complementos - GRUPO 50"; break
    case "54"   : return "PAVIMENTAÇÃO E PASSEIO"; break
    case "54.01": return "Pavimentação preparo de base"; break
    case "54.02": return "Pavimentação com pedrisco e revestimento primário"; break
    case "54.03": return "Pavimentação flexível"; break
    case "54.04": return "Pavimentação em paralelepípedos e blocos de concreto"; break
    case "54.06": return "Guias e sarjetas"; break
    case "54.07": return "Calçadas e passeios."; break
    case "54.20": return "Reparos, conservações e complementos - GRUPO 54"; break
    case "55"   : return "LIMPEZA E ARREMATE"; break
    case "55.01": return "Limpeza de obra"; break
    case "55.02": return "Limpeza e desinfecção sanitária"; break
    case "55.10": return "Remoção de entulho"; break
    case "61"   : return "CONFORTO MECÂNICO, EQUIPAMENTO E SISTEMA"; break
    case "61.01": return "Elevador"; break
    case "61.10": return "Climatização"; break
    case "61.12": return "Exaustão"; break
    case "61.14": return "Ventilação"; break
    case "61.20": return "Reparos, conservações e complementos - GRUPO 61"; break
    case "62"   : return "COZINHA, REFEITÓRIO E LAVANDERIA INDUSTRIAL, EQUIPAMENTO"; break
    case "62.04": return "Mobiliário e acessórios"; break
    case "62.20": return "Reparos, conservações e complementos - GRUPO 62"; break
    case "65"   : return "RESFRIAMENTO E CONSERVAÇÃO DE MATERIAL PERECIVEL"; break
    case "65.01": return "Câmara frigorífica para resfriado"; break
    case "65.02": return "Câmara frigorífica para congelado"; break
    case "66"   : return "SEGURANÇA, VIGILÂNCIA E CONTROLE, EQUIPAMENTO E SISTEMA"; break
    case "66.02": return "Controle de acessos e alarme"; break
    case "66.08": return "Equipamentos para sistema de segurança, vigilância e controle"; break
    case "66.20": return "Reparos, conservações e complementos - GRUPO 66"; break
    case "67"   : return "CAPTAÇÃO, ADUÇÃO E TRATAMENTO DE ÁGUA E ESGOTO, EQUIPAMENTO E SISTEMA"; break
    case "67.02": return "Tratamento"; break
    case "68"   : return "ELETRIFICAÇÃO, EQUIPAMENTO E SISTEMA"; break
    case "68.01": return "Posteamento"; break
    case "68.02": return "Estrutura específica"; break
    case "68.20": return "Reparos, conservações e complementos - GRUPO 68"; break
    case "69"   : return "TELEFONIA, LÓGICA E TRANSMISSÃO DE DADOS, EQUIPAMENTO E SISTEMA"; break
    case "69.03": return "Distribuição e comando, caixas e equipamentos específicos"; break
    case "69.05": return "Estabilização de tensão"; break
    case "69.06": return "Sistemas ininterruptos de energia"; break
    case "69.08": return "Equipamentos para informática"; break
    case "69.09": return "Sistema de rede"; break
    case "69.10": return "Telecomunicações"; break
    case "69.20": return "Reparos, conservações e complementos - GRUPO 69"; break
    case "97"   : return "SINALIZAÇÃO E COMUNICAÇÃO VISUAL"; break
    case "97.01": return "Adesivos"; break
    case "97.02": return "Placas, pórticos e obeliscos arquitetônicos"; break
    case "97.03": return "Pintura de letras e pictogramas"; break
    case "97.04": return "Pintura de sinalização viária"; break
    case "97.05": return "Placas, pórticos e sinalização viária"; break
    case "98"   : return "ARQUITETURA DE INTERIORES"; break
    case "98.02": return "Mobiliário"; break
    case "98.20": return "Reparos, conservações e complementos - GRUPO 98"; break
  default: return tipo
  }
}

tipo_de_composicao_agetop_civil_por_extenso = function (tipo) {
  switch (tipo) {
    case "02": return "SERVIÇOS PRELIMINARES"; break
    case "03": return "TRANSPORTES"; break
    case "04": return "SERVIÇO EM TERRA"; break
    case "05": return "FUNDAÇÕES E SONDAGENS"; break
    case "06": return "ESTRUTURA"; break
    case "07": return "INST. ELÉT./TELEFÔNICA/CABEAMENTO ESTRUTURADO"; break
    case "08": return "INSTALAÇÕES HIDRO-SANITÁRIAS"; break
    case "09": return "INSTALAÇÕES ESPECIAIS"; break
    case "10": return "ALVENARIAS E DIVISÓRIAS"; break
    case "11": return "ALVENARIA AUTO-PORTANTE"; break
    case "12": return "IMPERMEABILIZAÇÃO"; break
    case "13": return "ISOLAMENTO TERMICO E ACUSTICO"; break
    case "14": return "ESTRUTURA DE MADEIRA"; break
    case "15": return "ESTRUTURAS METÁLICAS"; break
    case "16": return "COBERTURAS"; break
    case "17": return "ESQUADRIAS DE MADEIRAS"; break
    case "18": return "ESQUADRIAS METÁLICAS"; break
    case "19": return "VIDROS"; break
    case "20": return "REVESTIMENTO DE PAREDES"; break
    case "21": return "FORROS"; break
    case "22": return "REVESTIMENTO DE PISO"; break
    case "23": return "FERRAGENS"; break
    case "24": return "MARCENARIA"; break
    case "25": return "ADMINISTRAÇÃO - MENSALISTAS"; break
    case "26": return "PINTURA"; break
    case "27": return "DIVERSOS"; break
  default: return tipo
  }
}
