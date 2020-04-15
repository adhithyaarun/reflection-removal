function simple(rows,cols,dx,dy,c)
% Generates a rows-by-cols synthetic result that contains a  
% circle as transmission layer and ghosted square as reflection layer.
  
  dims=[rows cols];

  I1 = drawCircle(dims(1), dims(2), 40, 40, 20)*0.4;

  I2=zeros(dims(1),dims(2));

  I2(10:50, 5:25)=0.3;

  % dx=2; dy=6; c=0.5;

  fprintf('Creating Image with dx= %d,dy= %d \n',dx,dy);

  I_in = I1 + imfiltern(I2, two_pulses(dx, dy,c));
  I_in = I_in + randn(rows,cols)*0.001;
  
  I_mat = zeros(rows,cols,3);
  I_mat(:,:,1)=I_in;
  I_mat(:,:,2)=I_in;
  I_mat(:,:,3)=I_in;

  I_in = I_mat;

  imwrite(I_in, 'simple_input.png');


function out=imfiltern(I, k)
  out=imfilter(I, k(end:-1:1, end:-1:1));

function I = drawCircle(h,w, x, y, r)
  I=zeros(h,w);
  for i = 1 : h
    for j = 1 : w
      if (i-y)^2+(j-x)^2<r*r
        I(i,j)=1;
      end
    end
  end  

function kernel=two_pulses(x0, y0, c)
  % kernel that models ghost effect
  % x0, y0 : correspond to the kernel's period.
  % c      : the attenuation factor
  kernel=zeros(2*abs(y0)+1, 2*abs(x0)+1);
  kernel(abs(y0)+1, abs(x0)+1)=1.0;
  kernel(abs(y0)+1+y0, abs(x0)+1+x0)=c;