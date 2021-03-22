@php
    $today = today();
    $dates = [];

    for($i=1; $i < $today->daysInMonth + 1; ++$i) {
        $dates[] = \Carbon\Carbon::createFromDate($today->year, $today->month, $i)->format('Y-m-d');
    }
@endphp
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="card no-padding no-border">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table">
                                <table id="tableDetail" class="display nowrap" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>
                                                No
                                            </th>
                                            <th>
                                                Tanggal
                                            </th>
                                            <th>
                                                Masuk
                                            </th>
                                            <th>
                                                Pulang
                                            </th>
                                            <th>
                                                Total Masuk Kerja
                                            </th>
                                            <th>
                                                Total Jam Kerja
                                            </th>
                                        </tr>
                                    </thead>
                                    @foreach ($dates as $key => $date)
                                        <tbody>
                                            <tr>
                                                <td>
                                                    {{$key+1}}
                                                </td>
                                                <td>
                                                    {{$date}}
                                                </td>
                                                <td>
                                                    {{$crud->entry->checktime[0]->checktime}}
                                                </td>
                                            </tr>
                                        </tbody>
                                    @endforeach
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/crud.css') }}">
<link rel="stylesheet" href="{{ asset('packages/backpack/crud/css/show.css') }}">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">

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
        $('#tableQoo').DataTable( {
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        } );
    } );
</script>
