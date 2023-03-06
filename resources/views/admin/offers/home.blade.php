@extends('layout.adminLayout')
@section('title') {{ucwords(__('cp.offers'))}}
@endsection
@section('css')

    <style>

        a:link {
            text-decoration: none;
        }
    </style>

@endsection
@section('content')



    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Subheader-->
        <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
            <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                <!--begin::Info-->
                <div class="d-flex align-items-center flex-wrap mr-1">
                    <div class="d-flex align-items-baseline mr-5">
                        <h3>{{ucwords(__('cp.offers'))}}</h3>
                    </div>
                </div>
                <!--end::Info-->
                <!--begin::Toolbar-->


                <div>
                    <div class="btn-group mb-2 m-md-3 mt-md-0 ml-2 ">
                        <a  class="btn btn-secondary btn_export" href="{{url('admin/export/excel/product_offers')}}">
                            <i class="icon-xl la la-file-excel"></i>
                            <span>{{__('cp.excel')}}</span>
                        </a>
                        <button type="button" class="btn btn-secondary" href="#activation" role="button"
                                data-toggle="modal">
                            <i class="icon-xl la la-check"></i>
                            <span>{{__('cp.activation')}}</span>
                        </button>
                        <button type="button" class="btn btn-secondary" href="#deleteAll" role="button" data-toggle="modal">
                            <i class="flaticon-delete"></i>
                            <span>{{__('cp.delete')}}</span>
                        </button>

                        <button type="button" class="btn btn-secondary" href="#cancel_activation" role="button"
                                data-toggle="modal">
                            <i class="icon-xl la la-ban"></i>
                            <span>{{__('cp.cancel_activation')}}</span>
                        </button>

                    </div>
                    <a href="{{url(getLocal().'/admin/product_offers/create')}}" class="btn btn-secondary  mr-2 btn-success">
                        <i class="icon-xl la la-plus"></i>
                        <span>{{__('cp.add')}}</span>
                    </a>
                </div>
                <!--end::Toolbar-->
            </div>
        </div>
        <!--end::Subheader-->


        <!--begin::Entry-->
        <div class="d-flex flex-column-fluid">
            <!--begin::Container-->
            <div class="container">
                <!--begin::Card-->
                <div class="gutter-b example example-compact">

                    <div class="contentTabel">
                        <button type="button" class="btn btn-secondar btn--filter mr-2"><i
                                class="icon-xl la la-sliders-h"></i>{{__('cp.filter')}}</button>
                        <div class="container box-filter-collapse">
                            <div class="card">
                                <form class="form-horizontal" method="get" action="{{url(getLocal().'/admin/offers')}}">
                                    <div class="row">

                                        

                                        {{-- <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{__('cp.category')}}</label>
                                                <select class="form-control  "
                                                        name="category_id">
                                                    <option value=""> @lang('cp.all') </option>
                                                    @foreach($categories as $one)
                                                        <option
                                                            value="{{$one->id}}" {{request()->category_id == $one->id ?'selected' : ''}}> {{$one->name}} </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div> --}}

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{__('cp.sort_by')}}</label>
                                                <select class="form-control  "
                                                        name="sort_by">
                                                    <option value=""> @lang('cp.newest') </option>
                                                    <option
                                                        value="1" {{request('sort_by')=='1' ? 'selected' :''}}> @lang('cp.a_z') </option>
                                                    <option
                                                        value="2" {{request('sort_by')=='2' ? 'selected' :''}}> @lang('cp.z_a') </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">{{__('cp.title')}}</label>
                                                <input type="text" value="{{request('title')?request('title'):''}}"
                                                       class="form-control  " name="title"
                                                       placeholder="{{__('cp.title')}}">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">ID</label>
                                                <input type="number" value="{{request('id')?request('id'):''}}"
                                                       class="form-control  " name="id"
                                                       placeholder="ID">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">{{__('cp.status')}}</label>
                                                <select id="multiple2" class="form-control  "
                                                        name="status">
                                                    <option value="">{{__('cp.all')}}</option>
                                                    <option
                                                        value="active" {{request('status') == 'active'?'selected':''}}>
                                                        {{__('cp.active')}}
                                                    </option>
                                                    <option
                                                        value="not_active" {{request('status') == 'not_active'?'selected':''}}>
                                                        {{__('cp.not_active')}}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label
                                                    class="col-6 col-form-label">{{__('cp.un_assigned')}}</label>
                                                <div class="col-3">
                                                    <span class="switch">
                                                        <label>
                                                            <input type="checkbox"
                                                                   {{request('un_assigned') == 'on' ? "checked" : ""}}  name="un_assigned"/>
                                                            <span></span>
                                                        </label>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <button type="submit"
                                                    class="btn sbold btn-default btnSearch">{{__('cp.search')}}
                                                <i class="fa fa-search"></i>
                                            </button>

                                            <a href="{{url(app()->getLocale().'/admin/offers')}}" type="submit"
                                               class="btn sbold btn-default btnRest">{{__('cp.reset')}}
                                                <i class="fa fa-refresh"></i>
                                            </a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div
                            class="card-header d-flex flex-column flex-sm-row align-items-sm-start justify-content-sm-between">
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover tableWithSearch" id="tableWithSearch">
                                <thead>
                                <tr>
                                    <th class="wd-1p no-sort">
                                        <div class="checkbox-inline">
                                            <label class="checkbox">
                                                <input type="checkbox" name="checkAll"/>
                                                <span></span></label>
                                        </div>
                                    </th>
                                    <th class="wd-5p">ID</th>
                                    <th class="wd-5p"> {{ucwords(__('cp.product'))}}</th>
                                    <th class="wd-5p"> {{ucwords(__('cp.discount'))}}</th>
                                    <th class="wd-10p"> {{ucwords(__('cp.start_date'))}}</th>
                                    <th class="wd-10p"> {{ucwords(__('cp.end_date'))}}</th>
                                    <th class="wd-15p"> {{ucwords(__('cp.action'))}}</th>
                                </tr>
                                </thead>
                                <tbody>
                                @forelse($product_offers as $one)
                                    <tr class="odd gradeX" id="tr-{{$one->id}}">
                                        <td class="v-align-middle wd-5p">

                                            @if($one->product_id != '0')
                                            <div class="checkbox-inline">
                                                <label class="checkbox">
                                                    <input type="checkbox" value="{{$one->id}}" class="checkboxes"
                                                           name="chkBox"/>
                                                    <span></span></label>
                                            </div>
                                            @endif
                                        </td>
                                        <td class="v-align-middle wd-5p">{{$one->id}}</td>


                                        <td class="v-align-middle wd-25p">{{@$one->product? @$one->product->name : __('cp.un_assigned')}}</td>
                                        <td class="v-align-middle wd-25p">{{@$one->discount}}</td>
                                       

                                        <td class="v-align-middle wd-10p">{{$one->start_date}}</td>
                                        <td class="v-align-middle wd-10p">{{$one->end_date}}</td>

                                        <td class="v-align-middle wd-15p optionAddHours">
                                            <a href="{{url(getLocal().'/admin/product_offers/'.$one->id.'/edit')}}"
                                               class="btn btn-sm btn-clean btn-icon" title="{{__('cp.edit')}}">
                                                <i class="la la-edit"></i>
                                            </a>

                                            <a href="{{url(getLocal().'/admin/product_offers/'.$one->id.'/options')}}"
                                               class="btn btn-sm btn-clean btn-icon" title="{{__('cp.options')}}">
                                                <i class="la la-info-circle"></i>
                                            </a>

                                            <a href="#myOfferModal{{$one->id}}" role="button"  title="{{__('cp.clear_offer_price')}}" data-toggle="modal" class="btn btn-sm btn-clean btn-icon"><i class="la la-dollar"></i></a>
                                            <a href="#myModal{{$one->id}}" role="button" title="{{__('cp.delete')}}" data-toggle="modal" class="btn btn-sm btn-clean btn-icon"><i class="la la-trash"></i></a>


                                        </td>
                                        <div id="myModal{{$one->id}}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                        <h4 class="modal-title">{{__('cp.delete')}}</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>{{__('cp.confirmDeleteAll')}} </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn default" data-dismiss="modal" aria-hidden="true">{{__('cp.cancel')}}</button>
                                                        <a onclick="delete_adv('{{$one->id}}','{{$one->id}}',event)"><button class="btn btn-danger">{{__('cp.delete')}}</button></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="myOfferModal{{$one->id}}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                        <h4 class="modal-title">{{__('cp.price_offer')}}</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>{{__('cp.clear_offer_price')}} </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn default" data-dismiss="modal" aria-hidden="true">{{__('cp.cancel')}}</button>
                                                        <a onclick="deleteOffer('{{$one->id}}','{{$one->id}}',event)"><button class="btn btn-danger">{{__('cp.delete')}}</button></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </tr>
                                @empty

                                @endforelse


                                </tbody>
                            </table>
                            {{-- {{$offers->appends($_GET)->links("pagination::bootstrap-4") }} --}}
                        </div>
                    </div>
                </div>
                <!--end::Card-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Entry-->
    </div>

