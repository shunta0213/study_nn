## devcontainer configs
amd64 with gpus environement

```bash
cp .devcontainer/samples/devcontainer.amd64_gpu.json .devcontainer/devcontainer.json

```

arm64 or non-gpu environment (support multi architectures)
```bash
cp .devcontainer/samples/devcontainer.multi.json .devcontainer/devcontainer.json
```

### AMD64 GPU Environement
Base Image
- `pytorch/pytorch:2.1.2-cuda12.1-cudnn8-devel`

Installed Packages 
- jupyter
- matplotlib
- pandas
- bs4 (beautifulsoup)
- selenium