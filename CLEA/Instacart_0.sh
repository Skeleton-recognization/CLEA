
#!/bin/bash
for dim in 64
do
    echo "$dim "
    python main_1.py \
    --pos_margin 0.1 \
    --neg_margin 0.9 \
    --same_embedding 1 \
    --dataset 'Instacart' \
    --num_product 8222 \
    --num_users 6886 \
    --max_basket_size 35 \
    --max_basket_num 32 \
    --alternative_train_batch 1000 \
    --test_every_epoch 4 \
    --G1_flag 0 \
    --device 0 \
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
    --same_embedding 1 \
    --pos_margin 0.1 \
    --neg_margin 0.9 \
    --dataset 'Instacart' \
    --num_product 8222 \
    --num_users 6886 \
    --max_basket_size 35 \
    --max_basket_num 32 \
    --alternative_train_batch 1000 \
    --alternative_train_epoch 5 \
    --alternative_train_epoch_D 5 \
    --test_every_epoch 4 \
    --G1_flag 0 \
    --device 0 \
    --log_fire 't_10_ANN_0001_same_1_lr_001_G1_001_diftemp0_0_pos_01_epoch_G5_D5' \
    --dropout  0.2 \
    --lr 0.001 \
    --G1_lr 0.001 \
    --l2 0.00001 \
    --output_dir './result' \
    --pretrain_epoch 2 \
    --before_epoch 2 \
    --epoch 40 \
    --batch_size 128 \
    --embedding_dim $dim \
    --temp_learn 0 \
    --temp_min 0.3 \
    --ANNEAL_RATE 0.0001 \
    --temp 10 \
    --history 1
done

