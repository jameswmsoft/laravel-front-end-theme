<?php

namespace App\Http\Controllers\Admin;
use App\AppUsers;
use App\Http\Controllers\JoshController;
// use App\Http\Requests;

use Illuminate\Http\Request;

use App\Http\Requests\AppUsersRequest;
use Illuminate\Support\Facades\App;
use Redirect;
use DB;


class AppUsersController extends JoshController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        // Grab all the blog category
        $appusers = AppUsers::all();
        // Show the page
//        echo($appusers);
//        exit();
        return view('admin.appusers.index', compact('appusers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('admin.appusers.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    // public function store(AppUsersRequest $request)
    // {
    //     $appUsers = new AppUsers($request->all());

    //     if ($appUsers->save()) {
    //         return redirect('admin/appusers')->with('success', trans('appusers/message.success.create'));
    //     } else {
    //         return Redirect::route('admin/appusers')->withInput()->with('error', trans('appusers/message.error.create'));
    //     }
    // }

    public function store(Request $request)
    {
        
        $check_user = DB::table('app_users')->select('id')->where('username', $request->name)->count();
        
        if($check_user == 0) {
            $inserted_Users = DB::table('app_users')->insert(
                ['username' => $request->name,'email' => $request->email,'phone_1' => $request->phone_1,'affiliate_code' => $request->affiliate_code,'custom' => $request->custom,'referral_code' => $request->referral_code,'password' => $request->password,'created_at' => date('Y-m-d h:i:s')]
            );
            if ($inserted_Users) {
            return redirect('admin/appusers')->with('success', 'Inserted App User Data Successfully');
            } else {
                return Redirect::route('admin/appusers')->withInput()->with('error', trans('appusers/message.error.create'));
            }    
        }
        else{
            return Redirect::back()->withInput()->with('error', 'User already exist.');
        }
        

        // $appUsers = new AppUsers($request->all());

        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  BlogCategory $blogCategory
     * @return Response
     */
    public function edit(AppUsers $appusers)
    {
//        var_dump($appusers);exit;
        return view('admin.appusers.edit', compact('appusers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  BlogCategory $blogCategory
     * @return Response
     */
    // public function update(AppUsersRequest $request, AppUsers $appusers)
    // {
    //     echo"dfd";
    //     exit;
    //     if ($appusers->update($request->all())) {
    //         return redirect('admin/appusers')->with('success', trans('appusers/message.success.update'));
    //     } else {
    //         return Redirect::route('admin/appusers')->withInput()->with('error', trans('appusers/message.error.update'));
    //     }
    // }

     public function update(Request $request)
    {
        //dd($request);

       $appusers= DB::table('app_users')
            ->where('id', $request->id)
            ->update(['username' => $request->name,'email' => $request->email,'phone_1' => $request->phone_1,'affiliate_code' => $request->affiliate_code,'custom' => $request->custom,'referral_code' => $request->referral_code]);
         // $appusers = AppUsers::all()->where('id',$request);

        
        if ($appusers) {
            return redirect('admin/appusers')->with('success', trans('Update Successfully.'));
        } else {
            return Redirect::route('admin/appusers')->withInput()->with('error', trans('appusers/message.error.update'));
        }
    }

    /**
     * Remove blog.
     *
     * @param BlogCategory $blogCategory
     * @return Response
     */
    public function getModalDelete(AppUsers $appusers)
    {

        $id=$appusers->id;

        $delete_appuser=DB::table('app_users')->where('id', $id)->delete();

        

        if($delete_appuser)
        {

             return redirect('admin/appusers')->with('success', trans('Delete Successfully.'));
            // $confirm_route = route('admin.appusers.delete', ['id' => $appusers->id]);
            // return view('admin.layouts.modal_confirmation', compact('error', 'model', 'confirm_route'));
        }
        else
        {
             return Redirect::route('admin/appusers')->withInput()->with('error', 'Not Properly deleted.');
            // $error = trans('appusers/message.error.delete', compact('id'));
            // return view('admin.layouts.modal_confirmation', compact('error', 'model', 'confirm_route'));
        }

        
       
        // $model = 'appusers';
        // $confirm_route = $error = null;
        // try {
        //     $confirm_route = route('admin.appusers.delete', ['id' => $appusers->id]);
        //     return view('admin.layouts.modal_confirmation', compact('error', 'model', 'confirm_route'));
        // } catch (GroupNotFoundException $e) {

        //     $error = trans('appusers/message.error.delete', compact('id'));
        //     return view('admin.layouts.modal_confirmation', compact('error', 'model', 'confirm_route'));
        // }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  BlogCategory $blogCategory
     * @return Response
     */
    public function destroy(AppUsers $appusers)
    {
        if ($appusers->delete()) {
            return redirect('admin/appusers')->with('success', trans('appusers/message.success.destroy'));
        } else {
            return Redirect::route('admin/appusers')->withInput()->with('error', trans('appusers/message.error.delete'));
        }
    }

}
