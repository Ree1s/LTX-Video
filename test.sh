#!/bin/bash

# Set HIP_VISIBLE_DEVICES to specify which GPU(s) to use
export HIP_VISIBLE_DEVICES=1

# Set MIOpen cache and database paths to avoid SQLite errors
export MIOPEN_USER_DB_PATH="/tmp/my-miopen-cache"
export MIOPEN_CUSTOM_CACHE_DIR=${MIOPEN_USER_DB_PATH}

# Clear and recreate the MIOpen cache directory
rm -rf ${MIOPEN_USER_DB_PATH}
mkdir -p ${MIOPEN_USER_DB_PATH}

# Run the Python script with the given arguments
# python inference.py  --ckpt_path LTX-Video --prompt "A woman with long brown hair and light skin smiles at another woman with long blonde hair. The woman with brown hair wears a black jacket and has a small, barely noticeable mole on her right cheek. The camera angle is a close-up, focused on the woman with brown hair's face. The lighting is warm and natural, likely from the setting sun, casting a soft glow on the scene. The scene appears to be real-life footage."
# For image-to-video generation:


python inference.py --ckpt_path LTX-Video --prompt "" --input_image_path /group/ossdphi_algo_scratch_14/sichegao/datasets/UDM10/archpeople/blur4/000.png 