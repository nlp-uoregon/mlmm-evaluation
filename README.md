# Multilingual Language Model Evaluation Harness

## Overview

## Install

To install `lm-eval` from the github repository main branch, run:

```bash
git clone https://github.com/EleutherAI/lm-evaluation-harness
cd lm-evaluation-harness
pip install -e ".[multilingual]"
```

## Basic Usage
Firstly, you need to download the multilingual evaluation dataset by using the following script:
```bash
bash scripts/download.sh
```

To evaluate your model on three tasks, you can use the following script:
```bash
bash scripts/run.sh [LANG] [YOUR-MODEL-PATH]
```

For instance, if you want to evaluate our [Okapi Vietnamese model](https://huggingface.co/uonlp/okapi-vi-bloom), you could run:
```bash
bash scripts/run.sh vi uonlp/okapi-vi-bloom
```

## Citation
If you use the data, model or code in this repository, please cite:

```bibtex
@article{dac2023okapi,
  title={Okapi: Instruction-tuned Large Language Models in Multiple Languages with Reinforcement Learning from Human Feedback},
  author={Dac Lai, Viet and Van Nguyen, Chien and Ngo, Nghia Trung and Nguyen, Thuat and Dernoncourt, Franck and Rossi, Ryan A and Nguyen, Thien Huu},
  journal={arXiv e-prints},
  pages={arXiv--2307},
  year={2023}
}
```
