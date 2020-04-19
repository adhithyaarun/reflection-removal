# Image reflection removal using ghosting cues
![Matlab](https://img.shields.io/badge/built--with-MATLAB-green?logo=appveyor&style=for-the-badge)
![Matlab](https://img.shields.io/badge/LICENSE-MIT-blue?logo=appveyor&style=for-the-badge)


![Overview](./results/thumbnail.png)

## MATLAB implementation of [Image Reflection Removal using ghosting cues, *CVPR 2015*](https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Shih_Reflection_Removal_Using_2015_CVPR_paper.pdf)

## Code
#### Running the code 

```python
deghost_image <path_to_image>
```

#### For example

```python
deghost_image '../tests/test_6.png'
```
#### Output
The output is stored in the current working directory.

## Directory structure
```
├── code : Contains the source code and associated libraries
├── results : Results of running the implementation on the images in the tests folder
├── images : Sample input images
└── results : Output from the algorithm on a few test images.
```
## Performance
MATLAB implementation takes 40 minutes on 30 CPUs to process an input RGB image of size 400 × 600.

## Authors 
- [Anoushka Vyas](https://github.com/anoushkavyas)
- [Adhithya Arun](https://github.com/adhithyaarun)  
- [Meher Shashwat Nigam](https://github.com/ShashwatNigam99)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
