## Formato dos Dicionários Unitex-PB

Adaptado do "Apêndice A" de http://www.nilc.icmc.usp.br/nilc/projects/unitex-pb/web/files/Formato_DELAF_PB.pdf

Este apêndice tem por objetivo apresentar os campos e códigos utilizados nos dicionários que compõem o Unitex-PB.  Para atualizar datasets com estes e outros dados, usar [esta planilha colaborativa](https://docs.google.com/spreadsheets/d/18ZarvlgXPXafyphzpyVPgw5XQ1RUBMk2DTBC-pJI7R4/edit#gid=0).

## A.1.  Estrutura das Entradas

Estrutura das entradas: `Palavra,canônica.Classe+traços:flexão`

Cada verbete poderá estar classificado em mais de uma classe gramatical, neste caso haverá uma entrada para cada classe.

## A.2. As categorias (classes) básicas do verbete são:

### A.2.1 Substantivo
Classe: N

Gênero:
* m: masculino
* f: feminino

Número:
* s: singular
* p: plural

Grau:
 * A: aumentativo
 * D: diminutivo (podendo ser nulo)


Estrutura: `Entrada,canônica.N:grau gênero número`

Exemplos:
 * menino: menino,menino.N:ms
 * meninos: meninos,menino.N:mp
 * meninão: meninão,menino.N:Ams
 * lápis: lápis,lápis.N:ms:mp
 * ajuda: ajuda,ajuda.N:fs

### A.2.2 Adjetivo
Classe: A

Gênero:
 * m: masculino
 * f: feminino

Número:
 * s: singular
 * p: plural

Grau: (podendo ser nulo)
 * A: aumentativo
 * D: diminutivo
 * S: superlativo

Estrutura: `Entrada,canônica.A:grau gênero número`

Exemplos:
 * bonito: bonito,bonito.A:ms
 * bonitas: bonitas,bonito.A:fp
 * aprazível: aprazível,aprazível.A:ms:fs
 * simples: simples,simples.A:ms:mp:fs:fp
 * igual: igual,igual.A:ms:fs
 * amabilíssimo: amabilíssimo,amável.A:Sms

### A.2.3 Artigo
Classe: DET+Art

Tipo (subclasse):
 * Def: Definido
 * Ind: Indefinido

## A.2. As categorias (classes) básicas do verbete são:

Gênero:
 * m: masculino
 * f: feminino

Número:
 * s: singular
 * p: plural

Estrutura: `Entrada,canônica.DET+Art+Tipo:gênero número`

Exemplos:
 * o: o,o.DET+Art+Def:ms
 * umas: umas,um.DET+Art+Ind:fp

### A.2.4 Preposição

Classe: PREP

Estrutura: `Entrada,canônica.PREP`

Exemplos:
 * ante: ante,ante.PREP
 * de: de,de.PREP

### A.2.5 Conjunção

Classe: CONJ

Estrutura: `Entrada,canônica.CONJ`

Exemplos:
 * mas: mas,mas.CONJ
 * mais: mais,mais.CONJ
 * mal: mal,mal.CONJ

### A.2.6 Numeral

Classe: DET+Num

Tipo:
 * C: cardinal
 * O: ordinal
 * M: multiplicativo
 * F: Fracionário
 * L:

Gênero:
 * m: masculino
 * f: feminino

Número:
 * s: singular
 * p: plural

Estrutura: `Entrada,canônica.DET+Num:tipo gênero número`

Exemplos:
 * segundo: segundo,segundo.DET+Num:Oms
 * duplo: duplo,duplo.DET+Num:Mms

### A.2.7 Pronome
Classe: PRO

Tipo:

 PRO+Dem:
 PRO+Ind:
 PRO+Rel:
 PRO+Int:
 PRO+Tra:
 PRO+Pos:
 PRO+Pes:

Demonstrativo
Indefinido
Relativo
Interrogativo
Tratamento
Possessivo
Pessoal

Forma:
A: Forma Acusativa
D: Forma Dativa
N: Forma Nominativa
O: Forma Oblíqua
R: Forma Reflexa
(podendo ser nulo)

Pessoa:
1: Primeira Pessoa
2: Segunda Pessoa
3: Terceira Pessoa

Gênero:
m: masculino
f: feminino
Número:

## A.2. As categorias (classes) básicas do verbete são:

 * s: singular
 * p: plural

Estrutura: `Entrada,canônica.PRO+Tipo:forma pessoa gênero número`

Exemplos:
 * senhora: senhora,senhor.PRO+Tra:3fs
 * eu: eu,eu.PRO+Pes:N1ms:N1fs

### A.2.8 Verbo

Classe: V

Tempo:
* W: Infinitivo
* G: Gerúndio
* K: Particípio
* P: Presente do Indicativo
* I: Pretérito Imperfeito do Indicativo
* J: Pretérito Perfeito do Indicativo
* F: Futuro do Presente do Indicativo
* Q: Pretérito mais que Perfeito do Indicativo
* S: Presente do Subjuntivo
* T: Imperfeito do Subjuntivo
* U: Futuro do Subjuntivo
* Y: Imperativo
* C: Futuro do Pretérito

Pessoa:
* 1s: eu
* 2s: tu
* 3s: ele
* 1p: nós
* 2p: vós
* 3p: eles


Estrutura: `Entrada,canônica.V:tempo pessoa`

Exemplos:
 * cantaríamos: cantaríamos,cantar.V:C1p
 * cantarias: cantarias,cantar.V:C2s
 * cantaria: cantaria,cantar.V:C1s:C3s


### A.2.9 Advérbio

Classe: ADV

Estrutura: `Entrada,canônica.ADV`

Exemplos:
* abaixo: abaixo,abaixo.ADV
* misericordiosissimamente:
* misericordiosissimamente,misericordiosissimamente.ADV
* mesmo: mesmo,mesmo.ADV

### A.2.10 Prefixos

Classe: PFX

Estrutura: `Entrada,canônica.PFX`

Exemplos:
* super: super,super.PFX
* pós: pós,pós.PFX
* sub: sub,sub.PFX

### A.2.11 Siglas

Classe: SIGL

Estrutura: `Entrada,canônica.SIGL`

Exemplos:
* ONU: ONU,ONU.SIGL
* PDT: PDT,PDT.SIGL
* OTAN: OTAN,OTAN.SIGL
* USP: USP,USP.SIGL

### A.2.12 Abreviaturas

Classe: ABREV

Gênero:
* m: masculino
* f: feminino


## A.2 As categorias (classes) básicas do verbete são:

s: singular
p: plural

Estrutura: `Entrada,canônica.ABREV:gênero número`

Exemplos:
* ml: ml,ml.ABREV:ms
* mm: mm,mm.ABREV:ms

### A.2.13. Interjeição

Classe: INTERJ
Estrutura: `Entrada,canônica.INTERJ`

Exemplos:
* Ah: Ah,Ah.INTERJ
* Ih: Ih,Ih.INTERJ
* Olá: Olá,Olá.INTERJ
* Oi: Oi,Oi.INTERJ

