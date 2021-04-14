<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    Route::get('dashboard', 'AdminController@dashboard')->name('backpack.dashboard');
    Route::crud('role', 'RoleCrudController');
    Route::crud('user', 'UserCrudController');
    Route::crud('reportabsence', 'ReportAbsenceCrudController');
    Route::crud('reportmonthabsence', 'ReportMonthAbsenceCrudController');
    Route::post('reportmonthabsence/filter', 'ReportMonthAbsenceCrudController@filter');
    Route::post('getmonth', 'ReportMonthAbsenceCrudController@getmonth');
    Route::post('detailket/ket', 'ReportMonthAbsenceCrudController@ket');
    Route::crud('employee', 'EmployeeCrudController');
    Route::crud('keterangan', 'KeteranganCrudController');
    Route::crud('position', 'PositionCrudController');
    Route::get('charts/employee', 'Charts\EmployeeChartController@response')->name('charts.employee.index');
}); // this should be the absolute last line of this file
