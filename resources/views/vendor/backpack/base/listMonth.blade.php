@extends(backpack_view('blank'))

{{-- @php
  $defaultBreadcrumbs = [
    trans('backpack::crud.admin') => url(config('backpack.base.route_prefix'), 'dashboard'),
    @$crud->entity_name_plural => url(@$crud->route),
    trans('backpack::crud.list') => false,
  ];

  // if breadcrumbs aren't defined in the CrudController, use the default breadcrumbs
  $breadcrumbs = $breadcrumbs ?? $defaultBreadcrumbs;
@endphp --}}

{{-- @section('header')
	<section class="container-fluid d-print-none">
    	<a href="javascript: window.print();" class="btn float-right"><i class="la la-print"></i></a>
		<h2>
	        <span class="text-capitalize">{!! @$crud->getHeading() ?? @$crud->entity_name_plural !!}</span>
	        <small>{!! @$crud->getSubheading() ?? mb_ucfirst(trans('backpack::crud.list')).' '.@$crud->entity_name !!}</small>
	        @if (@$crud->hasAccess('list'))
	          <small class=""><a href="{{ url(@$crud->route) }}" class="font-sm"><i class="la la-angle-double-left"></i> {{ trans('backpack::crud.back_to_all') }} <span>{{ @$crud->entity_name_plural }}</span></a></small>
	        @endif
	    </h2>
    </section>
@endsection --}}

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="">
                <form action="{{ backpack_url('reportmonthabsence/filter') }}" method="POST" name="form_filter" id="form-filter">
                    <div class="row">
                        @csrf
                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <input type="month" id="month" name="month" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                <div class="input-group-append">
                                    <label class="input-group-text bg-primary" for="inputGroupSelect02">Bulan</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="input-group mb-3">
                                <select class="custom-select" id="departement" name="department" aria-label="Example select with button addon">
                                    <option value="">Departement</option>
                                    @foreach (\App\Models\Department::get() as $department)
                                        <option value="{{$department->DeptID}}">{{$department->DeptName}}</option>
                                    @endforeach
                                </select>
                                <div class="input-group-append">
                                    <label class="input-group-text bg-primary" for="inputGroupSelect02">Department</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="input-group mb-3">
                                <button type="submit" class="btn col-md-12 btn-success">Cari</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered sortable">
                        <thead class="thead-dark">
                            <tr>
                              <th scope="col">Department</th>
                              <th scope="col">Nomor</th>
                              <th scope="col">Nama</th>
                              <th scope="col">Kehadiran</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (!empty(@$perusahaan))
                                @foreach (@$crud->query->where('defaultdeptid', @$perusahaan->DeptID)->get() as $key => $user)
                                        <td>{{ $user->department->DeptName }}</td>
                                        <td>{{ $user->badgenumber }}</td>
                                        <td>{{ $user->name }}</td>
                                        @php
                                            if (!empty(@$month)) {
                                                $attendances = \App\Models\Checkinout::selectRaw("COUNT(DISTINCT(DATE(checktime))) as count")->where('userid', $user->userid)->whereMonth('checktime', @$month)->whereYear('checktime', @$month)->first();
                                            }else {
                                                $attendances = \App\Models\Checkinout::selectRaw("COUNT(DISTINCT(DATE(checktime))) as count")->where('userid', $user->userid)->first();
                                            }
                                        @endphp
                                        <td>{{ $attendances->count }}</td>
                                    </tr>
                                @endforeach
                            @else
                                @foreach (@$crud->query->get() as $key => $user)
                                        <td>{{ $user->department->DeptName }}</td>
                                        <td>{{ $user->badgenumber }}</td>
                                        <td>{{ $user->name }}</td>
                                        @php
                                            if (!empty(@$month)) {
                                                $attendances = \App\Models\Checkinout::selectRaw("COUNT(DISTINCT(DATE(checktime))) as count")->where('userid', $user->userid)->whereMonth('checktime', @$month)->whereYear('checktime', @$month)->first();
                                            }else {
                                                $attendances = \App\Models\Checkinout::selectRaw("COUNT(DISTINCT(DATE(checktime))) as count")->where('userid', $user->userid)->first();
                                            }
                                        @endphp
                                        <td>{{ $attendances->count }}</td>
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('after_styles')
	<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/crud.css') }}">
	<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/show.css') }}">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
@endsection

@section('after_scripts')
    <script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
    <script src="{{ asset('packages/backpack/crud/js/crud.js') }}"></script>
	<script src="{{ asset('packages/backpack/crud/js/show.js') }}"></script>
@endsection
