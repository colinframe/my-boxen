class projects::itison {
  $home = "/Users/${::boxen_user}"
  
  include qt
  include wkhtmltopdf
  include libtool
  include imagemagick
  include geoip
  include ruby::ree_1_8_7_2012_02
  
  boxen::project { 'itison':
    dir           => "${home}/Projects/itison", 
    mysql         => true,
    ruby          => 'ree-1.8.7-2012.02',
    source        => 'dadaevents/itison'
  }
    
}