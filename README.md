# OPENCV SUPERRES

SuperResolution in [OpenCV](https://opencv.org/).

## Requirements

- [OpenCV4](https://opencv.org/)

## Build

Type:

```shell
make
```

## Usage

```shell
opencv_superres image_in fsrcnn 2 models/FSRCNN/models/FSRCNN_x2.pb image_out.png
```

## Models

* [EDSR](https://github.com/Saafke/EDSR_Tensorflow)
* [ESPCN](https://github.com/fannymonori/TF-ESPCN)
* [FSRCNN](https://github.com/Saafke/FSRCNN_Tensorflow)
* [LapSRN](https://github.com/fannymonori/TF-LapSRN)

### TensorFlow [EDSR](https://github.com/Saafke/EDSR_Tensorflow)

TensorFlow implementation of [Enhanced Deep Residual Networks for Single Image Super-Resolution](https://arxiv.org/pdf/1707.02921.pdf)[1].

It was trained on the [Div2K dataset](https://data.vision.ee.ethz.ch/cvl/DIV2K/) - Train Data (HR images).

#### References

[1] Bee Lim, Sanghyun Son, Heewon Kim, Seungjun Nah, and Kyoung Mu Lee, **"Enhanced Deep Residual Networks for Single Image Super-Resolution,"** <i>2nd NTIRE: New Trends in Image Restoration and Enhancement workshop and challenge on image super-resolution in conjunction with **CVPR 2017**. </i> [[PDF](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w12/papers/Lim_Enhanced_Deep_Residual_CVPR_2017_paper.pdf)] [[arXiv](https://arxiv.org/abs/1707.02921)] [[Slide](https://cv.snu.ac.kr/research/EDSR/Presentation_v3(release).pptx)]  

### TensorFlow [ESPCN](https://github.com/fannymonori/TF-ESPCN)

Tensorflow implementation of ESPCN algorithm described in [1].
This project was done during the Google Summer of Code 2019 program with OpenCV [2].

#### References

[1] Shi, W., Caballero, J., Huszár, F., Totz, J., Aitken, A., Bishop, R., Rueckert, D. and Wang, Z. (2019). Real-Time Single Image and Video Super-Resolution Using an Efficient Sub-Pixel Convolutional Neural Network. Available at: https://arxiv.org/abs/1609.05158  
[2] https://summerofcode.withgoogle.com/projects/#4689224954019840  
[3] Agustsson, E., Timofte, R. (2017). NTIRE 2017 Challenge on Single Image Super-Resolution: Dataset and Study. Available at: http://www.vision.ee.ethz.ch/~timofter/publications/Agustsson-CVPRW-2017.pdf  

https://data.vision.ee.ethz.ch/cvl/DIV2K/

### TensorFlow [FSRCNN](https://github.com/Saafke/FSRCNN_Tensorflow)

TensorFlow implementation of [Accelerating the Super-Resolution Convolutional Neural Network](http://mmlab.ie.cuhk.edu.hk/projects/FSRCNN.html) [1].

This implementation replaces the transpose conv2d layer by a sub-pixel layer [2]. 

Includes pretrained models for scales x2, x3 and x4. Which were trained on T91-image dataset, and finetuned on General100 dataset.

FSRCNN-small is a network with fewer parameters. Thus it is faster but has lower performance.

#### References

1. Chao Dong, Chen Change Loy, Xiaoou Tang. [Accelerating the Super-Resolution Convolutional Neural Network](http://mmlab.ie.cuhk.edu.hk/projects/FSRCNN.html), in Proceedings of European Conference on Computer Vision (ECCV), 2016  
2. [Real-Time Single Image and Video Super-Resolution Using an Efficient Sub-Pixel Convolutional Neural Network](https://arxiv.org/abs/1609.05158). By Shi et. al.  

### TensorFlow [LapSRN](https://github.com/fannymonori/TF-LapSRN)

Tensorflow implementation of LapSRN algorithm described in [1]. It can now support training for 2x, 4x, and 8x scaling factor.

#### References

[1] Lai, W., Huang, J., Ahuja, N. and Yang, M. (2019). Fast and Accurate Image Super-Resolution with Deep Laplacian Pyramid Networks. Available at: https://arxiv.org/abs/1710.01992  
[2] Agustsson, E., Timofte, R. (2017). NTIRE 2017 Challenge on Single Image Super-Resolution: Dataset and Study. Available at: http://www.vision.ee.ethz.ch/~timofter/publications/Agustsson-CVPRW-2017.pdf  

https://data.vision.ee.ethz.ch/cvl/DIV2K/

## Protocol Buffers

[Google's data interchange format](https://github.com/malthe/google-protobuf).

