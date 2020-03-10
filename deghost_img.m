function deghost_image(img_path)

% Dependencies
% Patch-GMM prior
addpath('epllcode');
% Bounded-LBFGS Optimization
addpath('lbfgsb/lbfgsb3.0_mex1.2');

I_in = im2double(imread(img_path));
fprintf('Size of image: %d %d %d\n', size(I_in));

% Ghosting kernel consists of spatial shift vector d_k
% and attenuation factor c_k
fprintf('Estimating Ghosting kernel...');

% Estimate Ghosting kernel from input image
[configs.dx configs.dy configs.c] = kernel_est(I_in);
fprintf('Done.');
fprintf('dx: %d\n',configs.dx)
fprintf('dy: %d\n',configs.dy)
fprintf('c: %d\n',configs.c)

% Padding size : needs to be larger than the spatial shift.
configs.padding = ceil(norm([configs.dx configs.dy]))+10;

[configs.h configs.w channels] = size(I_in);
configs.num_px = configs.h * configs.w;
