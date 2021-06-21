@extends(backpack_view('blank'))

@section('content')
    @include('dashboard.absence_location')
    @include('dashboard.counter')
    @include('dashboard.pie-chart')
@endsection
