# Neural Radiance Field with Style Transfer

This project consists of 2 sections: Neural Radiance Field exploration and NeRF-based 3D Style Transfer.

### Neural Radiance Field
First, we explore the neural radiance field with [Instant-ngp](https://github.com/NVlabs/instant-ngp) for different 3D tasks, with the datasets captured by ourselves.

| Remove Background  |  Large Scale Scene |
|---|---|
| ![girl](/media/girl.gif)  | ![pink_road](/media/pink_road.gif)  |

| Complex Surface  |  General Scene |
|---|---|
|  ![concrete](/media/concrete.gif) | ![scotty](/media/scotty.gif)  |

We also measured the capability of the 3D mesh generation:

| Mesh  |  Texture |
|---|---|
| ![mesh](/media/Snipaste_2022-11-29_13-17-48.jpg) |  ![texture](/media/Snipaste_2022-11-29_13-15-08.jpg)  |

## Style Transfer

Second, We experiment 3 methods to combine Style Transfer and Neural Radiance Field:
- Apply style on the input of the NeRF
- Apply style on the output of the NeRF
- Apply style on the latent space(middle) of the NeRF
- Apply video-based style transfer to pre-process the dataset, as input of the NeRF

Method 1 and 2 uses [Neural Style Transfer](https://github.com/crowsonkb/style-transfer-pytorch) on 2D images with Instant-ngp together, Method 3 uses stand-alone [Artistic Radiance Field](https://github.com/Kai-46/ARF-svox2), Method 4 uses [EbSynth](https://ebsynth.com/) and [Video Style Transfer](https://github.com/manuelruder/fast-artistic-videos).


| | Style 1  |  Style 2 |
|-|---|---|
| Style Images | <img src="/media/135.jpg" width="400">  | <img src="/media/14.jpg" width="400"> |
| Method 1 | ![snow1](/media/scotty_style_snow.gif) | ![vangogh1](/media/scotty_style_vangogh.gif) |
| Method 2 | ![snow2](/media/scotty_o_snow.gif) | ![vangogh2](/media/scotty_o_vangogh.gif) |
| Method 3 |  ![snow3](/media/scotty_arf_snow.gif) | ![vangogh3](/media/scotty_arf_vangogh.gif)  |

And in the end, the 3D style trasnfer is put in a VR envrionment for an immersive experience.

| VR Experience  |
|--|
| ![vr](/media/VR.gif) |


### Reference:
[1] Müller, T., Evans, A., Schied, C., & Keller, A. (2022, January 16). Instant neural graphics primitives with a multiresolution hash encoding. ArXiv.Org. https://arxiv.org/abs/2201.05989 

[2] Zhang, K., Kolkin, N., Bi, S., Luan, F., Xu, Z., Shechtman, E., & Snavely, N. (2022). ARF: Artistic radiance fields. In Lecture Notes in Computer Science (pp. 717–733). Springer Nature Switzerland. http://dx.doi.org/10.1007/978-3-031-19821-2_41  
