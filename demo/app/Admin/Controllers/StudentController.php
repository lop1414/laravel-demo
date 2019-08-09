<?php

namespace App\Admin\Controllers;

use App\Model\Student;
use App\Model\Classroom;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class StudentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Model\Student';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Student);

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('classroom.name', '班级');
        $grid->column('info.age', '年龄');
        $grid->column('create_at', __('Create at'));
        $grid->column('update_at', __('Update at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Student::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->classroom('班级', function($classroom){
            $classroom->id();
            $classroom->name();
        });
        $show->info('信息', function($info){
            $info->age();
        });
        $show->courses('课程', function($course){
            $course->id();
            $course->name();
        });
        $show->field('create_at', __('Create at'));
        $show->field('update_at', __('Update at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Student);

        $form->text('name', __('Name'));
        $form->select('classroom_id', '班级')->options(function(){
            return Classroom::all()->pluck('name' , 'id')->toArray();
        });
        $form->text('info.age', '年龄');

        return $form;
    }
}
