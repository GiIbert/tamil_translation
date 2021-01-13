DATASET=EP
fairseq-preprocess --source-lang en --target-lang ta \
    --trainpref intermediate_datasets/BPE/$DATASET/train --validpref intermediate_datasets/BPE/$DATASET/val --testpref intermediate_datasets/BPE/$DATASET/test \
    --destdir ./data-bin/$DATASET-T \
    --srcdict data-bin/MERGED/dict.en.txt \
    --tgtdict data-bin/MERGED/dict.ta.txt \
    --workers 20


