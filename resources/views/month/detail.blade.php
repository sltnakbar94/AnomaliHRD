@extends(backpack_view('blank'))

@php
    $defaultBreadcrumbs = [
        trans('backpack::crud.admin') => url(config('backpack.base.route_prefix'), 'dashboard'),
        $crud->entity_name_plural => url($crud->route),
        trans('backpack::crud.preview') => false,
    ];

    // if breadcrumbs aren't defined in the CrudController, use the default breadcrumbs
    $breadcrumbs = $breadcrumbs ?? $defaultBreadcrumbs;

    $today = today();
    $dates = [];

    for($i=1; $i < $today->daysInMonth + 1; ++$i) {
        $dates[] = \Carbon\Carbon::createFromDate($today->year, $today->month, $i)->format('d-M-Y');
    }
@endphp

@section('header')
	<section class="container-fluid d-print-none">
    	<a href="javascript: window.print();" class="btn float-right"><i class="la la-print"></i></a>
		<h2>
	        <span class="text-capitalize">{!! $crud->getHeading() ?? $crud->entity_name_plural !!}</span>
	        <small>{!! $crud->getSubheading() ?? mb_ucfirst(trans('backpack::crud.preview')).' '.$crud->entity_name !!}</small>
	        @if ($crud->hasAccess('list'))
	          <small class=""><a href="{{ url($crud->route) }}" class="font-sm"><i class="la la-angle-double-left"></i> {{ trans('backpack::crud.back_to_all') }} <span>{{ $crud->entity_name_plural }}</span></a></small>
	        @endif
	    </h2>
    </section>
@endsection

@section('content')

<div class="row">
	<div class="col-md-12">

	<!-- Default box -->
	  <div class="">
	  	@if ($crud->model->translationEnabled())
	    <div class="row">
	    	<div class="col-md-12 mb-2">
				<!-- Change translation button group -->
				<div class="btn-group float-right">
				  <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    {{trans('backpack::crud.language')}}: {{ $crud->model->getAvailableLocales()[request()->input('locale')?request()->input('locale'):App::getLocale()] }} &nbsp; <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu">
				  	@foreach ($crud->model->getAvailableLocales() as $key => $locale)
					  	<a class="dropdown-item" href="{{ url($crud->route.'/'.$entry->getKey().'/show') }}?locale={{ $key }}">{{ $locale }}</a>
				  	@endforeach
				  </ul>
				</div>
			</div>
	    </div>
	    @else
	    @endif
	    <div class="card no-padding no-border">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <div class="col-md-12">
                            <table id="tableDetailMonth" class="display nowrap">
                                <thead>
                                    <tr>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            No.
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            Hari
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            Tanggal
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" colspan="2">
                                            Kerja
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            Total Masuk Kerja
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            Total Jam Kerja
                                        </th>
                                        <th style="text-align: center; vertical-align: middle" rowspan="2">
                                            Keterangan
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="text-align: center; vertical-align: middle">
                                            Masuk
                                        </th>
                                        <th style="text-align: center; vertical-align: middle">
                                            Pulang
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($dates as $key=>$date)
                                    @php
                                        $day = date('D', strtotime($date));
                                        $dayList = array(
                                            'Sun' => 'Minggu',
                                            'Mon' => 'Senin',
                                            'Tue' => 'Selasa',
                                            'Wed' => 'Rabu',
                                            'Thu' => 'Kamis',
                                            'Fri' => 'Jumat',
                                            'Sat' => 'Sabtu'
                                        );
                                        @$masuk = @\App\Models\CheckIn::where('userid', $crud->entry->userid)->whereDate('checktime', date('Y-m-d', strtotime($date)))->orderBy('checktime', 'asc')->first()->checktime;
                                        @$pulang = @\App\Models\CheckOut::where('userid', $crud->entry->userid)->whereDate('checktime', date('Y-m-d', strtotime($date)))->orderBy('checktime', 'desc')->first()->checktime;
                                        @$t1 = @\Carbon\Carbon::parse(@$masuk);
                                        @$t2 = @\Carbon\Carbon::parse(@$pulang);
                                        @$hour = $t1->diffInHours($t2);
                                        @$minute = $t1->diffInMinutes($t2);
                                        @$second = $t1->diffInSeconds($t2);
                                    @endphp
                                        <tr>
                                            <td>
                                                {{$key+1}}
                                            </td>
                                            <td>
                                                {{$dayList[$day]}}
                                            </td>
                                            <td>
                                                {{$date}}
                                            </td>
                                            <td>
                                                {{@$masuk}}
                                            </td>
                                            <td>
                                                {{@$pulang}}
                                            </td>
                                            <td>
                                                {{date('H:i:s', (strtotime(@$pulang)-strtotime(@$masuk)))}}
                                            </td>
                                            <td>
                                                {{@$hour}} Jam {{(@$minute/60-@$hour)*60}} Menit
                                            </td>
                                            <td>

                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
	    </div>
	</div>
</div>
@endsection


@section('after_styles')
	<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/crud.css') }}">
	<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/show.css') }}">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">
@endsection

@section('after_scripts')
	<script src="{{ asset('packages/backpack/crud/js/crud.js') }}"></script>
	<script src="{{ asset('packages/backpack/crud/js/show.js') }}"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#tableDetailMonth').DataTable( {
                "pageLength":-1,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            } );
        } );
    </script>
@endsection