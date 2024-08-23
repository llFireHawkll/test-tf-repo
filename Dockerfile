FROM nvcr.io/nvidia/tritonserver:24.07-py3

RUN apt-get update
RUN apt-get install libpangocairo-1.0-0 ffmpeg libsm6 libxext6 -y
RUN pip install --no-cache-dir opencv-python-headless torch "onnxtr[gpu]" onnxruntime-gpu --prefer-binary --extra-index-url https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/onnxruntime-cuda-12/pypi/simple/