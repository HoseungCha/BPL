% Demo of fitting a motor program to an image.
addpath(genpath(pwd));
% addpath(genpath('D:\OneDrive - 한양대학교\외부프로그램\lightspeed'));
% Parameters
K = 5; % number of unique parses we want to collect
verbose = true; % describe progress and visualize parse?
include_mcmc = false; % run mcmc to estimate local variability?
fast_mode = false; % skip the slow step of fitting strokes to details of the ink?

if fast_mode
    fprintf(1,'Fast mode skips the slow step of fitting strokes to details of the ink.\n');
    warning_mode('Fast mode is for demo purposes only and was not used in paper results.');
end

load('cross_img','img');
G = fit_motorprograms(img,K,verbose,include_mcmc,fast_mode);