<?php

namespace App\Http\Controllers\Front;

use App\Classes\GeniusMailer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Illuminate\Support\Facades\Input;
use Validator;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use App\Models\Subscription;
use App\Models\Generalsetting;
use App\Models\UserSubscription;
use App\Models\FavoriteSeller;
use App\Models\Quote;
use Illuminate\Support\Facades\Log;

class QuoteController extends Controller
{
    public function __construct()
    {
    }

    public function index()
    {
        return view('front.quote');
    }

    public function quote(Request $request)
    {
        //--- Validation Section

        $rules =
        [
            'email' => 'unique:users,email,'.Auth::user()->id
        ];

        $validator = Validator::make(Input::all(), $rules);
        
        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends
        $input = $request->all();  
        $data = new Quote;
        
        $photo_array = array();
        if ($files = $request->file('photo')){
            foreach ($files as  $key => $file){
                $name = time().$file->getClientOriginalName();
                $file->move('assets/images/attachments',$name);
                array_push($photo_array, $name);
            }
        }
        
        $input['photo'] = json_encode($photo_array);
        
        $input['quote_link'] = json_encode(array_filter($request->quote_link));
        $input['quote_name'] = json_encode(array_filter($request->quote_name));
        $input['quote_color_size'] = json_encode(array_filter($request->quote_color_size));
        $input['quote_qty'] = json_encode(array_filter($request->quote_qty));
        
        $data->fill($input)->save();

        $msg = 'Successfully requested your product quote';
        return response()->json($msg); 
    }

}
