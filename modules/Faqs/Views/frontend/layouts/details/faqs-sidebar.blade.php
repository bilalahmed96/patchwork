<aside class="sidebar blog-sidebar">
    @php
        $list_sidebars = setting_item_with_lang("faqs_sidebar");
    @endphp
    @if($list_sidebars)
        @php
            $list_sidebars = json_decode($list_sidebars);
        @endphp
        @foreach($list_sidebars as $item)
            @include('Faqs::frontend.layouts.sidebars.'.$item->type)
        @endforeach
    @endif
</aside>
