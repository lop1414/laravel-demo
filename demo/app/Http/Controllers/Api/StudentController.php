<?php
namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Student;
use App\Model\StudentInfo;
use Validator;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 500;

    /**
     * 列表
     * @return \Illuminate\Http\JsonResponse
     */
    public function select(Request $request)
    {
        $search = $request->input('search', []);
        $map = [];
        foreach($search as $k => $v){
            $map[] = [$k, '=', $v];
        }

        $students = Student::where($map)->get();
        return response()->json(['success' => $students], $this->successStatus);
    }

    public function read($id){
        $student = Student::find($id);
        return response()->json(['success' => $student], $this->successStatus);
    }

    public function create(Request $request){
        $request->validate([
            'name' => 'required|max:255|min:2',
            'age' => 'integer',
        ]);

        DB::beginTransaction();

        $student = new Student;
        $student->name = $request->input('name');
        $ret = $student->save();

        if($ret){
            $studentInfo = new StudentInfo;
            $studentInfo->age = $request->input('age', 0);
            $rett = $student->info()->save($studentInfo);

            if($rett){
                DB::commit();
                return response()->json(['success' => $student], $this->successStatus);
            }else{
                DB::rollBack();
                return response()->json(['error' => 'fail'], $this->errorStatus);
            }
        }else{
            DB::rollBack();
            return response()->json(['error' => 'fail'], $this->errorStatus);
        }
    }

    public function update(Request $request, $id){
        $request->validate([
            'name' => 'max:255|min:2',
            'age' => 'integer',
        ]);

        $student = Student::find($id);

        if(!$student){
            return response()->json(['error' => 'not found student'], $this->errorStatus);
        }

        DB::beginTransaction();

        $student->name = $request->input('name');
        $ret = $student->save();

        if($ret){
            $studentInfo = StudentInfo::find($id);
            $studentInfo->age = $request->input('age', 0);
            $rett = $studentInfo->save();

            if($rett){
                DB::commit();
                return response()->json(['success' => $student], $this->successStatus);
            }else{
                DB::rollBack();
                return response()->json(['error' => 'fail'], $this->errorStatus);
            }
        }else{
            DB::rollBack();
            return response()->json(['error' => 'fail'], $this->errorStatus);
        }
    }

    public function delete($id){
        $student = Student::find($id);

        if(!$student){
            return response()->json(['error' => 'not found student'], $this->errorStatus);
        }

        DB::beginTransaction();

        $ret = $student->delete();

        if($ret){
            $studentInfo = StudentInfo::find($id);
            $rett = $studentInfo->delete();
            if($rett){
                DB::commit();
                return response()->json(['success' => 'delete success'], $this->errorStatus);
            }else{
                DB::rollBack();
                return response()->json(['error' => 'fail'], $this->errorStatus);
            }
        }else{
            DB::rollBack();
            return response()->json(['error' => 'fail'], $this->errorStatus);
        }
    }

    public function course($id){
        $student = Student::find($id);

        if(!$student){
            return response()->json(['error' => 'not found student'], $this->errorStatus);
        }

        return response()->json(['success' => $student->courses], $this->successStatus);
    }

    public function course_sync(Request $request, $id){
        $request->validate([
            'course' => 'required|array',
        ]);
        $student = Student::find($id);

        if(!$student){
            return response()->json(['error' => 'not found student'], $this->errorStatus);
        }
        $ret = $student->courses()->sync($request->input('course'));
        return response()->json(['success' => $student->courses], $this->successStatus);
    }
}