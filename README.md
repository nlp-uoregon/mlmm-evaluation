<h1 align="center"> <p> Multilingual Large Language Models Evaluation </p></h1>

<div align="center">
    <a href="https://github.com/nlp-uoregon/mlmm-evaluation/blob/main/LICENSE">
        <img alt="GitHub" src="https://img.shields.io/badge/Code%20License-Apache_2.0-green.svg">
    </a>
    <a href="https://github.com/nlp-uoregon/mlmm-evaluation/blob/main/DATA_LICENSE">
        <img alt="GitHub data" src="https://img.shields.io/badge/Data%20License-CC%20By%20NC%204.0-red.svg">
    </a>
</div>

## Overview

This repo contains benchmark datasets designed for the evaluation of Multilingual Large Language Models (LLMs). These datasets are intended for evaluating the models across 26 different languages and encompass three distinct tasks: ARC, HellaSwag, MMLU:

- [**ARC**](https://allenai.org/data/arc): A new dataset of 7,787 genuine grade-school level, multiple-choice science questions, assembled to encourage research in advanced question-answering.
- [**HellaSwag**](https://allenai.org/data/hellaswag): HellaSWAG is a dataset for studying grounded commonsense inference. It consists of 70k multiple choice questions about grounded situations: each question comes from one of two domains *activitynet* or *wikihow* with four answer choices about what might happen next in the scene. The correct answer is the (real) sentence for the next event; the three incorrect answers are adversarially generated and human-verified, so as to fool machines but not humans.
- [**MMLU**](https://arxiv.org/pdf/2009.03300.pdf): This dataset contains multiple-choice questions derived from diverse fields of knowledge. The test covers subjects in the humanities, social sciences, hard sciences, and other essential areas of learning for certain individuals.

Current, our framework support 26 following languages: ru, de, zh, fr, es, it, nl, vi, id, ar, hu, to, da, sk, uk, ca, sr, hr, hi, bn, ta, ne, ml, mr, te, kn. Our technical paper with evaluation results on standard multilingual models (e.g. BLOOM, LLAMA, and our [Okapi models](https://github.com/nlp-uoregon/Okapi) can be found here: [here](https://arxiv.org/pdf/2307.16039.pdf).
## Install

To install `lm-eval` from our repository main branch, run:

```bash
git clone https://github.com/nlp-uoregon/mlmm-evaluation.git
cd mlmm-evaluation
pip install -e ".[multilingual]"
```

## Basic Usage
Firstly, you need to download the multilingual evaluation datasets by using the following script:
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

## Leaderboard

We maintain a [leaderboard](https://huggingface.co/spaces/uonlp/open_multilingual_llm_leaderboard) for tracking the progress of multilingual LLM. 

## Acknowledgements
Our framework inherited largely from the [lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness) repo from EleutherAI. Please also kindly cite their repo if you use the code.

## Citation
If you use the data, model, or code in this repository, please cite:

```bibtex
@article{dac2023okapi,
  title={Okapi: Instruction-tuned Large Language Models in Multiple Languages with Reinforcement Learning from Human Feedback},
  author={Dac Lai, Viet and Van Nguyen, Chien and Ngo, Nghia Trung and Nguyen, Thuat and Dernoncourt, Franck and Rossi, Ryan A and Nguyen, Thien Huu},
  journal={arXiv e-prints},
  pages={arXiv--2307},
  year={2023}
}
```
