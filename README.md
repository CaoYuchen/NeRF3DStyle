# 16824 Final Project: Neural Radiance Field with Style Transfer

Our project consists of 2 sections: Neural Radiance Field exploration and Style Transfer.

First, we explore the neural radiance field with [Instant-ngp](https://github.com/NVlabs/instant-ngp) for different purposes of tasks, with the datasets captured by ourselves.

| Remove Background  |  Large Scale Scene |
|---|---|
| ![girl](/media/girl.gif)  | ![pink_road](/media/pink_road.gif)  |
| Complex Surface  |  General Scene |
|  ![concrete](/media/concrete.gif) | ![scotty](/media/scotty.gif)  |

We also measured the capability of the 3D mesh generation:

| Mesh  |  Texture |
|---|---|
| ![mesh](/media/Snipaste_2022-11-29_13-17-48.jpg) |  ![texture](/media/Snipaste_2022-11-29_13-15-08.jpg)  |

Second, We experiment 3 methods to combine Style Transfer and Neural Radiance Field:
- Apply style on the input of the NeRF
- Apply style on the output of the NeRF
- Apply style on the latent space(middle) of the NeRF

Method 1 and 2 uses [Neural Style Transfer](https://github.com/crowsonkb/style-transfer-pytorch) on 2D images with Instant-ngp together, Method 3 uses stand-alone [Artistic Radiance Field](https://github.com/Kai-46/ARF-svox2).


| | Style 1  |  Style 2 |
|-|---|---|
| Style Images | <img src="/media/135.jpg" width="400">  | <img src="/media/14.jpg" width="400"> |
| Method 1 | ![snow1](/media/scotty_style_before.mp4) | ![vangogh1](/media/scotty_style_short.mp4) |
| Method 2 | ![snow2](/media/scotty_o_snow.mp4) | ![vangogh2](/media/scotty_o_vangogh.mp4) |
| Method 3 |  ![snow3](/media/scotty_arf_snow.mp4) | ![vangogh3](/media/scotty_arf_vangogh.mp4)  |



