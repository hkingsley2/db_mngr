
#load data into the database from the file PKT_db.txt
load data local infile 'NFD2016_for_upload_formatted.txt'
	into table NFD
	fields terminated by '\t'
	enclosed by '"'
	lines terminated by '\n'
	ignore 1 lines
	;

