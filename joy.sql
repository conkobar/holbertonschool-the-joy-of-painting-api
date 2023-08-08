set global local_infile=true;
CREATE DATABASE IF NOT EXISTS joy;
USE joy;
CREATE TABLE IF NOT EXISTS episodes (
	episode VARCHAR(10),
	title VARCHAR(60),
	apple_frame BOOLEAN,
	aurora_borealis BOOLEAN,
	barn BOOLEAN,
	beach BOOLEAN,boat BOOLEAN,
	bridge BOOLEAN,
	building BOOLEAN,
	bushes BOOLEAN,
	cabin BOOLEAN,
	cactus BOOLEAN,
	circle_frame BOOLEAN,
	cirrus BOOLEAN,
	cliff BOOLEAN,
	clouds BOOLEAN,
	conifer BOOLEAN,
	cumulus BOOLEAN,
	deciduous BOOLEAN,
	diane_andre BOOLEAN,
	dock BOOLEAN,
	double_oval_frame BOOLEAN,
	farm BOOLEAN,
	fence BOOLEAN,
	fire BOOLEAN,
	florida_frame BOOLEAN,
	flowers BOOLEAN,
	fog BOOLEAN,
	framed BOOLEAN,
	grass BOOLEAN,
	guest BOOLEAN,
	half_circle_frame BOOLEAN,
	half_oval_frame BOOLEAN,
	hills BOOLEAN,
	lake BOOLEAN,
	lakes BOOLEAN,
	lighthouse BOOLEAN,
	mill BOOLEAN,
	moon BOOLEAN,
	mountain BOOLEAN,
	mountains BOOLEAN,
	night BOOLEAN,
	ocean BOOLEAN,
	oval_frame BOOLEAN,
	palm_trees BOOLEAN,
	path BOOLEAN,
	person BOOLEAN,
	portrait BOOLEAN,
	rectangle_3d_frame BOOLEAN,
	rectangular_frame BOOLEAN,
	river BOOLEAN,
	rocks BOOLEAN,
	seashell_frame BOOLEAN,
	snow BOOLEAN,
	snowy_mountain BOOLEAN,
	split_frame BOOLEAN,
	steve_ross BOOLEAN,
	structure BOOLEAN,
	sun BOOLEAN,
	tomb_frame BOOLEAN,
	tree BOOLEAN,
	trees BOOLEAN,
	triple_frame BOOLEAN,
	waterfall BOOLEAN,
	waves BOOLEAN,
	windmill BOOLEAN,
	window_frame BOOLEAN,
	winter BOOLEAN,
	wood_framed BOOLEAN
);

LOAD DATA LOCAL
	INFILE "elements-by-episode.csv"
	INTO TABLE episodes
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;

UPDATE episodes SET title = REPLACE(title, '"""', '');

CREATE TABLE IF NOT EXISTS paintings (
	id INT,
	painting_index INT,
	img_src VARCHAR(255),
	painting_title VARCHAR(255),
	season INT,
	episode INT,
	num_colors INT,
	youtube_src VARCHAR(255),
	Black_Gesso BOOLEAN,
	Bright_Red BOOLEAN,
	Burnt_Umber BOOLEAN,
	Cadmium_Yellow BOOLEAN,
	Dark_Sienna BOOLEAN,
	Indian_Red BOOLEAN,
	Indian_Yellow BOOLEAN,
	Liquid_Black BOOLEAN,
	Liquid_Clear BOOLEAN,
	Midnight_Black BOOLEAN,
	Phthalo_Blue BOOLEAN,
	Phthalo_Green BOOLEAN,
	Prussian_Blue BOOLEAN,
	Sap_Green BOOLEAN,
	Titanium_White BOOLEAN,
	Van_Dyke_Brown BOOLEAN,
	Yellow_Ochre BOOLEAN,
	Alizarin_Crimson BOOLEAN
);

LOAD DATA LOCAL
	INFILE "paintings.csv"
	INTO TABLE paintings
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS dates (
	title VARCHAR(255),
	date DATE
);

LOAD DATA LOCAL
	INFILE "episode_dates.csv"
	INTO TABLE dates
	FIELDS TERMINATED BY ','
	IGNORE 1 LINES;

set global local_infile=false;
