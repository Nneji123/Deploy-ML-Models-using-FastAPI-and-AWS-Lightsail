"""
This script downloads the model from the huggingface model hub.

"""
from transformers import pipeline

pipe = pipeline(
    task="image-classification", model="microsoft/dit-base-finetuned-rvlcdip"
)
print(pipe)
print("Downloaded Models!")