@endsection
@section('js')

@endsection

@section('script')
    <script>
        function delete_adv(id, iss_id, e) {
            //alert(id);
            e.preventDefault();

            var url = '{{url(getLocal()."/admin/product_offers")}}/' + id;
            var csrf_token = '{{csrf_token()}}';
            $.ajax({
                type: 'delete',
                headers: {'X-CSRF-TOKEN': csrf_token},
                url: url,
                data: {_method: 'delete'},
                success: function (response) {
                    console.log(response);
                    if (response.trim() === 'success') {
                        $('#tr-' + id).hide(500);
                        $('#myModal' + id).modal('toggle');

                    } else {
                        swal('Error', {icon: "error"});
                    }
                },
                error: function (e) {

                }
            });

        }

        function deleteOffer(id, iss_id, e) {
            //alert(id);
            e.preventDefault();

            var url = '{{url(getLocal()."/admin/product_offers")}}/' + id+'/delete';
            var csrf_token = '{{csrf_token()}}';
            $.ajax({
                type: 'delete',
                headers: {'X-CSRF-TOKEN': csrf_token},
                url: url,
                data: {_method: 'delete'},
                success: function (response) {
                    console.log(response);
                    if (response.trim() === 'success') {
                        $('#myOfferModal' + id).modal('toggle');
                        swal('@lang('cp.success')', {icon: "success"});
                    } else {
                        swal('@lang('cp.whoops')', {icon: "error"});
                    }
                },
                error: function (e) {

                }
            });

        }

    </script>
@endsection