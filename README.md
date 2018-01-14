&nbsp; [![goodtables.io](https://goodtables.io/badge/github/datasets-br/unitex-pt-br.svg)](https://goodtables.io/github/datasets-br/unitex-pt-br) &nbsp; [![](https://upload.wikimedia.org/wikipedia/commons/e/eb/PICOL_icon_View.svg) datapackage preview](http://data.okfn.org/tools/view?url=https%3A%2F%2Fraw.githubusercontent.com%2Fdatasets-br%2Funitex-pt-br%2Fmaster%2Fdatapackage.json)

**Note**: [dictionary data](data) in this repo  is a **read-only mirror** (translated to open formats for data interchange) of the official Unitex repository, where active development is ongoing.

# unitex-pt-br

The Brazilian Portuguese ([`pt-BR` language](https://en.wikipedia.org/wiki/Brazilian_Portuguese#pt-BR)),  [Unitex](http://unitexgramlab.org) *primary sources* for the vocabulary and its morphological definitions, in a open data ([FrictionlessData](https://frictionlessdata.io/)) interchange format.

Controlled primary sources:

* **`pt-BR` Alphabet**: [Alphabet.csv](data/Alphabet.csv)  and [Alphabet_sort.csv](data/Alphabet_sort.csv)

* **`pt-BR` DELAS**: DELA for Simple words, "Dicionário de Palavras Simples para o Português Brasileiro". ~67500 canonic words and its inflection rules.  [DELAS.csv](data/DELAS.csv).

* **`pt-BR` DELACF**: DELA for Compound Forms,  "Dicionário de Palavras Compostas Flexionadas para o Português Brasileiro". ~4000 compound words and its morphological classification.  [DELACF.csv](data/DELACF.csv).

* **`pt-BR` Inflections**: all `*.fst2` (finite state transducer v2) files, the compiled format for *inflection graphs* (see chapter 14.3 of the Unitex Manual).  Each file contains only the basic representations of transitions of the graph &mdash; not changes by Graph-layout editing, changes only when topology or classification is modified.  [Under construction (JSON format)](https://github.com/UnitexGramLab/unitex-lingua/issues/4), see [dumps](dumps) folder.


## References

* Main sources:
  - DELA:  [NILC/unitex-pb/dicionatios](http://www.nilc.icmc.usp.br/nilc/projects/unitex-pb/web/dicionarios.html)
  - FST2: https://github.com/UnitexGramLab/unitex-lingua

* [Unitex-GramLab-3.1-usermanual-en](http://unitexgramlab.org/releases/latest-stable/man/Unitex-GramLab-3.1-usermanual-en.pdf) - UNITEX 3.1 USER MANUAL. See:
   - Chapter 3.1, "The DELA dictionaries" (DELAF, DELAS, DELACF)
   - Chapter 3.5, "Automatic inflection";
   - Chapter 13.22, "Grf2Fst2".

* [Formato dos Dicionários Unitex-PB](http://www.nilc.icmc.usp.br/nilc/projects/unitex-pb/web/files/Formato_DELAF_PB.pdf) (2015).

* [Novo dicionario de formas flexionadas do UNITEX-PB, Avaliação da flexão verbal](http://www.aclweb.org/anthology/W15-5621) (2015).

* Date ranges https://en.wikipedia.org/wiki/Reforms_of_Portuguese_orthography#Timeline_of_spelling_reforms

<!--
Literatura de apoio nas discussões
* http://www.geterm.ufscar.br/textospublicados/do_texto_ao_termo.pdf
*

* [Criação de grafos verbais para o software Unitex](http://studylibpt.com/doc/5490412/cria%C3%A7%C3%A3o-de-grafos-verbais-para-o-software-unitex)

-->

## Updating sources

See [spreadsheets](https://docs.google.com/spreadsheets/d/1S-BF-ion6rY59kNRP4QYJphbsq_knAq_SPLzQ9XafjM/) do download here as [data/*.csv](data).

Any other file must be validated by software (see SQL back-end).

## License

* Unitex sources: [LGPLLR](https://spdx.org/licenses/LGPLLR.html) - Lesser General Public License For Linguistic Resources.

* Other texts and sources: [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) - Attribution 4.0 International.
