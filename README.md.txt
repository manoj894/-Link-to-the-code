# README

## Requirements
- MATLAB version **2024a** or later.

## Download Trained Models
Download the trained models **RetisegNet.mat** and **STDeepNet.mat** from the following link:
[https://doi.org/10.6084/m9.figshare.28677701](https://doi.org/10.6084/m9.figshare.28677701)

## Steps for Vessel Segmentation
1. Load the `RetisegNet.mat` model from the **Vessel Segmentation** folder.
2. Provide the image path to:
   ```
   DeepretinaNet\Vessel Segmentation\testing images\1.jpg
   ```
3. Run:
   ```
   RetiSegnet_main
   ```

## Steps for Disease Classification
1. Load the `STDeepNet` model from the **Disease Classification** folder.
2. Provide the image path to:
   ```
   DeepretinaNet\Disease Classification\Test images
   ```
3. Run:
   ```
   STDeepNet_main
   
