// flat bonus
// percentage bonus
// multiplicative bonus

// instance

FBI = instance_create_depth(0, 0, 0, obj_stat_value);
PBI = instance_create_depth(0, 0, 0, obj_stat_value);
MBI = instance_create_depth(0, 0, 0, obj_stat_value);

FB = FBI;
PB = PBI;
MB = MBI;

basePiece = FBI.newBonus("base", base);

value = base;