//EXPORT browse_churches := 'todo';
import $,STD; //imports the dataset. ex: BWR_Clewan_Churches, BWR_AllInputData, etc
//put the significant parameters and findings into 1 table and make a choropleth for a visual of population desnity
import Visualizer;


//OUTPUT('HELLO WORLD');
//#OPTION('obfuscateOutput', TRUE);

//output(BWR_CleanChurches, NAMED(CT_City);
PoliceCounty := SORT($.File_AllData.PoliceDS, county);//folder,module,dataset,attribute
PoliceCity := Sort($.File_AllData.PoliceDS, city);
PolicePop := Sort($.File_AllData.PoliceDS, population);
//FilterPolice := SORT($.File_AllData.PoliceDS, county);
FoodBankCity := Sort($.File_AllData.FoodBankDS, city);
FoodBankPop := Sort($.File_AllData.FoodBankDS, member_number); 
FoodBankState := SORT($.File_AllData.FoodBankDS, state);
NCMECcity := Sort($.File_AllData.mc_byStateDS, missingcity);
NCMECPoContact := Sort($.File_AllData.mc_byStateDS, contact);
NCMECMissState := Sort($.File_AllData.mc_byStateDS, missingstate);


//OUTPUT($.File_AllData.FoodBankDS.city,NAMED('FoodBanksCity'));


//FilterPolice := SORT($.File_AllData.PoliceDS(county == ));
//isolte these columns and organize them into a table.
output(PoliceCounty);
output(PoliceCity);
output(PolicePop);
output(FoodBankPop);
output(FoodBankCity);
output(FoodBankState);
//missFips = $.File_AllData.mc_byStateDS(
// Query the dataset for records where 'missingstate' is 'ALABAMA'
s1 := $.File_AllData.mc_byStateDS(missingstate = 'ALABAMA');

// Count the number of records in the dataset 'File_AllData.PoliceDS' where 'population' is less than or equal to 10
c1 := COUNT($.File_AllData.PoliceDS(population <= 10));
//s2 := $.File_AllData.PoliceDS(state = 'alabama');


// Create a new dataset combining the results
d := DATASET([
    {'Missing Kids in Alabama', COUNT(s1)},
    {'Police Populations', c1}
], {string15 valuetype, integer val});

// Output the result dataset
OUTPUT(d);



// s1 := $.File_AllData.mc_byStateDS(missingstate='ALABAMA');
// c1 := count($.File_AllData.PoliceDS(population <= 10));

// d := dataset([{'Missing Kids in Alabama',s1},
// {'PolicePopulations',c1}],
// {string15 valuetype, integer val});

// output(d);




//sample choropleth code

// policeCounties := $.File_AllData.PoliceDS.xcoor([ {1073,29.946185501741},
 // {1097,0.79566003616637},
 // {1117,1.5223596574691},
 // {4005,27.311773623042}],
 // {STRING FIPS, INTEGER4 weight});
 // data_usCounties := OUTPUT($.File_AllData.PoliceDS.county, NAMED('choro_usCounties'));
 // data_usCounties;
 // viz_uscounties := Visualizer.Choropleth.USCounties('usCounties',, 'choro_usCounties');
 // viz_uscounties;

// Filter PoliceDS dataset based on the provided x coordinates
// policeCounties := $.File_AllData.PoliceDS(xcoor IN [{1073,29.946185501741},
                                                   // {1097,0.79566003616637},
                                                   // {1117,1.5223596574691},
                                                   // {4005,27.311773623042}],
                                           // {STRING FIPS, INTEGER4 weight});

// Output the 'county' field from the PoliceDS dataset and assign it to 'data_usCounties'
// data_usCounties := OUTPUT(policeCounties.county, NAMED('choro_usCounties'));

// Output the dataset containing county information
//data_usCounties;

// Visualize the counties using the US Counties choropleth visualization
//viz_uscounties := Visualizer.Choropleth.USCounties('usCounties',, 'choro_usCounties');
//viz_uscounties;
// Persons := $.File_AllData.mc_byStateDS.file;

//Rec := Record
// Persons.State;
// UNSIGNED4 

// Persons.

// Rec := Record




//output($.File_AllData.HospitalDS(type));

// MyTable := DATASET([
                   // {1, 'John', 25},
                   // {2, 'Alice', 30},
                   // {3, 'Bob', 35}
                 // ], 
                 // RECORDOF(MyTable));

// Project the Name column
// PoliceCounties := PROJECT($.File_AllData.PoliceDS, TRANSFORM
// ({
  // Pcounties := $.File_AllData.PoliceDS.county;
// )};

// PoliceCities := PROJECT($.File_AllData.PoliceDS, TRANSFORM
// {
  // Pcounties := $.File_AllData.PoliceDS.county;
// });


// output(PoliceCounties($.File_AllData.PoliceDS.county);

// Rec := record
  // $.File_AllData.PoliceDS.county;
  // END;
  
  // t   := Table($.File_AllData.PoliceDS,
              // {$.File_AllData.PoliceDS.county})
              
// OUTPUT(t);

// dt := distribute(t,HASH32(county));
// sdt := SORT(dt,county,LOCAL);
// dsdt := DEDUP(sdt, county, LOCAL);