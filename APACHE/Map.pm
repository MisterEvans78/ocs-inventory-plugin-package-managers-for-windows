package Apache::Ocsinventory::Plugins::Winpkgman::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;

$DATA_MAP{winpkgman} = {
   mask => 0,
   multi => 1,
   auto => 1,
   delOnReplace => 1,
   sortBy => 'PKGMAN_NAME',
   writeDiff => 0,
   cache => 0,
   fields => {
       PKGMAN_NAME => {},
       PKGMAN_PUBLISHER => {},
       PKGMAN_VERSION => {}
   }
};
1;