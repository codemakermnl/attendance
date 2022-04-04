<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'homeController';
$route['home'] = 'homeController/home';
$route['login'] = 'homeController/login';
$route['change-password'] = 'homeController/changepassword';
$route['time-logs'] = 'homeController/timelogs';
$route['time-logs-user'] = 'homeController/timelogsuser';
// 03-20-2020 - S
$route['submit-request'] = 'homeController/submitRequest';
// 03-20-2020 - E

$route['account-management'] = 'homeController/accountmanagement';
// Ajax

$route['ajax/get-all-users'] = 'customController/getallaccounts';
$route['ajax/get-new-password'] = 'customController/getnewpassword';
$route['ajax/add-new-account'] = 'customController/addAccount';
$route['ajax/delete-account'] = 'customController/deleteAccount';

$route['ajax/get-attendance-sheet'] = 'customController/getAttendanceSheet';


$route['ajax/login'] = 'globalController/validatelogin';
$route['ajax/update-password'] = 'customController/updatepassword';

$route['ajax/get-courses'] = 'customController/getCourses';
$route['ajax/get-sections'] = 'customController/getSections';

$route['logout'] = 'homeController/logout';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['category/(:any)'] = 'homeController/homecategories/$1';

$route['ajax/get-filter-attendance-sheet'] = 'customController/getFilteredAttendanceSheet'; //annthonite
$route['ajax/update-logs'] = 'customController/updateLogs'; //annthonite
$route['ajax/update-logs-remarks'] = 'customController/updateLogsRemarks'; //annthonite


$route['ajax/get-all-schedule'] = 'customController/getAllSchedule';
$route['ajax/get-filtered-schedule'] = 'customController/getFilteredSchedule';


$route['ajax/new-pass'] = 'customController/newPassword';

$route['ajax/batch-insert-to-logs'] = 'customController/batch_insert_into_logs';