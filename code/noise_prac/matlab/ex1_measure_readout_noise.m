function mu_std = ex1_measure_readout_noise(imData,downsampleBy)
    % Measure readout noise
    %
    % Inputs
    % imData should be an 3-D array of images. 
    % downsampleBy is 10 by default otherwise we have far more pixels than needed for this

    if nargin<2
        downsampleBy = 10;
    end
    imData = imData(1:downsampleBy:end,1:downsampleBy:end,:);

    % Get the SD of each pixel's values over time

    % Plot
    clf
    hist( %EDIT ME

    % overlay mean
    hold on
    y=ylim;
    plot([mu_std,mu_std],y,'r--','LineWidth',2)
    hold off


    % Report to screen what has been found
    fprintf('The mean noise level is %0.3f\n', mu_std)

    xlabel('Pixel SD')
    ylabel('#')

    grid on
