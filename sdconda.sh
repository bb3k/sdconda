conda update conda
conda uninstall pytorch torchvision torchaudio pytorch-cuda
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui
cd models/Stable-diffusion
wget https://civitai.com/api/download/models/57618 -o CounterfeitV30_v30.safetensors
cd ../..
python launch.py --xformers --share  --no-half --no-half-vae
