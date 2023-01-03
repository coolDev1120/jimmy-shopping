<?php

namespace App\Http\Controllers\Admin;

use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\Order;
use App\Models\OrderTrack;
use App\Models\User;
use App\Models\VendorOrder;
use Datatables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;

class SalesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    

    public function daily()
    {
        $orders = Order::all();

        $order_dates_array = array();
        foreach($orders as $item)
        {
            $date = $item->created_at->format('Y-m-d');
            if(!in_array($date, $order_dates_array))
                array_push($order_dates_array, $date);
        }
        $order_results = array();
        foreach($order_dates_array as $item)
        {
            $daily = Order::whereDate('created_at', date($item))->get();
            $sum_quantity = 0;
            $sum_amount = 0;
            foreach($daily as $project)
            {
                $sum_quantity += (float)$project->totalQty;
                $sum_amount += (float)$project->pay_amount;
            }
            $daily_sum_item = new \stdClass();
            $daily_sum_item->date = $item;
            $daily_sum_item->sum_quantity = $sum_quantity;
            $daily_sum_item->sum_amount = $sum_amount;
            array_push($order_results, $daily_sum_item);
        }

        return view('admin.sales_report.daily',compact('order_results'));
    }

    public function monthly()
    {
        $orders = Order::all();

        $order_dates_array = array();
        foreach($orders as $item)
        {
            $date = $item->created_at->format('m');
            if(!in_array($date, $order_dates_array))
                array_push($order_dates_array, $date);
        }
        $order_results = array();
        foreach($order_dates_array as $item)
        {
            $daily = Order::whereMonth('created_at', '=', $item)->get();
            $sum_quantity = 0;
            $sum_amount = 0;
            foreach($daily as $project)
            {
                $sum_quantity += (float)$project->totalQty;
                $sum_amount += (float)$project->pay_amount;
            }
            $sum_item = new \stdClass();
            $sum_item->date = $item;
            $sum_item->sum_quantity = $sum_quantity;
            $sum_item->sum_amount = $sum_amount;
            array_push($order_results, $sum_item);
        }   

        return view('admin.sales_report.monthly',compact('order_results'));
    }

    public function annually()
    {

        $orders = Order::all();

        $order_dates_array = array();
        foreach($orders as $item)
        {
            $date = $item->created_at->format('Y');
            if(!in_array($date, $order_dates_array))
                array_push($order_dates_array, $date);
        }
        $order_results = array();
        foreach($order_dates_array as $item)
        {
            $daily = Order::whereYear('created_at', '=', $item)->get();
            $sum_quantity = 0;
            $sum_amount = 0;
            foreach($daily as $project)
            {
                $sum_quantity += (float)$project->totalQty;
                $sum_amount += (float)$project->pay_amount;
            }
            $sum_item = new \stdClass();
            $sum_item->date = $item;
            $sum_item->sum_quantity = $sum_quantity;
            $sum_item->sum_amount = $sum_amount;
            array_push($order_results, $sum_item);
        }   

        return view('admin.sales_report.annually', compact('order_results'));
    }

    public function show($id)
    {
        $order = Order::findOrFail($id);
        $cart = unserialize(bzdecompress(utf8_decode($order->cart)));
        return view('admin.order.details',compact('order','cart'));
    }

}