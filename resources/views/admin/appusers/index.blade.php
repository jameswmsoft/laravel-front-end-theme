@extends('admin/layouts/default')

{{-- Web site Title --}}
@section('title')
@lang('appusers/title.management')
@parent
@stop
@section('header_styles')
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/datatables/css/dataTables.bootstrap.css') }}" />
    <link href="{{ asset('assets/css/pages/tables.css') }}" rel="stylesheet" type="text/css" />
@stop

{{-- Montent --}}
@section('content')
<section class="content-header">
    <h1>@lang('appusers/title.management')</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('admin.dashboard') }}"> <i class="livicon" data-name="home" data-size="16" data-color="#000"></i>
                @lang('general.dashboard')
            </a>
        </li>
        <li><a href="#"> @lang('appusers/title.blogcategories')</a></li>
        <li class="active">@lang('appusers/title.appuserslist')</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary ">
                <div class="panel-heading clearfix">
                    <h4 class="panel-title pull-left"> <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                        @lang('appusers/title.appuserslist')
                    </h4>
                    <div class="pull-right">
                    <a href="{{ URL::to('admin/appusers/create') }}" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> @lang('button.create')</a>
                  <!--   <a href="{{ URL::to('admin/users/create') }}" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> @lang('button.create')</a> -->
                    
                    </div>
                </div>
                <br />
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="table">
                            <thead>
                                <tr>
                                    <th>@lang('appusers/table.id')</th>
                                    <th>@lang('appusers/table.name')</th>
                                    <th>@lang('appusers/table.email')</th>
                                    <th>@lang('appusers/table.phone_1')</th>
                                    <th>@lang('appusers/table.affiliate_code')</th>
                                    <th>@lang('appusers/table.referral_code')</th>
                                    <th>@lang('appusers/table.is_vip')</th>
                                    <th>@lang('appusers/table.is_approved')</th>
                                    <th>@lang('appusers/table.registration_complete')</th>
                                    <th>@lang('appusers/table.is_blocked')</th>
                                    <th>@lang('appusers/table.created_at')</th>
                                    <th>@lang('appusers/table.actions')</th>
                                </tr>
                            </thead>
                            <tbody>
                            @if(!empty($appusers))
                                @foreach ($appusers as $user)
                                    <tr>
                                        <td>{{{ $user->id }}}</td>
                                        <td>{{{ $user->username }}}</td>
                                        <td>{{{ $user->email }}}</td>
                                        <td>{{{ $user->phone_1 }}}</td>
                                        <td>{{{ $user->affiliate_code }}}</td>
                                        <td>{{{ $user->referral_code }}}</td>
                                        <td>{{{ $user->is_vip }}}</td>
                                        <td>{{{ $user->is_approved }}}</td>
                                        <td>{{{ $user->registration_complete }}}</td>
                                        <td>{{{ $user->is_blocked }}}</td>
                                        <td>{{{ $user->created_at->diffForHumans() }}}</td>
                                        <td>
                                            <a href="{{{ URL::to('admin/appusers/' . $user->id . '/edit' ) }}}"><i
                                                        class="livicon" data-name="edit" data-size="18" data-loop="true"
                                                        data-c="#428BCA" data-hc="#428BCA"
                                                        title="@lang('appusers/form.update-blog')"></i></a>

                                                {{--<a href="{{route('admin.appusers.edit', $user->id)}}"><i--}}
                                                        {{--class="livicon" data-name="edit" data-size="18" data-loop="true"--}}
                                                        {{--data-c="#428BCA" data-hc="#428BCA"--}}
                                                        {{--title="@lang('appusers/form.update-blog')"></i></a>--}}

                                                <a href="#" data-toggle="modal" data-target="#appusers_exists" data-name="{!! $user->title !!}" class="appusers_exists" data-username="{{{ $user->username }}}" data-email="{{{ $user->email }}}" data-phone="{{{ $user->phone }}}" data-affiliate_code="{{{ $user->affiliate_code }}}" data-referral_code="{{{ $user->referral_code }}}">
                                                    <i class="livicon" data-name="warning-alt" data-size="18"
                                                       data-loop="true" data-c="#f56954" data-hc="#f56954"
                                                       title="@lang('appusers/form.appusersexists')" ></i>
                                                </a>

                                                <a href="{{ route('admin.appusers.confirm-delete', $user->id) }}">
                                                    <i class="livicon" data-name="remove-alt" data-size="18"
                                                       data-loop="true" data-c="#f56954" data-hc="#f56954"
                                                       title="@lang('appusers/form.deleteappusers')"></i>
                                                </a>

                                               <!--  <a href="{{ route('admin.appusers.confirm-delete', $user->id) }}" data-toggle="modal" data-target="#delete_confirm">
                                                    <i class="livicon" data-name="remove-alt" data-size="18"
                                                       data-loop="true" data-c="#f56954" data-hc="#f56954"
                                                       title="@lang('appusers/form.deleteappusers')"></i>
                                                </a> -->

                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>    <!-- row-->
</section>

@stop
{{-- Body Bottom confirm modal --}}
@section('footer_scripts')
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/jquery.dataTables.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.bootstrap.js') }}"></script>

    <script>
        $(document).ready(function() {
            $('#table').DataTable();
        });
    </script>
  <!--   <div class="modal fade" id="delete_confirm" tabindex="-1" role="dialog" aria-labelledby="appusers_delete_confirm_title" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div> -->
    <div class="modal fade" id="appusers_exists" tabindex="-2" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    <p>User Name : <span id="username"></span></p>
                    <p>User Email : <span id="email"></span></p>
                    <p>User Phone : <span id="phone"></span></p>
                    <p>User Affiliate code : <span id="affiliate_code"></span></p>
                    <p>User Referal code : <span id="referral_code"></span></p>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {$('body').on('hidden.bs.modal', '.modal', function () {$(this).removeData('bs.modal');});});
        $(document).on("click", ".appusers_exists", function () {

            var group_name = $(this).data('name');
            $(".modal-header h4").text( group_name+" App user info" );

            $('#username').html($(this).data('username'));
            $('#email').html($(this).data('email'));
            $('#phone').html($(this).data('username'));
            $('#affiliate_code').html($(this).data('affiliate_code'));
            $('#referral_code').html($(this).data('referral_code'));

        });</script>
@stop
