% MATLAB and Octave code to generate a Mandelbrot fractal

% Number of points in side of image and
% number of iterations in the Mandelbrot
% fractal calculation
npts=1000;
niter=51;
% Generating z = 0 (real and
% imaginary part)
zRe=zeros(npts,npts);
zIm=zeros(npts,npts);
% Generating the constant k (real and
% imaginary part)
kRe=repmat(linspace(-1.5,0.5,npts),npts,1);
kIm=repmat(linspace(-1,1,npts)',1,npts);

disp("Iterating..."); 
for j=1:niter
    % Calculating q = z*z + k in complex space
    % q is a temporary variable to store the result
    qRe=zRe.*zRe-zIm.*zIm+kRe;
    qIm=2.*zRe.*zIm+kIm;
    % Assigning the q values to z constraining between
    % -5 and 5 to avoid numerical divergences
    zRe=qRe;
    qgtfive= find(qRe > 5.);
    zRe(qgtfive)=5.;
    qltmfive=find(qRe<-5.);
    zRe(qltmfive)=-5.;
    zIm=qIm;
    hgtfive=find(qIm>5.);
    zIm(hgtfive)=5.;
    hltmfive=find(qIm<-5.);
    zIm(hltmfive)=-5.;
end
disp("Plotting...");
% Lines below this one are commented out when making
% the benchmark.

% Generating plot
% Generating the image to plot
%ima=log( sqrt(zRe.*zRe+zIm.*zIm) + 1);
% Plotting the image
%imagesc(ima);

exit
