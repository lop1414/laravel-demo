<?php

namespace App\Admin\Controllers;

use App\Model\Classroom;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Table;

class ClassroomController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Model\Classroom';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Classroom);

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'))->expand(function($model){
            //展开显示学生
            $students = $model->students->map(function($student){
                return [
                    $student->id,
                    $student->name,
                    $student->info->age,
                ];
            });
            return new Table(['学生ID', '名称', '年龄'], $students->toArray());
        });
        $grid->column('count', '人数')->display(function(){
            return $this->students()->count();
        });
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
        $show = new Show(Classroom::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->students('学生', function($student){
            $student->id();
            $student->name();
            $student->info('信息')->age('年龄');
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
        $form = new Form(new Classroom);

        $form->text('name', __('Name'));

        return $form;
    }
}
