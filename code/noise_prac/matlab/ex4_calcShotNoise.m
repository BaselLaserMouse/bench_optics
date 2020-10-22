function ex4_calcShotNoise(imData,offset,downsampleBy)
    % Determines the gain of the camera 
    % 
    %
    % function calcShotNoise(imData,offset,downsampleBy)
    %
    %
    % Inputs
    % imData should be an 3-D array of images. 
    % offset is what you have calculated in a previous exercise. zero by defauly
    % downsampleBy is 10 by default otherwise we have far more pixels than needed for this


    if nargin<2
        fprintf('Using a default offset of zero');
        offset = 0;
    end

    if nargin<3
        downsampleBy = 10;
    end

    downsampleBy = round(downsampleBy);

    if downsampleBy>1
        imData = imData(1:downsampleBy:end, 1:downsampleBy:end, :);
    end


    % YOUR CODE


    plot(... %EDIT ME

    h = addFitLine;
    h.handles.Color='r';
    h.handles.LineWidth=3;
