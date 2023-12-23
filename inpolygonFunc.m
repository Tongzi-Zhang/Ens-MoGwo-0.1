function  pointCor = inpolygonFunc (LB,UB,shape)
        minLongitude = LB(1,1);
        maxLongitude = UB(1,1);
        minLatitude = LB(2,1);
        maxLatitude = UB(2,1);
        pointX=  unifrnd(minLongitude,maxLongitude,1,1);
        pointY =  unifrnd(minLatitude,maxLatitude,1,1);
        [in,~]= inpolygon(pointX,pointY,shape.X,shape.Y);
        outPolygonIndex = find (~in);
        if ~isempty (outPolygonIndex)
            for index = 1:length(outPolygonIndex)
                   while in(outPolygonIndex(index))==0
                        tempX= unifrnd(minLongitude,maxLongitude,1,1);
                        tempY = unifrnd(minLatitude,maxLatitude,1,1);
                        [inadd,~]=inpolygon(tempX,tempY,shape.X,shape.Y);
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
        pointCor = [pointX pointY];
end