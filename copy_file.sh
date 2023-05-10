echo $1
name=$1
# export name
echo ${name}

docker cp text-generation-inference/server/text_generation_server/utils/hub.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/utils/hub.py

docker cp text-generation-inference/server/text_generation_server/cli.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/cli.py

docker cp text-generation-inference/server/text_generation_server/server.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/server.py

docker cp text-generation-inference/server/text_generation_server/models/flash_llama.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/models/flash_llama.py

docker cp text-generation-inference/server/text_generation_server/models/flash_causal_lm.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/models/flash_causal_lm.py

docker cp text-generation-inference/server/text_generation_server/models/flash_llama.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/models/flash_llama.py

docker cp text-generation-inference/server/text_generation_server/utils/tokens.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/utils/tokens.py

docker cp text-generation-inference/server/text_generation_server/server.py ${name}:/opt/conda/lib/python3.9/site-packages/text_generation_server/server.py


docker cp transformers/src/transformers/utils/hub.py ${name}:/usr/src/transformers/src/transformers/utils/hub.py

docker cp transformers/src/transformers/configuration_utils.py ${name}:/usr/src/transformers/src/transformers/configuration_utils.py

docker cp transformers/src/transformers/tokenization_utils_base.py ${name}:/usr/src/transformers/src/transformers/tokenization_utils_base.py