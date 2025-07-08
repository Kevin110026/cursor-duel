var FBV = 0;
var FBA = ds_map_values_to_array(FBI.bonuses);
for(var i = 0; i < array_length(FBA); i++)
	FBV += FBA[i];

var PBV = 0;
var PBA = ds_map_values_to_array(PBI.bonuses);
for(var i = 0; i < array_length(PBA); i++)
	PBV += PBA[i];

var MBV = 1;
var MBA = ds_map_values_to_array(MBI.bonuses);
for(var i = 0; i < array_length(MBA); i++)
	MBV *= MBA[i];


value = FBV * (1 + PBV / 100.0) * MBV;