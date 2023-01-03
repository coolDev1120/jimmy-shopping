@extends('layouts.admin') 

@section('styles')

<style type="text/css">
    
.input-field { 
    padding: 15px 20px; 
}


</style>

@endsection

@section('content')  

                    <div class="content-area">
                        <div class="mr-breadcrumb">
                            <div class="row">
                                <div class="col-lg-12">
                                        <h4 class="heading">{{ __('Annually Sales Report') }}</h4>
                                        <ul class="links">
                                            <li>
                                                <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">{{ __('Sales Report') }}</a>
                                            </li>
                                            <li>
                                                <a href="{{ route('admin-annually-report') }}">{{ __('Annually Sales Report') }}</a>
                                            </li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="product-area" style="padding: 30px;">

                            <?php
                                $id = 1;
                            ?>
                            <table class="table table-striped table-bordered" id="sortTable">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Year</th>
                                        <th scope="col">Total Quantity</th>
                                        <th scope="col">Total Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($order_results as $result)
                                        <tr>
                                            <th scope="row">{{$id++}}</th>
                                            <td> {{ $result->date }} </td>
                                            <td> {{ $result->sum_quantity }} </td>
                                            <td> ${{ $result->sum_amount }} </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>


    
@endsection