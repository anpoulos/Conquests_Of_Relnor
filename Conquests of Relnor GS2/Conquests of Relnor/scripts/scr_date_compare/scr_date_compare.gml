///@param day1
///@param month1
///@param year1
///@param day2
///@param month2
///@param year2

var _day1 = argument0;
var _month1 = argument1;
var _year1 = argument2;

var _day2 = argument3;
var _month2 = argument4;
var _year2 = argument5;

///return -1 if date1 < date2
///return 0 if date1 == date2
///return 1 if date1 > date2

if(_year1 > _year2){
	return 1;
}
if(_year1 < _year2){
	return -1;
}
if(_year1 == _year2){
	
	if(_month1 > _month2){
		return 1;
	}
	if(_month1 < _month2){
		return -1;
	}
	if(_month1 == _month2){
	
		if(_day1 > _day2){
			return 1;
		}
		if(_day1 < _day2){
			return -1;
		}
		if(_day1 == _day2){
			return 0;		
		}
	
	}	
	
}