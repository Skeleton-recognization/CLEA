
#!/bin/bash

for dim in 64
do
    echo "$dim "
    python main_1.py \
    --pos_margin 0.1 \
    --neg_margin 0.9 \
    --same_embedding 1 \
    --dataset 'Dunn' \
    --max_basket_size 50 \
    --max_basket_num 6 \
    --num_product 4995 \
    --num_users 36421 \
    --alternative_train_batch 500 \
    --test_every_epoch 4 \
    --G1_flag 0 \
    --device 1 \
    --log_fire 'basemodel' \
    --dropout  0.2 \
    --lr 0.001 \
    --l2 0.00001 \
    --output_dir './result' \
    --pretrain_epoch 20 \
    --before_epoch 0 \
    --epoch 10 \
    --batch_size 256 \
    --embedding_dim $dim \
    --temp_learn 1 \
    --history 1


    python main_1.py \
    --pos_margin 0.1 \
    --neg_margin 0.9 \
    --same_embedding 1 \
    --dataset 'Dunn' \
    --max_basket_size 50 \
    --max_basket_num 6 \
    --num_product 4995 \
    --num_users 36421 \
    --alternative_train_epoch 10 \
    --alternative_train_epoch_D 10 \
    --alternative_train_batch 200 \
    --test_every_epoch 4 \
    --G1_flag 0 \
    --device 1 \
    --log_fire 't_10_ANN_0001_lr_001_G1_001_pos_0.1' \
    --dropout  0.2 \
    --lr 0.001 \
    --G1_lr 0.001 \
    --l2 0.00001 \
    --output_dir './result' \
    --pretrain_epoch 2 \
    --before_epoch 2 \
    --epoch 30 \
    --batch_size 256 \
    --embedding_dim $dim \
    --temp_learn 1 \
    --temp_min 0.2 \
    --ANNEAL_RATE 0.0001 \
    --temp 10 \
    --history 1
done