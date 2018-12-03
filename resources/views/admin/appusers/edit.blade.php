@extends('admin/layouts/default')

{{-- Web site Title --}}
@section('title')
@lang('blog/title.edit')
@parent
@stop

{{-- Content --}}
@section('content')
<section class="content-header">
    <h1>
        @lang('blog/title.edit')
    </h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('admin.dashboard') }}"> <i class="livicon" data-name="home" data-size="16" data-color="#000"></i>
                @lang('general.dashboard')
            </a>
        </li>
        <li>@lang('blog/title.blog')</li>
        <li class="active">@lang('blog/title.edit')</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary ">
                <div class="panel-heading">
                    <h4 class="panel-title"> <i class="livicon" data-name="wrench" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                        @lang('appusers/title.edit')
                    </h4>
                </div>
                <div class="panel-body">

                    {!! Form::model($appusers, ['url' => URL::to('admin/appusers') . '/' . $appusers->id, 'method' => 'put', 'class' => 'form-horizontal']) !!}
{{--                    {!! Form::model($appusers, ['route' => ['admin.appusers.update', $appusers->id], 'method' => 'PUT', 'class' => 'form-horizontal']) !!}--}}
                    {{--{!! Form::model($appusers, [route('admin.appusers.update', $appusers->id), 'class' => 'form-horizontal']) !!}--}}
                    {{--<div class="form-group {{ $errors->first('title', 'has-error') }}">--}}
                            {{--<label for="title" class="col-sm-2 control-label">--}}
                                {{--@lang('appusers/form.name')--}}
                            {{--</label>--}}
                            {{--<div class="col-sm-5">--}}
                                {{--{!! Form::text('title', null, array('class' => 'form-control', 'placeholder'=>trans('appusers/form.username'))) !!}--}}
                            {{--</div>--}}
                            {{--<div class="col-sm-4">--}}
                                {{--{!! $errors->first('title', '<span class="help-block">:message</span>') !!}--}}
                            {{--</div>--}}
                    {{--</div>--}}

                     <input id="id" type="hidden" name="id" value="{!! old('id', $appusers->id) !!}"/>
                    <div class="form-group {{ $errors->first('name', 'has-error') }}">
                        <label for="name" class="col-sm-2 control-label">Name *</label>
                        <div class="col-sm-10">
                            <input id="name" name="name" type="text"
                                   placeholder="First Name" class="form-control required"
                                   value="{!! old('name', $appusers->username) !!}"/>
                        </div>
                        {!! $errors->first('first_name', '<span class="help-block">:message</span>') !!}
                    </div>

                    <div class="form-group {{ $errors->first('email', 'has-error') }}">
                        <label for="email" class="col-sm-2 control-label">Email *</label>
                        <div class="col-sm-10">
                            <input id="email" name="email" placeholder="E-Mail" type="text"
                                   class="form-control required email"
                                   value="{!! old('email', $appusers->email) !!}"/>

                            {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                        </div>
                    </div>

                    <div class="form-group {{ $errors->first('phone_1', 'has-error') }}">
                        <label for="phone_1" class="col-sm-2 control-label">phone number *</label>
                        <div class="col-sm-10">
                            <input id="phone_1" name="phone_1" type="text" placeholder="phone number"
                                   class="form-control required"
                                   value="{!! old('phone_1', $appusers->phone_1) !!}"/>
                        </div>
                        {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                    </div>

                    <div class="form-group {{ $errors->first('affiliate_code', 'has-error') }}">
                        <label for="affiliate_code" class="col-sm-2 control-label">affiliate code </label>
                        <div class="col-sm-10">
                            <input id="affiliate_code" name="affiliate_code" type="text" placeholder="affiliate code"
                                   class="form-control "
                                   value="{!! old('affiliate_code', $appusers->affiliate_code) !!}"/>
                        </div>
                        {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                    </div>

                    <div class="form-group {{ $errors->first('custom', 'has-error') }}">
                        <label for="custom" class="col-sm-2 control-label">custom </label>
                        <div class="col-sm-10">
                            <input id="custom" name="custom" type="text" placeholder="custom"
                                   class="form-control "
                                   value="{!! old('custom', $appusers->custom) !!}"/>
                        </div>
                        {!! $errors->first('custom', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('referral_code', 'has-error') }}">
                        <label for="referral_code" class="col-sm-2 control-label">referral code </label>
                        <div class="col-sm-10">
                            <input id="referral_code" name="referral_code" type="text" placeholder="referral code"
                                   class="form-control "
                                   value="{!! old('referral_code', $appusers->referral_code) !!}"/>
                        </div>
                        {!! $errors->first('custom', '<span class="help-block">:message</span>') !!}
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <a class="btn btn-danger" href="{{ URL::to('admin/appusers') }}">
                                @lang('button.cancel')
                            </a>
                            <button type="submit" class="btn btn-success">
                                @lang('button.update')
                            </button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <!-- row-->
</section>

@stop
