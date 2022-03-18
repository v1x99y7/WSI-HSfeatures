## Introduction
Our proposed method aims to extract prognostic features from whole slide images (WSIs) and predict patient's survival risk.

## Description  
We first use [resnet50_classifier.ipynb](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/resnet50_classifier.ipynb) to train a patch-based tissue classifier and apply the classifier to extract two kinds of prognostic features. First, we use [random_sampling.ipynb](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/random_sampling.ipynb) to sample patches from WSIs and [histopathological_features.ipynb](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/histopathological_features.ipynb) to train deep convolutional survival (DeepConvSurv) models and apply the models to extract histopathological features. Second, we use [segmentation_features.ipynb](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/segmentation_features.ipynb) to generate tissue maps and extract segmentation features from the maps. [segmentation_features_cutpoint.R](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/segmentation_features_cutpoint.R) is used to determine the cutpoints of segmentation features and estimate the survival curves. We use the cutpoints to discretize segmentation features before concatenating with histopathological features. Lastly, we use [survival_models.ipynb](https://github.com/v1x99y7/WSI-HSfeatures/blob/main/survival_models.ipynb) to train several different survival models using histopathological and segmentation features.

![image](https://user-images.githubusercontent.com/101854149/158953502-e5c9d05a-f538-48eb-9dfa-cdbe637f4d83.png)

## Datasets
In this study, we use two public datasets:  
1. [NCT-CRC-HE-100K](http://dx.doi.org/10.5281/zenodo.1214456) is used to train a ResNet50 tissue classifier.
2. [TCGA-COAD](https://portal.gdc.cancer.gov/) is used to evaluate our proposed method.
