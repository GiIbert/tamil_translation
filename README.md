# Translation model training 


## Requirements

[pytorch](https://pytorch.org/get-started/locally/)
[sentencepiece](https://github.com/google/sentencepiece#build-and-install-sentencepiece-command-line-tools-from-c-source)

[sacremoses](https://github.com/alvations/sacremoses#install)
[fairseq](https://github.com/pytorch/fairseq#requirements-and-installation)

For compute TER:
pip install python-Levenshtein

## Description
apply_bpe.sh : tokenize english corpus and apply BPE to both english and tamil corpuses.
preprocess.sh : binarize datasets for fairseq
train.sh : run training
generate.sh : generate translation result and compute BLEU score


