function inpolygonFunc
figure
geoshow('运输图.shp')
axis equal
hold on
points = shaperead('Points.shp');
shape = shaperead('运输图.shp');
minxWZ = min(shape(1).X);
maxxWZ = max(shape(1).X);
minyWZ = min(shape(1).Y);
maxyWZ = max(shape(1).Y);
pointX= minxWZ+rand(100,1)*(maxxWZ-minxWZ);
pointY = minyWZ+rand(100,1)*(maxyWZ-minyWZ);
[in,~]=inpolygon(pointX,pointY,shape(1).X,shape(1).Y);
outPolygonIndex = find (~in);
if ~isempty (outPolygonIndex)
    for index = 1:length(outPolygonIndex)
           while in(outPolygonIndex(index))==0
                tempX= minxWZ+rand(1,1)*(maxxWZ-minxWZ);
                tempY = minyWZ+rand(1,1)*(maxyWZ-minyWZ);
                [inadd,~]=inpolygon(tempX,tempY,shape(1).X,shape(1).Y);
                if inadd == false
                    continue;
                else
                    in(outPolygonIndex(index)) = true;
                    pointX(outPolygonIndex(index)) = tempX;
                    pointY(outPolygonIndex(index)) = tempY;
                    break;
                end
           end
    end
end
plot(pointX(in),pointY(in),'r+')
plot(vertcat(points.Longitude),vertcat(points.Latitude),'bo')
% plot(pointX(~in),pointY(~in),'bo')
hold off
end