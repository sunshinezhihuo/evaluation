
%%
base = [pwd, '/'];

addpath(fullfile(base, 'utils'));

opt.mot = '/home/qi/benchmark';
opt.mot2d = 'MOT17Det';


type = 'poi';

opt.result = '/home/qi/Desktop/Evaluate/detresults/';   % change path
opt.results =[opt.result,type];


seq_set_test = 'train';

% evaluation for all test sequences
benchmark_dir = fullfile(opt.mot, opt.mot2d, seq_set_test, filesep);

% % FRCNN Detector
% seqs = {'MOT17-02', 'MOT17-04', 'MOT17-05', 'MOT17-09',...
%     'MOT17-10', 'MOT17-11', 'MOT17-13'};

detmap='c9-train.txt';
qievaluateDetection(detmap, opt.results, benchmark_dir);

