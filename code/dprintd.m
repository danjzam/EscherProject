function [  ] = dprintd(formatSpec,A1,varargin)
%DEBUG PRINT 
%   Prints only if the DEBUG logical (set in this function) is 1.
DEBUG = TRUE; % Switch to 0 to disable debug print statements.
if DEBUG
    fprintf(formatSpec,A1,varargin);
end

end

