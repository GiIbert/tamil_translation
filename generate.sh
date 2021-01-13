DATASET=PIB
TESTSET=WMT
fairseq-generate data-bin/$TESTSET \
 --task translation \
 --path ./checkpoint/$DATASET/checkpoint_best.pt \
 --source-lang en --target-lang ta\
 --batch-size 32 --beam 5 \
 --results-path ./generation_results/$DATASET-ON-$TESTSET/ \
 --tokenizer moses \
 --remove-bpe sentencepiece