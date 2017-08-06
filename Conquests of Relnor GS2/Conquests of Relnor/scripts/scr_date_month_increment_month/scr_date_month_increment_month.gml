
global.dateMonth += 1;

if(global.dateMonth > DATE_MONTH_MAX){
	global.dateMonth = DATE_MONTH_MELIUM;
	global.dateYear += 1;
}