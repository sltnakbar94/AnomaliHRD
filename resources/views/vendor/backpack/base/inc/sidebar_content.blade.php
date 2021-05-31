<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('reportabsence') }} "><i class="las la-calendar-day"></i> Absen Harian</a></li>
<li class='nav-item'><a class="nav-link" href='{{ backpack_url('reportmonthabsence') }}'><i class="lar la-calendar-alt"></i> Absen Bulanan</a></li>
@if (backpack_user()->role == 'admin')
    <li class="nav-item"><a class="nav-link" href='{{ backpack_url('role') }}'><i class="las la-user-lock"></i> Roles</a></li>
    <li class="nav-item"><a class="nav-link" href='{{ backpack_url('user') }}'><i class="las la-user"></i> Users</a></li>
@endif
@if (backpack_user()->role != 'staff')
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('position') }}'><i class="las la-user-tie"></i> Positions</a></li>
    <li class='nav-item'><a class='nav-link' href='{{ backpack_url('employee') }}'><i class="las la-users"></i> Karyawan</a></li>
@endif
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('keterangan') }}'><i class='las la-exclamation'></i> Keterangan</a></li>

