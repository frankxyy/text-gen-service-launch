model_path=$1
port=$2
cd text-gen-service

volume=$(python3 path_process.py "$1")
if [ ! -d "transformers" ]; then
git clone https://github.com/frankxyy/transformers.git -b br_tag
fi

if [ ! -d "text-generation-inference" ]; then
git clone https://github.com/frankxyy/text-generation-inference.git -b main
fi

container_name=$(python3 gen_random_str.py)
docker run -d --gpus all --shm-size 1g -p $port:$port -v $volume:/data --name=$container_name --entrypoint /bin/bash text-gen-service/entrypoint.sh

bash copy_file.sh $container_name
docker exec $container_name CUDA_VISIBLE_DEVICES=1 RUST_BACKTRACE=1 text-generation-launcher --model-id $1 --num-shard 1 --max-total-tokens 5096 --port $2
