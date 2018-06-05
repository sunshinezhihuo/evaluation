base = [pwd, '/'];

addpath(fullfile(base, 'utils'));

opt.mot = '/home/qi/projects';
opt.mot2d = 'MOT17';

opt.results = '/home/qi/Desktop/Evaluate/results';

seq_set_test = 'train';

% evaluation for all test sequences
benchmark_dir = fullfile(opt.mot, opt.mot2d, seq_set_test, filesep);

%% POI Detector
seqs = {'MOT17-02', 'MOT17-04', 'MOT17-05', 'MOT17-09',...
    'MOT17-10', 'MOT17-11', 'MOT17-13'};
 
evaluateTracking(seqs, opt.results, benchmark_dir);





