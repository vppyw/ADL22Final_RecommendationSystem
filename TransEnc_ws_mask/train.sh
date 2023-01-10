#! /bin/bash
python run_transrec.py \
--device cuda:4 \
--num_workers 8 \
--dir transrec_seen_course_mask5 \
--do_save \
--predict_class course \
--train_file ../../hahow/train_users.json \
--valid_file ../../hahow/val_seen_users.json \
--test_file ../../hahow/test_seen_users.json \
--seen_filter ../../hahow/filter.json \
--predict_file predict.csv \
--mask_p 0.5 \
--embed_dim 256 \
--hidden_dim 512 \
--nhead 2 \
--num_layers 2 \
--dropout 0.2 \
--do_scheduler \
--warmup_step 5 \
--early_stop 10