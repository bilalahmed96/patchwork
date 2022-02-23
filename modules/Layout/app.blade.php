<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="{{$html_class ?? ''}}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @php event(new \Modules\Layout\Events\LayoutBeginHead()); @endphp
    @php
        $favicon = setting_item('site_favicon');
    @endphp
    @if($favicon)
        @php
            $file = (new \Modules\Media\Models\MediaFile())->findById($favicon);
        @endphp
        @if(!empty($file))
            <link rel="icon" type="{{$file['file_type']}}" href="{{asset('uploads/'.$file['file_path'])}}" />
        @else:
            <link rel="icon" type="image/png" href="{{url('images/favicon.png')}}" />
        @endif
    @endif

    @include('Layout::parts.seo-meta')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="{{ asset('libs/font-awesome/css/font-awesome.css') }}" rel="stylesheet">

    <!-- Stylesheets -->
    <link href="{{ asset('module/superio/css/font.css') }}" rel="stylesheet">
    <link href="{{ asset('module/superio/css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('module/superio/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('module/superio/css/responsive.css') }}" rel="stylesheet">
    <link href="{{ asset('dist/frontend/css/app.css?_ver='.config('app.asset_version')) }}" rel="stylesheet">
    
    {!! \App\Helpers\Assets::css() !!}
    {!! \App\Helpers\Assets::js() !!}
    <script>
        var base_url = "{{ url('/') }}";
        var superio = {
            url:'{{url( app_get_locale() )}}',
            url_root:'{{ url('') }}',
            booking_decimals:{{(int)get_current_currency('currency_no_decimal',2)}},
            thousand_separator:'{{get_current_currency('currency_thousand')}}',
            decimal_separator:'{{get_current_currency('currency_decimal')}}',
            currency_position:'{{get_current_currency('currency_format')}}',
            currency_symbol:'{{currency_symbol()}}',
			currency_rate:'{{get_current_currency('rate',1)}}',
            date_format:'{{get_moment_date_format()}}',
            map_provider:'{{setting_item('map_provider')}}',
            map_gmap_key:'{{setting_item('map_gmap_key')}}',
             media:{
                groups:{!! json_encode(config('bc.media.groups')) !!}
            },
            routes:{
                login:'{{route('auth.login')}}',
                register:'{{route('auth.register')}}',
                checkout:'{{is_api() ? route('api.booking.doCheckout') : route('booking.doCheckout')}}',
                applyJob: '{{ route('job.apply-job') }}'
            },
            module:{
                job:'',
            },
            currentUser: {{(int)Auth::id()}},
            isAdmin : {{is_admin() ? 1 : 0}},
            rtl: {{ setting_item_with_lang('enable_rtl') ? "1" : "0" }},
            markAsRead:'{{route('core.notification.markAsRead')}}',
            markAllAsRead:'{{route('core.notification.markAllAsRead')}}',
            loadNotify : '{{route('core.notification.loadNotify')}}',
            pusher_api_key : '{{setting_item("pusher_api_key")}}',
            pusher_cluster : '{{setting_item("pusher_cluster")}}',
        };
        var i18n = {
            warning:"{{__("Warning")}}",
            success:"{{__("Success")}}",
            applied:"{{ __("Applied") }}",
            chooseACv:"{{ __("Choose a cv") }}",
        };
        var daterangepickerLocale = {
            "applyLabel": "{{__('Apply')}}",
            "cancelLabel": "{{__('Cancel')}}",
            "fromLabel": "{{__('From')}}",
            "toLabel": "{{__('To')}}",
            "customRangeLabel": "{{__('Custom')}}",
            "weekLabel": "{{__('W')}}",
            "first_day_of_week": {{ setting_item("site_first_day_of_the_weekin_calendar","1") }},
            "daysOfWeek": [
                "{{__('Su')}}",
                "{{__('Mo')}}",
                "{{__('Tu')}}",
                "{{__('We')}}",
                "{{__('Th')}}",
                "{{__('Fr')}}",
                "{{__('Sa')}}"
            ],
            "monthNames": [
                "{{__('January')}}",
                "{{__('February')}}",
                "{{__('March')}}",
                "{{__('April')}}",
                "{{__('May')}}",
                "{{__('June')}}",
                "{{__('July')}}",
                "{{__('August')}}",
                "{{__('September')}}",
                "{{__('October')}}",
                "{{__('November')}}",
                "{{__('December')}}"
            ],
        };
    </script>
    <!-- Styles -->
    @yield('head')
    <style>
        :root{
            --main-color:{{setting_item('style_main_color','#1967D2')}}
        }
    </style>
    {{--Custom Style--}}
    <link href="{{ route('core.style.customCss') }}" rel="stylesheet">
    <link href="{{ asset('libs/carousel-2/owl.carousel.css') }}" rel="stylesheet">
    @if(setting_item_with_lang('enable_rtl'))
        <link href="{{ asset('dist/frontend/css/rtl.css') }}" rel="stylesheet">
    @endif
    {!! setting_item('head_scripts') !!}
    {!! setting_item_with_lang_raw('head_scripts') !!}

    @php event(new \Modules\Layout\Events\LayoutEndHead()); @endphp
    <link rel="stylesheet" href="{{ asset('css/patchwork.css')}}">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="{{ asset('libs/tinymce/js/tinymce/tinymce.min.js') }}" ></script>
