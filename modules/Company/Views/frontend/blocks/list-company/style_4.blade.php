<section class="top-companies">
    <div class="auto-container">
        <div class="sec-title">
            <h2>{{ $title }}</h2>
            <div class="text">{{ $sub_title }}</div>
        </div>

        <form>
            <div class="input-with-icon companies-search-bar">
                <input class="with-border yellow-card" type="text" placeholder="Search..." name="keyword" value="" style="font-family: 'comfortaa !important; ">
                <i class="icon-feather-search"></i>
            </div>
        </form>

        <div class=" wow fadeInUp">
            <div class="companies-list" >
                @foreach($rows as $row)
                    @include('Company::frontend.blocks.list-company.companies',['btn_class' => 'btn-style-four'])
                @endforeach
            </div>
        </div>
    </div>
</section>
