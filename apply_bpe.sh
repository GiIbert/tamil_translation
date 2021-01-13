DATASET=EP
DESTDIR=EP
mkdir ./intermediate_datasets/BPE/$DESTDIR/
mkdir ./intermediate_datasets/MOSES/$DESTDIR/
sacremoses -l en -j 4 tokenize  < ./datasets/$DATASET/train.en > ./intermediate_datasets/MOSES/$DESTDIR/train.en
sacremoses -l en -j 4 tokenize  < ./datasets/$DATASET/val.en > ./intermediate_datasets/MOSES/$DESTDIR/val.en
sacremoses -l en -j 4 tokenize  < ./datasets/$DATASET/test.en > ./intermediate_datasets/MOSES/$DESTDIR/test.en
spm_encode --model='./bpe_model/en.wiki.bpe.vs10000.model' --output_format=piece <./intermediate_datasets/MOSES/$DESTDIR/train.en > ./intermediate_datasets/BPE/$DESTDIR/train.en
spm_encode --model='./bpe_model/ta.wiki.bpe.vs50000.model' --output_format=piece < ./datasets/$DATASET/train.ta > ./intermediate_datasets/BPE/$DESTDIR/train.ta
spm_encode --model='./bpe_model/en.wiki.bpe.vs10000.model' --output_format=piece < ./intermediate_datasets/MOSES/$DESTDIR/val.en> ./intermediate_datasets/BPE/$DESTDIR/val.en
spm_encode --model='./bpe_model/ta.wiki.bpe.vs50000.model' --output_format=piece < ./datasets/$DATASET/val.ta > ./intermediate_datasets/BPE/$DESTDIR/val.ta
spm_encode --model='./bpe_model/en.wiki.bpe.vs10000.model' --output_format=piece < ./intermediate_datasets/MOSES/$DESTDIR/test.en > ./intermediate_datasets/BPE/$DESTDIR/test.en
spm_encode --model='./bpe_model/ta.wiki.bpe.vs50000.model' --output_format=piece < ./datasets/$DATASET/test.ta > ./intermediate_datasets/BPE/$DESTDIR/test.ta