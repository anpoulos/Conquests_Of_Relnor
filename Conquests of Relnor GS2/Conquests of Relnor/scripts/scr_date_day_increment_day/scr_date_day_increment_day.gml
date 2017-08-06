
global.dateDay += 1;
global.day += 1;

if(global.dateDay > DATE_MONTH_DAY_TOTAL){
	scr_date_month_increment_month();
}
if(global.day > DATE_DAY_MAX){
	global.day = DATE_DAY_ORPIS;
}