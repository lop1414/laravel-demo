<?php
namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Student;
use Illuminate\Support\Facades\Auth;
use Validator;

class StudentController extends Controller
{
    public $successStatus = 200;

    /**
    * details api
    *
    * @return \Illuminate\Http\Response
    */
    public function select()
    {
        $students = Student::all();
        return response()->json(['success' => $students], $this->successStatus);
    }
}