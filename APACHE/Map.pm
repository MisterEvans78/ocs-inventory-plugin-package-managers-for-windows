package Apache::Ocsinventory::Plugins::Wingetsources::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;

$DATA_MAP{WingetSources} = {
   mask => 0,
   multi => 1,
   auto => 1,
   delOnReplace => 1,
   sortBy => 'SOURCE_NAME',
   writeDiff => 0,
   cache => 0,
   fields => {
       SOURCE_NAME => {},
       SOURCE_URL => {}
   }
};
1;