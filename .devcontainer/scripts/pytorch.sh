#!bin/bash

if [ $1 -eq "GPU" ]; then
  echo "Installing PyTorch CUDA"
  
else
  echo "Installing PyTorch CPU"
  pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
fi

echo "Finished installing PyTorch"
