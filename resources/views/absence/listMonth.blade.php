@extends(backpack_view('blank'))

@php
  $defaultBreadcrumbs = [
    trans('backpack::crud.admin') => url(config('backpack.base.route_prefix'), 'dashboard'),
    $crud->entity_name_plural => url($crud->route),
    trans('backpack::crud.preview') => false,
  ];

  // if breadcrumbs aren't defined in the CrudController, use the default breadcrumbs
  $breadcrumbs = $breadcrumbs ?? $defaultBreadcrumbs;
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
                @endif
                <div class="table">
                    <table class="table table-striped table-bordered">
                        <thead class="thead-dark">
                            <tr>
                              <th scope="col">Department</th>
                              <th scope="col">Nomor</th>
                              <th scope="col">Nama</th>
                              <th scope="col">Kehadiran</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($crud->query->get() as $key => $user)
                                    <td>{{ $user->department->DeptName }}</td>
                                    <td>{{ $user->badgenumber }}</td>
                                    <td>{{ $user->name }}</td>
                                    @php
                                        $attendances = \App\Models\Checkinout::selectRaw("COUNT(DISTINCT(DATE(checktime))) as count")->where('userid', $user->userid)->first();
                                    @endphp
                                    <td>{{ $attendances->count }}</td>
                                </tr>
                            @endforeach
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
    <script src="{{ asset('packages/backpack/crud/js/crud.js') }}"></script>
	<script src="{{ asset('packages/backpack/crud/js/show.js') }}"></script>
@endsection
