///adds the given amount to the current date and returns a new date object with the future date.
///@param incrementDayBy

var _incrementDayBy = argument0;

var _newDay = global.dateDay;
var _newMonth = global.dateMonth;
var _newYear = global.dateYear;

_newDay += _incrementDayBy;

while(_newDay > DATE_MONTH_DAY_TOTAL){
	_newDay -= DATE_MONTH_DAY_TOTAL;
	_newMonth += 1;
	if(_newMonth > DATE_MONTH_MAX){
		_newYear += 1;
		_newMonth = DATE_MONTH_MELIUM;
	}
}

var _date = instance_create(0,0,obj_date);
_date.day = _newDay;
_date.month = _newMonth;
_date.year = _newYear;

return _date;
