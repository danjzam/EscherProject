function [ strelshapes, shape ] = strelshapes(opt1)
%strelshapes(opt1)
%   - if no arguments are passed only strelshapes will be returned:
%       strelshapes = {'diamond'; 'disk'; 'line'; 
%                   'octagon'; 'rectangle'; 'square'};
%   - if an index is provided in opt1

strelshapes = {'diamond'; 'disk'; 'line'; 'octagon'; 'rectangle'; 'square'};
if nargin == 1
    if opt1 <= 6
        shape = strelshapes{opt1};
    end
end

end

% function y = somefun2(a,b,opt1,opt2,opt3)
% % Some function with 2 required inputs, 3 optional.
% 
% % Check number of inputs.
% if nargin > 5
%     error('myfuns:somefun2:TooManyInputs', ...
%         'requires at most 3 optional inputs');
% end
% 
% % Fill in unset optional values.
% switch nargin
%     case 2
%         opt1 = eps;
%         opt2 = 17;
%         opt3 = @magic;
%     case 3
%         opt2 = 17;
%         opt3 = @magic;
%     case 4
%         opt3 = @magic;
% end

