//EXPORT browse_churches := 'todo';
import $,STD; //imports the dataset. ex: BWR_Clewan_Churches, BWR_AllInputData, etc
//OUTPUT('HELLO WORLD');
#OPTION('obfuscateOutput', TRUE);
j := 5;
output(j);
//output(BWR_CleanChurches, NAMED(CT_City);
SortChurch := SORT($.File_AllData.ChurchDS, arc_city );//folder,module,dataset,attribute
output(SortChurch);
