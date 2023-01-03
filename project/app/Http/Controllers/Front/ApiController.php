<?php

namespace App\Http\Controllers\Front;

use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Currency;
use App\Models\Generalsetting;
use App\Models\Notification;
use App\Models\Order;
use App\Models\OrderTrack;
use App\Models\Pagesetting;
use App\Models\Product;
use App\Models\User;
use App\Models\UserNotification;
use App\Models\VendorOrder;
use Auth;
use Datatables;
use Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ApiController extends Controller
{

    public function send_cart_info( $order )
    {
        // $gs = Generalsetting::findOrFail(1);
        // $order_info = "asdf";
        // Log::Info($order_info);

        // $curl = curl_init();

        // curl_setopt_array($curl, array(
        //     CURLOPT_URL => $gs->api_url.'/api/register_order',
        //     CURLOPT_RETURNTRANSFER => true,
        //     CURLOPT_ENCODING => '',
        //     CURLOPT_MAXREDIRS => 10,
        //     CURLOPT_TIMEOUT => 0,
        //     CURLOPT_FOLLOWLOCATION => true,
        //     CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        //     CURLOPT_CUSTOMREQUEST => 'POST',
        //     CURLOPT_POSTFIELDS => array('order' => $order_info),
        //     CURLOPT_HTTPHEADER => array(
        //         'Cookie: XSRF-TOKEN=eyJpdiI6IndlQkNZdGV6S2hqcjM5dXIzWThZeVE9PSIsInZhbHVlIjoicGpzbUFaMTRkYnB0WGVuaHp6UmZtS2hXU1RxS2gzNVRhVlJoVzMraER6TUx2QWdTMVZ2XC9wUmxKaGVXTW9NcGwiLCJtYWMiOiI0NDZkYzUxNzE0NmRmNTg1YzQwMjJjMjhlYWZkMWFlZjU1OTZlZGVlMDAzNjYyODlkMWU4MDRkZTIzMTAyOTE0In0%3D; laravel_session=eyJpdiI6IjYzXC9QVVwvczlXdDBXUUE4OW1DVnFTZz09IiwidmFsdWUiOiJuUXF6TUkwNStzdFNyNlJLc2FGeVBnZStzanZLQXNTbTBuRkc4WHFOc3l0WWZrRTB3ekRJTzhcLzV0ZHRrcTZrRCIsIm1hYyI6IjhiNmIzYTE4ZmI3YjE4NGMyNTBhNDkzMjI3NDVkMTIyOTg3OGFiZDZiYjVlZjA5YzgyZTA0MDdmODA1MWQ0ZDAifQ%3D%3D'
        //     ),
        // ));

        // $response = curl_exec($curl);
        // Log::Info($response);
    }

    public function get_all_orders(Request $request)
    {
        
        $gs = Generalsetting::findOrFail(1);

        $datas = Order::orderBy('id','desc')->get();  
        
         //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
                            ->editColumn('tracking_id', function(Order $data) {
                                $tracking_id = "ABC-".sprintf("%'.06d",$data->id);
                                return $tracking_id;
                            })
                            ->editColumn('pay_amount', function (Order $data) {
                                return $data->currency_sign . round(($data->pay_amount + $data->wallet_price) * $data->currency_value, 2);
                            })
                            ->addColumn('action', function(Order $data) {
                                $gs = Generalsetting::findOrFail(1);

                                $orders = '<a href="javascript:;" data-href="'. route('admin-order-edit',$data->id) .'" class="delivery" data-toggle="modal" data-target="#modal1"><i class="fas fa-dollar-sign"></i> Delivery Status</a>';
                                return '<div class="godropdown"><button class="go-dropdown-toggle"> Actions<i class="fas fa-chevron-down"></i></button><div class="action-list"><a href="' . $gs->api_url . '/admin/online_orders/'.$data->id.'/show" > <i class="fas fa-eye"></i> Details</a><a href="javascript:;" class="send" data-email="'. $data->customer_email .'" data-toggle="modal" data-target="#vendorform"><i class="fas fa-envelope"></i> Send</a><a href="javascript:;" data-href="'. route('admin-order-track',$data->id) .'" class="track" data-toggle="modal" data-target="#modal1"><i class="fas fa-truck"></i> Track Order</a>'.$orders.'</div></div>';
                            }) 
                            ->rawColumns(['id','action'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    public function get_order_details($id)
    {
        
        $order = Order::where("id", $id)->first();        

        return response()->json([ "code" => "200", "order" => $order ]);
    }
}