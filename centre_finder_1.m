function [x] = centre_finder_1(x,centre1)
%This function assigns each point to nearest centre.
%IT TAKES INPUT MATRIX X WHICH IS IN THE FOLLOING FORMAT:
%TRIPID/TIMESLOT/LATITUDE/LONGITUDE
%IT ALSO TAKES LIST OF THE COORDINATES OF THE CENTRES WHICH IS OUTPUT OF
%centre.m
coordinate=[x(:,4),x(:,3)];
n=length(coordinate);
closest=[];
for i=1:n
    coordinate_1=coordinate(i,:);
    distances = sqrt(sum(bsxfun(@minus, centre1,coordinate_1).^2,2));
    z= find(distances==min(distances));
    closest=vertcat(closest,z);
end
x=horzcat(x,closest);
end
