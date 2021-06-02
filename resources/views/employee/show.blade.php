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
                    <div class="col-md-6">
                        <div class="table">
                            <table class="table no-border">
                                <tr>
                                    <td>NIK</td>
                                    <td><strong>{{@$crud->entry->nik}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Nama</td>
                                    <td><strong>{{@$crud->entry->name}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Perusahaan</td>
                                    <td><strong>{{@$crud->entry->department->DeptName}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Jabatan</td>
                                    <td><strong>{{@$crud->entry->jabatan->name}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Tempat, Tanggal Lahir</td>
                                    <td><strong>{{@$crud->entry->place_of_birth}}, {{date(@$crud->entry->date_of_birth)}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Pendidikan</td>
                                    <td><strong>{{@$crud->entry->degree}}, {{@$crud->entry->vocational}}, {{@$crud->entry->university}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Status Kerja</td>
                                    <td><strong>{{@$crud->entry->work_status}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Tanggal Join</td>
                                    <td><strong>{{date(@$crud->entry->date_of_join)}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Tanggal Tetap</td>
                                    <td><strong>{{date(@$crud->entry->date_of_permanent)}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Masa Kerja</td>
                                    <td><strong>{{@$crud->entry->time_service}} {{@$crud->entry->unit_time_service}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Nomor KTP</td>
                                    <td><strong>{{@$crud->entry->id_number}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Nomor NPWP</td>
                                    <td><strong>{{@$crud->entry->no_npwp}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Alamat Sesuai KTP</td>
                                    <td><textarea style="width: 100%; heigh: 100%; border-style: none; border-color: Transparent; overflow: auto" readonly disabled>{{@$crud->entry->address_id}}</textarea></td>
                                </tr>
                                <tr>
                                    <td>Alamat Domisili</td>
                                    <td><textarea style="width: 100%; heigh: 100%; border-style: none; border-color: Transparent; overflow: auto" readonly disabled>{{@$crud->entry->address}}</textarea></td>
                                </tr>
                                <tr>
                                    <td>Alamat E-mail</td>
                                    <td><strong>{{@$crud->entry->email}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Nomor Telp</td>
                                    <td><strong>{{@$crud->entry->contact_number}}</strong></td>
                                </tr>
                                <tr>
                                    <td>BPJS Kesehatan</td>
                                    <td><strong>{{@$crud->entry->bpjs_kesehatan}}</strong></td>
                                </tr>
                                <tr>
                                    <td>BPJS Ketenagakerjaan</td>
                                    <td><strong>{{@$crud->entry->bpjs_ketenagakerjaan}}</strong></td>
                                </tr>
                                <tr>
                                    <td>Sertifikasi</td>
                                    <td>
                                    @foreach (@$crud->entry->sertifikasi as $sertifikat)
                                        <iframe src="{{asset('storage/'.@$sertifikat)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe><br>
                                    @endforeach
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="table">
                            <table class="table no-border">
                                <tr>
                                    <td>KTP</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->ktp)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>NPWP</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->npwp)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>CV</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->cv)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>Ijazah</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->ijazah)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>KK</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->kk)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>BPJS Kesehatan</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->kesehatan)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>BPJS Ketenagakerjaan</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->ketenagakerjaan)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                                <tr>
                                    <td>Form Aplikasi Calon Karyawan</td>
                                    <td><iframe src="{{asset('storage/'.@$crud->entry->submission_form)}}" style="width:max-content; height:max-content;" frameborder="0"></iframe></td>
                                </tr>
                            </table>
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
