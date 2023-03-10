# 2022.06.27-Changed for building SNN-MLP
#            Huawei Technologies Co., Ltd. <foss@huawei.com>
CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --nproc_per_node 1 --nnodes=1 --node_rank=0  \
main.py --cfg configs/snnmlp_tiny_patch4_lif4_224.yaml --data-path /imagenet \
--batch-size 64 --cache-mode no  --accumulation-steps 0  --throughput
