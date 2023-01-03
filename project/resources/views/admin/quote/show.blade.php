@extends('layouts.admin')

@section('styles')
    <style>
        .customar-details-area .row {
            margin-bottom: 10px;
        }
        .field_title {
            text-align: right;
        }
        .field_title span {
            font-size: 20px;
        }
        .customar-details-area input {
            font-size: 21px;
            padding: 0;
        }
        .row div {
            padding: 10px;
        }
    </style>
@endsection

@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __("Quote Details") }} <a class="add-btn" href="{{ url()->previous() }}"><i class="fas fa-arrow-left"></i> {{ __("Back") }}</a></h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
                        </li>
                        <li>
                            <a href="{{ route('admin-quotes') }}">{{ __("Quote") }}</a>
                        </li>
                        <li>
                            <a href="{{ route('admin-quote-show',$data->id) }}">{{ __("Details") }}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="add-product-content customar-details-area" style="padding: 0 40px;">

            <div class="row">
                <div class="col-lg-6 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-lg-4 field_title">
                            <span> Email: </span>
                        </div>
                        <div class="col-lg-8">
                            <input name="customer_email" type="email" class="input-field" value="{{ $data->customer_email }}">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-lg-4 field_title">
                            <span> Phone: </span>
                        </div>
                        <div class="col-lg-8">
                            <input name="customer_phone" type="text" class="input-field" value="{{ $data->customer_phone }}">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-lg-4 field_title">
                            <span> Your Name: </span>
                        </div>
                        <div class="col-lg-8">
                            <input name="customer_name" type="text" class="input-field" value="{{ $data->customer_name }}">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-lg-4 field_title">
                            <span> Country: </span>
                        </div>
                        <div class="col-lg-8">
                            <input name="customer_country" type="text" class="input-field" value="{{ $data->customer_country }}">
                        </div>
                    </div>
                </div>
            </div>

            <div id="quotes_div">
                <div class="row">                
                    <div class="col-lg-5 col-sm-12 col-12" style="text-align: center; font-size: 27px;">
                        Link
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12" style="text-align: center; font-size: 27px;">
                        Name
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12" style="text-align: center; font-size: 27px;">
                        Color, Size
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12" style="text-align: center; font-size: 27px;">
                        Quantity
                    </div>
                    <div class="col-lg-1 col-sm-12 col-12" style="text-align: center; font-size: 27px;">
                        Image
                    </div>
                </div>
                <div class="row">                
                    <div class="col-lg-5 col-sm-12 col-12">
                        @foreach ($quote_links as $key => $value)
                            <div class="row">
                                <input type="text" class="input-field" value="{{ $value ? $value:'' }}" >
                            </div>
                        @endforeach
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12">
                        @foreach ($quote_names as $key => $value)
                            <div class="row">
                                <input type="text" class="input-field" value="{{ $value ? $value:'' }}" >
                            </div>
                        @endforeach
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12">
                        @foreach ($quote_color_sizes as $key => $value)
                            <div class="row">
                                <input type="text" class="input-field" value="{{ $value ? $value:'' }}" >
                            </div>
                        @endforeach
                    </div>
                    <div class="col-lg-2 col-sm-12 col-12">
                        @foreach ($quote_qtys as $key => $value)
                            <div class="row">
                                <input type="text" class="input-field" value="{{ $value ? $value:'' }}" >
                            </div>
                        @endforeach
                    </div>
                    <div class="col-lg-1 col-sm-12 col-12">
                        @foreach ($photos as $key => $value)
                            <div class="row">
                                <a class="btn btn-primary" href="{{asset('assets/images/attachments/'.$value)}}" target="blank">Image</a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>

        </div>
    </div>



@endsection