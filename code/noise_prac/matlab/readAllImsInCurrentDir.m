function imData = readAllImsInCurrentDir
    % function imData = readAllImsInCurrentDir
    %
    % Purpose
    % Read all tiffs in current directory and return as 3-D array
    %
    % Usage
    % Call from directory with a series of TIFF images.



    imData = [];
    tTiffs = dir('*.tif*');

    if length(tTiffs) == 0
        disp('No tiffs found in current directory')
        return
    end

    fprintf('Loading %d images into RAM ', length(tTiffs))


    % Load first and pre-allocate
    imData = imread(tTiffs(1).name);

    imData = repmat(imData, [1,1,length(tTiffs)]);

    for ii = 2:length(tTiffs)
        if mod(ii,5)==0
            fprintf('.')
        end
        imData(:,:,ii) = imread(tTiffs(ii).name);
    end

    fprintf('\n')