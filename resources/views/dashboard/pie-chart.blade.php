
<div class="row">
    <div class="col-md-5">
        @php
        Widget::add([
            'type'    => 'div',
            'class'   => 'row',
            'content' => [ // widgets
                ['type'       => 'chart',
                'controller' => \App\Http\Controllers\Admin\Charts\EmployeeChartController::class,
                'wrapper' => ['class' => 'col text-center'],
                'content' => ['header' => 'Jumlah Karyawan'],
                ]
            ]
        ])->section('after_content');
        @endphp
    </div>
</div>
