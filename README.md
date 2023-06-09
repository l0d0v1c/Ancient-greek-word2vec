# Ancient greek word2vec

This is a latent space for ancient greek trained on 149883 sentences from [First1K project]( https://chs.harvard.edu/the-free-first-thousand-years-of-greek-qa-with-leonard-muellner/).

The vocabulary was lemmatized (534258 words + 96443 words not lemmatizable). 10,25,50,75,100 and 300 dimensions latent space are provided (gr...vec). As a comparison another model is proposed (Nov22_RW) based on this [repo](https://github.com/ryderwishart/ancient-greek-word2vec).
Models ending by mc3 only take into account words that are present more the 3 times. 

# Online demonstration

## Running a binder instance

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/l0d0v1c/Ancient-greek-word2vec/HEAD?urlpath=voila%2Frender%2Findex.ipynb)

## Graph Output sample
[Display a sample graph](https://l0d0v1c.github.io/Ancient-greek-word2vec/ponos.html) : This page is an example of graph output. Nodes are double-clickable to query the dictionary.

## Precomputed standalone
A precomputed app for 300 dimensions latent space and 10 closest words baed on the 20000 most frequent greek words is available but only allow to display the graph, not distances calculations.
[access to the app](https://l0d0v1c.github.io/Ancient-greek-word2vec/graph.html) 

![aner](docs/aner.png)

## Sense addition

The classical example king+woman-man=queen doesn't work properly with Fist1Kgreek dataset dataset maybe because queen (βασίλισσα) appears only 4 times. It works with Ryder Wishart's dataset (automatically selected on example)

# Installation

## Dev
clone this repo and install environment.yml

## Production

You can build the docker container:

```
docker build -t yourtag/latentgreek .
or
docker buildx build --platform linux/amd64,linux/arm64 -t yourtag/latentgreek --push .
for apple silicon compatible

docker run -p 8888:8888 yourtag/latentgreek
```

This runs a server with the GUI.

# References

Řehůřek, Radim, et Petr Sojka. « Software Framework for Topic Modelling with Large Corpora ». In Proceedings of the LREC 2010 Workshop on New Challenges for NLP Frameworks, 45‑50. Valletta, Malta: ELRA, 2010.

Muellner, Leonard. "The Free First Thousand Years of Greek". Digital Classical Philology: Ancient Greek and Latin in the Digital Revolution, edited by Monica Berti, Berlin, Boston: De Gruyter Saur, 2019, pp. 7-18 https://doi.org/10.1515/9783110599572-002


https://github.com/ryderwishart/ancient-greek-word2vec


