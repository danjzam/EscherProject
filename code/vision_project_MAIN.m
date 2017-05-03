% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%
%                       =========================
%                  Computer Vision Project: M.C. Escher
%                       =========================
%__________________________________________________________________________
%           ! ! Close figures, clear console/variables ! !
close all; clc; clear; warning off;
set(0,'DefaultFigureWindowStyle','docked')
%               Add directories to path.
addpath('mm3/');
addpath('templates/');
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Cell-Array Legend:
%   * mm3: Segments of Escher's *Metamorphosis III* for analysis
%   * rept...boat: templates for the specified characters
%       bdfs==birdfish, assumes the bird morphs into a fish
%       fsbd==fishbird, assumes the fish morphs into a bird
%           * These are the same images named differently
%   * hi, md, lo: templates depicting the most, middle, and least detailed
%   representations of each character.
%
[ mm3, mm3_names ] = dir2cells( dir('mm3/') );
[ rept, rept_names ] = dir2cells( dir('templates/reptile') );
[ bees, bees_names ] = dir2cells( dir('templates/bee') );
[ fish, fish_names ] = dir2cells( dir('templates/fish') );
[ bdfs, bdfs_names ] = dir2cells( dir('templates/birdfish') );
[ fsbd, fsbd_names ] = dir2cells( dir('templates/fishbird') );
[ boat, boat_names ] = dir2cells( dir('templates/boat') );
[ lo, lo_names ] = dir2cells( dir('templates/lo') );
[ md, md_names ] = dir2cells( dir('templates/md') );
[ hi, hi_names ] = dir2cells( dir('templates/hi') );
%
% Add templates to template cellarray
%
templates = cell(9,1);
templates{1}=rept;
templates{2}=bees;
templates{3}=fish;
templates{4}=bdfs;
templates{5}=fsbd;
templates{6}=boat;
templates{7}=lo;
templates{8}=md;
templates{9}=hi;

figure('Name', 'Segments of Metamorphosis III');
subplot_imcells(mm3, mm3_names, length(mm3), 1);
fprintf('Press any key to continue..\n');
pause;

texture_imcells(mm3, mm3_names);



SE = strel('disk',10);





%
% Define variables for experimentation.
%
% thresholds = linspace(0.01, 1, 100);
% tlevel=0.6;
% SE = strel('disk',4);
% I = imread('images/metamorph.jpg');
% %imbinarize_thresh_range(I, 0.1, 1);
% 
% M = xform(I, SE, 0.1, 1);   % M == The modified image
% %mshow(M);


% We will begin by testing and partially implementing two distinct
% strategies for recognising motif groups in Metamorphosis III and similar
% works. Depending on our results as the project progresses, we may favor
% one strategy over another as more experience is accumulated. It is also
% possible that we will discover new approaches, but these are our sure
% starting points.

% Morphology + connected components + comparison. Starting with morphology
% manipulation of Metamorphosis III, we will try to firmly define the 
% characters in the image to prepare the image for an analysis by connected 
% components. Using connected components we may be able to successfully 
% compare different found characters, looking for similarity between them 
% to determine if they belong to the same motif group. As a stretch goal, 
% this strategy may also help us to automate character template generation 
% if  approach B is more successful.

% Character templates + morphology + comparison. We will start by manually selecting one or more character templates from the image to be processed, one character template for each of the distinct motif groups we hope to find the members of. We will iteratively perform the tasks of (1.) search for objects in the image that match the template, (2.) categorize a found object as being a character in the motif or not (2.) manipulate either the template and/or the image using morphology. 
% A slightly different approach may be to take two templates for each motif group; one for the most detailed character and another for the most basic: usually a geometric shape. This technique may prove to be more successful for parts of Metamorphosis III similar to the section shown below. If we are able to manipulate the two templates to mimic the changes to a character Escher is famous for, it may lead to identifying the more vaguely shaped characters of a motif group. This would allow a comparison algorithm to be more successful in measuring the similarity of an object in the image to the template. 
