<?php
@define('CONST_Database_DSN', 'pgsql://postgres:00000@localhost:5432/nom_sl');
@define('CONST_Postgresql_Version', '9.4');
@define('CONST_Website_BaseURL', 'http://Your-Public-IP/nominatim/');

# Update-Einstellungen abgestimmt auf Extrakte von geofabrik.de
@define('CONST_Replication_Url', 'http://download.geofabrik.de/europe/germany/saarland-updates'); 
@define('CONST_Replication_MaxInterval', '40000'); 
@define('CONST_Replication_Update_Interval', '86400');
@define('CONST_Replication_Recheck_Interval', '900');