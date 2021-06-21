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
            <div class="card-header">
                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table">
                            <table class="table no-border">
                                <tr>
                                    <td>Nama Karyawan</td>
                                    <td><strong>{{@\App\Models\Employee::find($crud->entry->userid)->name}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Tanggal</td>
                                    <td><strong>{{date('d-M-Y', strtotime(@$crud->entry->date))}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Keterangan</td>
                                    <td><strong>{{@$crud->entry->keterangan}} {{@$crud->entry->keterangan_tambahan}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Status</td>
                                    <td><strong>{{@$crud->entry->status}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Upload Bukti</td>
                                    <td>
                                        @if (!empty(@$crud->entry->upload_data))
                                            <iframe src="{{asset('storage/'.@$crud->entry->upload_data)}}" style="width:1400px; height:600px;" frameborder="0"></iframe><br>
                                        @else
                                            <strong>Tidak ada bukti</strong>
                                        @endif
                                    </td>
                                </tr>
                                @if (!empty(@$crud->entry->lat) && !empty(@$crud->entry->lng))
                                    <tr>
                                        <td>Titik Lokasi</td>
                                        <td>
                                            <p><a href="https://www.google.com/maps/?q={{@$crud->entry->lat}},{{@$crud->entry->lng}}" target="_blank">{{@$crud->entry->lat}},{{@$crud->entry->lng}}</a></p>
                                        </td>
                                    </tr>
                                @endif
                            </table>
                            @if (@$crud->entry->status == "Submit")
                                <div class="row">
                                    <div class="col-md-6">
                                        <a href="{{ backpack_url('keterangan/'.@$crud->entry->id.'/approve') }}" style="text-decoration:none;">
                                            <div class="alert alert-success text-center">
                                            <h3><strong>Approve</strong></h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ backpack_url('keterangan/'.@$crud->entry->id.'/decline') }}" style="text-decoration:none;">
                                            <div class="alert alert-danger text-center">
                                            <h3><strong>Decline</strong></h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            @elseif (@$crud->entry->status == "Approve")
                                <div class="col-md-12">
                                    <a href="{{ backpack_url('keterangan/'.@$crud->entry->id.'/decline') }}" style="text-decoration:none;">
                                        <div class="alert alert-danger text-center">
                                        <h3><strong>Decline</strong></h3>
                                        </div>
                                    </a>
                                </div>
                            @elseif (@$crud->entry->status == "Decline")
                                <div class="col-md-12">
                                    <a href="{{ backpack_url('keterangan/'.@$crud->entry->id.'/approve') }}" style="text-decoration:none;">
                                        <div class="alert alert-success text-center">
                                        <h3><strong>Approve</strong></h3>
                                        </div>
                                    </a>
                                </div>
                            @endif
                        </div>
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
@endsection

@section('after_scripts')
	<script src="{{ asset('packages/backpack/crud/js/crud.js') }}"></script>
	<script src="{{ asset('packages/backpack/crud/js/show.js') }}"></script>
@endsection
