#!/bin/sh

### cd /to-this-directory/Tools/Scripts/macos
### ./OpenTsvFiles_InBBEdit.sh

SCRIPT_DIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"
LANGUAGES="$SCRIPT_DIR/../../../Languages"

### Application 
open -a BBEdit "$LANGUAGES/Afrikaans/tsv/Afrikaans_af.tsv"
open -a BBEdit "$LANGUAGES/Arabic/tsv/Arabic_ar.tsv"
open -a BBEdit "$LANGUAGES/Bhojpuri/tsv/Bhojpuri_bho.tsv"
open -a BBEdit "$LANGUAGES/Bulgarian/tsv/Bulgarian_bg.tsv"
open -a BBEdit "$LANGUAGES/Chinese_HongKong/tsv/Chinese_HongKong_zh_HK.tsv"
open -a BBEdit "$LANGUAGES/Chinese_Simplified/tsv/Chinese_Simplified_zh_Hans.tsv"
open -a BBEdit "$LANGUAGES/Chinese_Traditional/tsv/Chinese_Traditional_zh_Hant.tsv"
open -a BBEdit "$LANGUAGES/Czech/tsv/Czech_cs.tsv"
open -a BBEdit "$LANGUAGES/Danish/tsv/Danish_da.tsv"
open -a BBEdit "$LANGUAGES/Dutch/tsv/Dutch_nl.tsv"
open -a BBEdit "$LANGUAGES/English_GB/tsv/English_GB_en-GB.tsv"
open -a BBEdit "$LANGUAGES/English_US/tsv/English_US_en.tsv"
open -a BBEdit "$LANGUAGES/Estonian/tsv/Estonian_et.tsv"
open -a BBEdit "$LANGUAGES/Finnish/tsv/Finnish_fi.tsv"
open -a BBEdit "$LANGUAGES/French/tsv/French_fr.tsv"
open -a BBEdit "$LANGUAGES/French_Canada/tsv/French_Canada_fr_CA.tsv"
open -a BBEdit "$LANGUAGES/Georgian/tsv/Georgian_ka.tsv"
open -a BBEdit "$LANGUAGES/German/tsv/German_de.tsv"
open -a BBEdit "$LANGUAGES/Greek/tsv/Greek_el.tsv"
open -a BBEdit "$LANGUAGES/Hebrew/tsv/Hebrew_he.tsv"
open -a BBEdit "$LANGUAGES/Hindi/tsv/Hindi_hi.tsv"
open -a BBEdit "$LANGUAGES/Hungarian/tsv/Hungarian_hu.tsv"
open -a BBEdit "$LANGUAGES/Italian/tsv/Italian_it.tsv"
open -a BBEdit "$LANGUAGES/Japanese/tsv/Japanese_ja.tsv"
open -a BBEdit "$LANGUAGES/Kannada/tsv/Kannada_kn.tsv"
open -a BBEdit "$LANGUAGES/Korean/tsv/Korean_ko.tsv"
open -a BBEdit "$LANGUAGES/Lithuanian/tsv/Lithuanian_lt.tsv"
open -a BBEdit "$LANGUAGES/Mongolian/tsv/Mongolian_mn.tsv"
open -a BBEdit "$LANGUAGES/Norwegian_nb/tsv/Norwegian_nb.tsv"
open -a BBEdit "$LANGUAGES/Persian/tsv/Persian_fa.tsv"
open -a BBEdit "$LANGUAGES/Polish/tsv/Polish_pl.tsv"
open -a BBEdit "$LANGUAGES/Portuguese/tsv/Portuguese_pt.tsv"
open -a BBEdit "$LANGUAGES/Portuguese_Brazil/tsv/Portuguese_pt_BR.tsv"
open -a BBEdit "$LANGUAGES/Portuguese_Portugal/tsv/Portuguese_pt_PT.tsv"
open -a BBEdit "$LANGUAGES/Romanian/tsv/Romanian_ro.tsv"
open -a BBEdit "$LANGUAGES/Russian/tsv/Russian_ru.tsv"
open -a BBEdit "$LANGUAGES/Serbian_Cyrillic/tsv/Serbian_Cyrillic_sr.tsv"
open -a BBEdit "$LANGUAGES/Serbian_Latin/tsv/Serbian_Latin_sr_Latn.tsv"
open -a BBEdit "$LANGUAGES/Slovak/tsv/Slovak_sk.tsv"
open -a BBEdit "$LANGUAGES/Slovenian/tsv/Slovenian_sl.tsv"
open -a BBEdit "$LANGUAGES/Spanish/tsv/Spanish_es.tsv"
open -a BBEdit "$LANGUAGES/Swedish/tsv/Swedish_sv.tsv"
open -a BBEdit "$LANGUAGES/Thai/tsv/Thai_th.tsv"
open -a BBEdit "$LANGUAGES/Turkish/tsv/Turkish_tr.tsv"
open -a BBEdit "$LANGUAGES/Vietnamese/tsv/Vietnamese_vi.tsv"

### Store 

### URLs 
open -a BBEdit "$LANGUAGES/English_US/tsv/English_US_en_urls.tsv"
open -a BBEdit "$LANGUAGES/Spanish/tsv/Spanish_es_urls.tsv"
