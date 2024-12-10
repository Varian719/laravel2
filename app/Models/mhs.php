<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class mhs extends Model
{
    use HasFactory;
    protected $table = 'mhs';
    protected $fillable =['nama','nim','kelas','prodi','fotomhs'];
}
