DATATYPE="vatex"
TRAIN_CSV="data/vatex/train.csv"
VAL_CSV="data/vatex/val_retrieval.csv"
DATA_PATH="data/vatex/caption.pickle"
AUDIO_PATH="../data/vatex/audios_16k"
VIDEO_PATH="../data/vatex/video_segments"
OUTPUT_ROOT="ckpts"
FEATURES_PATH="../data/vatex/raw_frames"


INIT_MODEL="../models/pre_trained/AudioClip_audioset+howto_with_initial_self_superised_/pytorch_model.bin.pretrain.23"
# CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
# main_task_video_retrieval.py --do_train  --num_thread_reader=4  \
# --epochs=5 --batch_size=128 --n_display=100 \
# --model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 \
# --train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id  \
# --val_csv ${VAL_CSV} \
# --data_path ${DATA_PATH} \
# --features_path ${FEATURES_PATH} \
# --raw_video_path ${VIDEO_PATH} \
# --audio_path ${AUDIO_PATH}  \
# --output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
# --datatype ${DATATYPE} \
# --lr 1e-7 --max_words 32 --max_frames 12 --batch_size_val 128 \
# --feature_framerate 1 --coef_lr 1  \
# --freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
# --loss_func tav_nce \
# --max_audio_length=6    \
# --retrieval_finetune query_key \

# CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
# main_task_video_retrieval.py --do_train  --num_thread_reader=4  \
# --epochs=5 --batch_size=128 --n_display=100 \
# --model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 \
# --train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id  \
# --val_csv ${VAL_CSV} \
# --data_path ${DATA_PATH} \
# --features_path ${FEATURES_PATH} \
# --raw_video_path ${VIDEO_PATH} \
# --audio_path ${AUDIO_PATH}  \
# --output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
# --datatype ${DATATYPE} \
# --lr 1e-7 --max_words 32 --max_frames 12 --batch_size_val 128 \
# --feature_framerate 1 --coef_lr 1  \
# --freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
# --loss_func tav_nce \
# --max_audio_length=6    \
# --retrieval_finetune feat_key \


# CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
# main_task_video_retrieval.py --do_train  --num_thread_reader=4  \
# --epochs=5 --batch_size=128 --n_display=100 \
# --model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 \
# --train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id  \
# --val_csv ${VAL_CSV} \
# --data_path ${DATA_PATH} \
# --features_path ${FEATURES_PATH} \
# --raw_video_path ${VIDEO_PATH} \
# --audio_path ${AUDIO_PATH}  \
# --output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
# --datatype ${DATATYPE} \
# --lr 1e-7 --max_words 32 --max_frames 12 --batch_size_val 128 \
# --feature_framerate 1 --coef_lr 1  \
# --freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
# --loss_func tav_nce \
# --max_audio_length=6    \
# --retrieval_finetune feat_plus \

# CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
# main_task_video_retrieval.py --do_train  --num_thread_reader=4  \
# --epochs=5 --batch_size=128 --n_display=100 \
# --model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 \
# --train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id  \
# --val_csv ${VAL_CSV} \
# --data_path ${DATA_PATH} \
# --features_path ${FEATURES_PATH} \
# --raw_video_path ${VIDEO_PATH} \
# --audio_path ${AUDIO_PATH}  \
# --output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
# --datatype ${DATATYPE} \
# --lr 1e-7 --max_words 32 --max_frames 12 --batch_size_val 128 \
# --feature_framerate 1 --coef_lr 1  \
# --freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
# --loss_func tav_nce \
# --max_audio_length=6    \
# --retrieval_finetune sim_plus \

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
main_task_video_retrieval.py --do_train  --num_thread_reader=12  \
--epochs=10 --batch_size=128 --n_display=100 \
--model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 --cross_model cross-clip \
--train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id --with_control_token 0 \
--val_csv ${VAL_CSV} \
--data_path ${DATA_PATH} \
--features_path ${FEATURES_PATH} \
--raw_video_path ${VIDEO_PATH} \
--audio_path ${AUDIO_PATH}  \
--output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
--datatype ${DATATYPE} \
--lr 5e-4 --max_words 32 --max_frames 12 --batch_size_val 64 \
--feature_framerate 1 --coef_lr 2e-4  \
--freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
--loss_func tav_nce \
--max_audio_length=6    \
--retrieval_finetune loose_seq --train_sim_after_cross \

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
main_task_video_retrieval.py --do_train  --num_thread_reader=12  \
--epochs=10 --batch_size=64 --n_display=100 \
--model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 --cross_model cross-clip \
--train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id --with_control_token 0 \
--val_csv ${VAL_CSV} \
--data_path ${DATA_PATH} \
--features_path ${FEATURES_PATH} \
--raw_video_path ${VIDEO_PATH} \
--audio_path ${AUDIO_PATH}  \
--output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
--datatype ${DATATYPE} \
--lr 5e-4 --max_words 32 --max_frames 12 --batch_size_val 64 \
--feature_framerate 1 --coef_lr 2e-4  \
--freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
--loss_func tav_nce \
--max_audio_length=6    \
--retrieval_finetune tight_seq --train_sim_after_cross \


CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 --master_port=25103 \
main_task_video_retrieval.py --do_train  --num_thread_reader=12  \
--epochs=10 --batch_size=32 --n_display=100 \
--model_type audioclip --audio_model audio-clip --pretrained_clip_name ViT-B/32 --cross_model cross-clip \
--train_csv ${TRAIN_CSV}  --init_model ${INIT_MODEL}  --filter_video_id --with_control_token 0 \
--val_csv ${VAL_CSV} \
--data_path ${DATA_PATH} \
--features_path ${FEATURES_PATH} \
--raw_video_path ${VIDEO_PATH} \
--audio_path ${AUDIO_PATH}  \
--output_dir ${OUTPUT_ROOT}/ckpt_vatex_video_retrieval/feat_fuse   \
--datatype ${DATATYPE} \
--lr 5e-4 --max_words 32 --max_frames 12 --batch_size_val 32 \
--feature_framerate 1 --coef_lr 2e-4  \
--freeze_layer_num -1  --slice_framepos 2 --multi_sentence 10 \
--loss_func tav_nce \
--max_audio_length=6    \
--retrieval_finetune cross_align --train_sim_after_cross \




