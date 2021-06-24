@extends(backpack_view('blank'))

@section('content')
<div class="row">
	<div class="col-md-12">
	<!-- Default box -->
	  <div class="">
	    <div class="card no-padding no-border">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div class="col-md-12">
                                <table id="tableDetailMonth" class="display nowrap">
                                    <caption style="caption-side: top;"><h3><b>{{$month['user']->badgenumber}} : {{$month['user']->name}}</b></h3></caption>
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
                                        @foreach ($month['day'] as $key=>$date)
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
                                            @$keterangan = @\App\Models\Keterangan::where('userid', $month['user']->userid)->whereDate('date', date('Y-m-d', strtotime($date)))->orderBy('created_at', 'desc')->first();
                                            @$masuk = @\App\Models\CheckIn::where('userid', $month['user']->userid)->whereDate('checktime', date('Y-m-d', strtotime($date)))->orderBy('checktime', 'asc')->first()->checktime;
                                            @$pulang = @\App\Models\CheckOut::where('userid', $month['user']->userid)->whereDate('checktime', date('Y-m-d', strtotime($date)))->orderBy('checktime', 'desc')->first()->checktime;
                                            @$t1 = @\Carbon\Carbon::parse(@$masuk);
                                            @$t2 = @\Carbon\Carbon::parse(@$pulang);
                                            @$hour = $t1->diffInHours($t2);
                                            @$minute = $t1->diffInMinutes($t2);
                                            @$second = $t1->diffInSeconds($t2);
                                            $month['jam'] += $hour;
                                            $month['menit'] += $minute;
                                        @endphp
                                        @if (@$masuk > "10:00:00")
                                            <tr style="background-color: #ff4d4d">
                                        @elseif (@$hour < 9)
                                            @if (@$keterangan->status == "Approve")
                                                <tr style="background-color: #07c12a">
                                            @else
                                                <tr style="background-color: #ff4d4d">
                                            @endif
                                        @else
                                            <tr>
                                        @endif
                                            <td style="text-align: center;">
                                                {{$key+1}}
                                            </td>
                                            <td style="text-align: center;">
                                                {{$dayList[$day]}}
                                            </td>
                                            <td style="text-align: center;">
                                                {{$date}}
                                            </td>
                                            <td style="text-align: center;">
                                                {{@$masuk}}
                                            </td>
                                            <td style="text-align: center;">
                                                {{@$pulang}}
                                            </td>
                                            <td style="text-align: center;">
                                                {{@$hour}} Jam {{(@$minute/60-@$hour)*60}} Menit
                                            </td>
                                            <td style="text-align: center;">
                                                @if (!empty(@$keterangan) && @$keterangan->status != "Decline")
                                                    {{@$keterangan->keterangan}} {{@$keterangan->keterangan_tambahan}}
                                                @elseif (@$masuk > "10:00:00")
                                                    Telat
                                                @endif
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">Total Hari Kerja : {{@\App\Models\CheckInOut::whereMonth('checktime', $month['month'])->selectRaw("count(distinct(date(checktime))) as jumlah")->where('userid', $month['user']->userid)->first()->jumlah}} Hari</td>
                                            <td style="text-align: center;">Total Jam Kerja : {{floor(@$month['menit']/60)}} Jam {{round((($month['menit']/60)-floor(@$month['menit']/60))*60)}} Menit</td>
                                            <td></td>
                                        </tr>
                                    </tfoot>
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
