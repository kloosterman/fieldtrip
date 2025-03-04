function test_bug2315

% MEM 1gb
% WALLTIME 00:10:00
% DEPENDENCY ft_databrowser ft_prepare_layout
% DATA private

load(dccnpath('/project/3031000.02/test/dataFIC.mat'));

%%

cfg = [];
cfg.viewmode = 'ordered';
cfg.columns = 5;
cfg.channel = 1:15;
ft_databrowser(cfg, dataFIC)

%%

cfg = [];
cfg.viewmode = 'CTF151';
cfg.channel = 'MEG';
ft_databrowser(cfg, dataFIC);

