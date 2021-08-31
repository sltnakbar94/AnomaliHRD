@extends(backpack_view('blank'))

@section('content')
    @include('absence.form')
@endsection

@section('after_styles')
    <style>
        span {
            color: red;
        }
    </style>
@endsection
