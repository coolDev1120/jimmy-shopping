<?php

namespace App\Http\Controllers\Admin;

use Datatables;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Transaction;
use App\Models\Withdraw;
use App\Models\Currency;
use App\Models\Quote;
use Illuminate\Support\Facades\Input;
use Validator;

class QuoteController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    //*** JSON Request
    public function datatables()
    {
            $datas = Quote::orderBy('id')->get();
            //--- Integrating This Collection Into Datatables
            return Datatables::of($datas)
                            ->addColumn('action', function(Quote $data) {
                                $class = $data->status == 1 ? 'drop-success' : 'drop-danger';
                                $s = $data->status == 0 ? 'selected' : '';
                                $ns = $data->status == 1 ? 'selected' : '';
                                $ban = '<select class="process select droplinks '.$class.'">'.
                                        '<option data-val="0" value="'. route('admin-quote-accept',['id1' => $data->id, 'id2' => 0]).'" '.$s.'>Not Accepted</option>'.
                                        '<option data-val="1" value="'. route('admin-quote-accept',['id1' => $data->id, 'id2' => 1]).'" '.$ns.'>Accepted</option></select>';

                                return '<div class="action-list"><a href="' . route('admin-quote-show',$data->id) . '" > <i class="fas fa-eye"></i> Details</a><a href="javascript:;" class="send" data-email="'. $data->email .'" data-toggle="modal" data-target="#vendorform"><i class="fas fa-envelope"></i> Send</a>'.$ban.'<a href="javascript:;" data-href="' . route('admin-quote-delete',$data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                            }) 
                            ->rawColumns(['action'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function index()
    {
        return view('admin.quote.index');
    }


    //*** GET Request
    public function show($id)
    {
        $data = Quote::findOrFail($id);
        $quote_links = json_decode($data->quote_link);
        $quote_names = json_decode($data->quote_name);
        $quote_color_sizes = json_decode($data->quote_color_size);
        $quote_qtys = json_decode($data->quote_qty);
        $photos = json_decode($data->photo);
        return view('admin.quote.show',compact('data','quote_links','quote_names','quote_color_sizes','quote_qtys','photos'));
    }

    //*** GET Request
    public function status($id1,$id2)
    {
        $quote = Quote::findOrFail($id1);
        $quote->status = $id2;
        $quote->update();
    }

    //*** GET Request Delete
    public function destroy($id)
    {
        $quote = Quote::findOrFail($id);
        if (file_exists(public_path().'/assets/images/attachments/'.$quote->photo)) {
            unlink(public_path().'/assets/images/attachments/'.$quote->photo);
        }
        $quote->delete();
        //--- Redirect Section
        $msg = 'Quote Deleted Successfully.';
        return response()->json($msg);
    }
}