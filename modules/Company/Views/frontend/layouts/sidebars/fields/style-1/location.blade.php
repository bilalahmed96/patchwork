<!-- Filter Block -->
@if($list_locations)
    <div class="filter-block">
        <h4>{{ $val['title'] }}</h4>
        <div class="form-group bc-select-has-delete">
            <select class="chosen-select" name="location_id">
                <option value="">{{ __("Choose a location") }}</option>
                @php
                    $location_id = request()->get('location');
                    $traverse = function ($locations, $prefix = '') use (&$traverse, $location_id) {
                        foreach ($locations as $location) {
                            $selected = '';
                            if ($location_id == $location->id)
                                $selected = 'selected';
                            $translate = $location->translateOrOrigin(app()->getLocale());
                            printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $translate->name);
                            $traverse($location->children, $prefix . '-');
                        }
                    };
                    $traverse($list_locations);
                @endphp
            </select>
            <span class="icon flaticon-map-locator"></span>
        </div>
    </div>
@endif
<!-- Filter Block -->