</head>
<body data-anm=".anm" class="frontend-page {{$body_class ?? ''}} @if(!empty($is_home) or !empty($header_transparent)) header_transparent @endif @if(setting_item_with_lang('enable_rtl')) is-rtl @endif @if(is_api()) is_api @endif">
    @php event(new \Modules\Layout\Events\LayoutBeginBody()); @endphp

    {!! setting_item('body_scripts') !!}
    {!! setting_item_with_lang_raw('body_scripts') !!}
    <div class="bravo_wrap page-wrapper">
        @if(!is_api())
            @include('Layout::parts.header')
        @endif

        @yield('content')



 
       
    </div>
    </div>
     @include('Layout::parts.footer')
   
    {!! setting_item('footer_scripts') !!}
    {!! setting_item_with_lang_raw('footer_scripts') !!}
    @php event(new \Modules\Layout\Events\LayoutEndBody()); @endphp
  


<!--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>-->
<!--<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script src="{{ asset('dist/admin/js/app.js?_ver='.config('app.version')) }}" ></script>
<script src="{{ asset('libs/vue/vue'.(!env('APP_DEBUG') ? '.min':'').'.js') }}"></script>
<script src="{{ asset('/libs/pusher.min.js') }}"></script>
<script src="{{ asset('dist/admin/js/manifest.js?_ver='.config('app.version')) }}" ></script>
<script src="{{ asset('libs/bootbox/bootbox.min.js') }}"></script>
<script src="{{asset('libs/daterange/moment.min.js')}}"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="{{ asset('js/patchwork.js') }}"></script>
    <script>
        $(document).ready(function(){
            
            
            let color= localStorage.getItem('patchworkhub-color');
            let font = localStorage.getItem('font')
            let font_value = localStorage.getItem('font-value')
            
            
             setTimeout(function(){
                
                color= localStorage.getItem('patchworkhub-color');
                font = localStorage.getItem('font')
                font_value = localStorage.getItem('font-value')
                console.log(color)
                console.log(font)
                console.log(font_value)
                
                if(color === "yellow" ){
                    darktheme();
                }
                if(color === "blue"  ){
                    lighttheme();
                }
                if(color === "default"  ){
                    defaulttheme();
                }

                if(font == 'large' ){
                   // $('.accessibility-font').trigger('click');
                    $("body").css("zoom", font_value);
                }
            
        	$('.chosen-search-input').attr('readonly', false)
	
                  
            },500);
            
            
            $(document).on("click",".accessibility-font",function(){
                localStorage.setItem('font',  'large')
                localStorage.setItem('font-value', $(this).attr('data-accessibility-zoom'))
                $("body").css("zoom",$(this).attr('data-accessibility-zoom'));
            });
            
             $(document).on("click",".hak-default-theme",function(){
                localStorage.setItem('patchworkhub-color', "default");
            //   defaulttheme();
            
            location.reload(true)
               
            });
            
            $(document).on("click",".hak-dark-theme",function(){
                 
               
                localStorage.setItem('patchworkhub-color', "yellow");
                // darktheme();
                
                location.reload(true)
            });
            
            $(document).on("click",".hak-light-theme",function(){
                
            
                localStorage.setItem('patchworkhub-color', "blue");
                // lighttheme();
                location.reload(true)
            });
            
                    $(document).on('click', '.img-btn',function(){
            if(color === "yellow" ){
                     $(this).closest('div').find('.account-type-radio').attr('checked',true);
                    $(this).css({'box-shadow': '0px 10px 27px -21px #000',  'border-radius': '20px', 'border-right': '10px solid #FFFA1A ', 'border-bottom': '11px solid #FFFA1A '});
                    $('.img-btn').not(this).each(function(){ $(this).css({'box-shadow': 'none', 'border-radius': 'none', 'border-right': 'none ', 'border-bottom': 'none'}) });
                }
                
            else if(color === "blue"){
             $(this).closest('div').find('.account-type-radio').attr('checked',true);
                    $(this).css({'box-shadow': '0px 10px 27px -21px #000',  'border-radius': '20px', 'border-right': '10px solid #22b6cd ', 'border-bottom': '11px solid #22b6cd '});
                    $('.img-btn').not(this).each(function(){ $(this).css({'box-shadow': 'none', 'border-radius': 'none', 'border-right': 'none ', 'border-bottom': 'none'}) });
            }
            else{
                  $(this).closest('div').find('.account-type-radio').attr('checked',true);
                    $(this).css({'box-shadow': '0px 10px 27px -21px #000',  'border-radius': '20px', 'border-right': '10px solid #722963  ', 'border-bottom': '11px solid #722963  '});
                    $('.img-btn').not(this).each(function(){ $(this).css({'box-shadow': 'none', 'border-radius': 'none', 'border-right': 'none ', 'border-bottom': 'none'}) });
            }
            });
            
            
             $("#showMyBox").click(function(){
  $(".myBox").toggleClass("myBoxToggle");
});  
            scroll_top();
            $(window).on('scroll', function(){
               scroll_top()
            })
            
            $(document).on('click', '.dashboard-responsive-nav-trigger', function(e){
                console.log('nav')
                
                $(this).toggleClass("active");
                $('.dashboard-nav').toggleClass('active')
            })
         
        })
        function scroll_top() {
            var width = $(window).width();
            if(width > 996){
            var scrollTop = $(window).scrollTop();
                if(scrollTop > 60){
                    $('.main-header').attr('style', 'top: 0 !important');
                }
                else{
                    $('.main-header').attr('style', 'top: 60 !important');
                }
            }
        }
        
        function defaulttheme(){
            var base_url = "{{url('/')}}";
            element = '<link rel="stylesheet" href="'+base_url+'/public/css/patchwork.css">'
            $('head').append(element);
        }
        function darktheme(){
            var base_url = "{{url('/')}}";
            element = '<link rel="stylesheet" href="'+base_url+'/public/css/dark-patchwork.css">'
            $('head').append(element);
        }
        function lighttheme(){
             var base_url = "{{url('/')}}";
            element = '<link rel="stylesheet" href="'+base_url+'/public/css/light-patchwork.css">'
            $('head').append(element);
        }
        
        
    </script>
</body>
</html>
