export CUDA_VISIBLE_DEVICES=0

model_name=Informer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_10_10 \
  --model $model_name \
  --data ETTh1 \
  --features M \
  --seq_len 10 \
  --label_len 5 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1
