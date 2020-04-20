# Image Reflection Removal using Ghosting Cues
![Matlab](https://img.shields.io/badge/built--with-MATLAB-green?logo=appveyor&style=for-the-badge)
![Matlab](https://img.shields.io/badge/LICENSE-MIT-blue?logo=appveyor&style=for-the-badge)


![Overview](./results/thumbnail.png)

## MATLAB implementation of [Image Reflection Removal using Ghosting Cues, *CVPR 2015*](https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Shih_Reflection_Removal_Using_2015_CVPR_paper.pdf)

## Code
#### Running the code 

```bash
deghost_image <path_to_image>
```

#### For example

```bash
deghost_image '../tests/test_6.png'
```
#### Output
The output is stored in the current working directory.

## Directory structure
```
├── code : Contains the source code and associated libraries
├── documents : 
    ├── presentations : Presentations for mid & final evaluation
    ├── reference_papers : Papers referred regarding the project
    └── reports : Reports for mid & final evaluation
├── images : Sample input images
└── results : Outputs from the algorithm on the images in the test folders
```
## Performance
MATLAB implementation takes 40 minutes on 30 CPUs to process an input RGB image of size 400 × 600.

## Authors 
- [Anoushka Vyas](https://github.com/anoushkavyas)
- [Adhithya Arun](https://github.com/adhithyaarun)  
- [Meher Shashwat Nigam](https://github.com/ShashwatNigam99)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
