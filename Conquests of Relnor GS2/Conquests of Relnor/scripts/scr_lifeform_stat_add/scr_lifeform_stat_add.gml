///@param lifeform
///@param statType
///@param statIndex
///@param amount

argument0.statsCurrent[argument1, argument2] += argument3;

if(argument0.statsCurrent[argument1, argument2] > argument0.statsMax[argument1, argument2]){
	argument0.statsCurrent[argument1, argument2] = argument0.statsMax[argument1, argument2];
}

if(argument0.statsCurrent[argument1, argument2] < 0){
	argument0.statsCurrent[argument1, argument2] = 0;
}