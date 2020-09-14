<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\User;

class AuthController extends Controller
{
    public function __construct()
    {
        //  $this->middleware('auth:api');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function authenticate(Request $request)
    {
        $this->validate($request, [
            'nickname' => 'required',
            'password' => 'required'
        ]);
        $user = User::where('nickname', $request->input('nickname'))->first();
        if (Hash::check($request->input('password'), $user->password)) {
            $apikey = base64_encode(Str::random(40));
            User::where('nickname', $request->input('nickname'))->update(['api_token' => "$apikey"]);;
            return response()->json(['status' => 'success', 'api_token' => $apikey]);
        } else {
            return response()->json(['status' => 'fail'], 401);
        }
    }
}
