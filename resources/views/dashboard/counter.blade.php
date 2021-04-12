<div class="row" name="widget_899479116" section="before_content">

    <div class="col-md-6">
        <div class="card text-white bg-primary mb-2 text-right">
            <div class="card-body">
                <div class="text-value">{{ number_format($dashboard['total_karyawan']['count']) }}</div>

                <div>Total Karyawan</div>

                <div class="progress progress-white progress-xs my-2">
                    <div class="progress-bar" role="progressbar" style="width: {{ $dashboard['total_karyawan']['progress'] }}%"
                      aria-valuenow="{{ $dashboard['total_karyawan']['progress'] }}" aria-valuemin="0" aria-valuemax="100"></div>
                </div>

                <small class="text-muted"></small>
            </div>

        </div>
    </div>

    <div class="col-md-6" data-toggle="modal" data-target="#showModalPaketDitujuan">
        <div class="card text-white bg-success mb-2 text-right">
            <div class="card-body">
                <div class="text-value">{{ number_format($dashboard['total_perusahaan']['count']) }}</div>

                <div>Total Perusahaan</div>

                <div class="progress progress-white progress-xs my-2">
                    <div class="progress-bar" role="progressbar" style="width: {{ $dashboard['total_perusahaan']['progress'] }}%"
                        aria-valuenow="{{ $dashboard['total_perusahaan']['progress'] }}" aria-valuemin="0" aria-valuemax="100"></div>
                </div>

                <small class="text-muted"></small>
            </div>

        </div>
    </div>

</div>
<div class="row" name="widget_899479116" section="before_content">
    @foreach (@$perusahaan as $count)
        <div class="col-md-2" data-toggle="modal" data-target="#showModalPaketDitujuan">
            <div class="card text-white mb-2 text-right" style="background-color: {{'#' . str_pad(dechex(mt_rand(0, 0xFFFFFF)), 6, '0', STR_PAD_LEFT)}}">
                <div class="card-body">
                    <div class="text-value">{{ number_format($count->count) }}</div>

                    <div>Total Karyawan Perusahaan <strong>{{$count->DeptName}}</strong></div>

                    <div class="progress progress-white progress-xs my-2">
                        <div class="progress-bar" role="progressbar" style="width: {{ $count->count / $dashboard['total_karyawan']['count'] * 100 }}%"
                            aria-valuenow="{{ $count->count / $dashboard['total_karyawan']['count'] * 100 }}" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>

                    <small class="text-muted"></small>
                </div>

            </div>
        </div>
    @endforeach
</div>
