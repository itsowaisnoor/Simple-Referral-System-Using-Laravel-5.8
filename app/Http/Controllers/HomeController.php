<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Vinkla\Hashids\Facades\Hashids;
use Cookie;
use App\User;
use Auth;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        Cookie::queue(
            Cookie::forget('referral')
        );
        $user = User::findOrFail(Auth::user()->id);
        return view('home')->with('link', 'http://localhost:8000/?ref=' . Hashids::encode(auth()->user()->id))
                            ->with('user', $user);
    }



public function referrer()
{
    return auth()->user()->referrer;
}

public function referrals()
{
    return auth()->user()->referrals;
}

}
