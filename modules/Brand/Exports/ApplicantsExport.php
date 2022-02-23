<?php
namespace Modules\Brand\Exports;

use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithMapping;
use Modules\Brand\Models\Brand;
use Modules\User\Models\Subscriber;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BrandsExport implements FromCollection, WithHeadings, WithMapping
{
    use Exportable;

    public function collection()
    {
        $candidate_id = request()->query('candidate_id');
        $rows = Brand::get();
        return $rows;
    }

    /**
     * @var Subscriber $jobCandidate
     * @return array
     */
    public function map($brand): array
    {
        return [
            ltrim($brand->name ?? '',"=-"),
            ltrim($brand->content?? '' ,"=-"),
            ltrim($brand->image??'',"=-"),
          
        ];
    }

    public function headings(): array
    {
        return [
            'name',
            'content',
            'image',
          
        ];
    }
}
