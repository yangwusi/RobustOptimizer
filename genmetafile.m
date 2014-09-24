function genmetafile
filenames = {...
	'cec14D30_shade_sps_eig_c_Q64_201409212059', ...
	'cec14D30_shade_sps_eig_c_Q64_201409220416', ...
	'cec14D30_shade_sps_eig_c_Q64_201409220457', ...
	'cec14D30_shade_sps_eig_c_Q128_201409211651', ...
	'cec14D30_shade_sps_eig_c_Q128_201409220658', ...
	'cec14D30_shade_sps_eig_d_Q64_201409232238', ...
	'cec14D30_shade_sps_eig_d_Q64_201409232320', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240001', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240041', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240121', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240200', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240240', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240319', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240358', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240437', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240518', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240558', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240639', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240718', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240758', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240838', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240917', ...
	'cec14D30_shade_sps_eig_d_Q64_201409240957', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241039', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241124', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241218', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241304', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241358', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241446', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241533', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241619', ...
	'cec14D30_shade_sps_eig_d_Q64_201409241706'}; %#ok<NASGU>

metafilename = sprintf('filenames_%s.mat', datestr(now, 'yyyymmddHHMM'));
save(metafilename, 'filenames');
end

