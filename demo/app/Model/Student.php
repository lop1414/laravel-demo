<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    /**
     * 关联到模型的数据表
     *
     * @var string
     */
    protected $table = 'student';

    /**
     * 关联到模型数据表的主键
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * 表明模型是否应该被打上时间戳
     * @var bool
     */
    public $timestamps = true;

    /**
     * 模型日期列的存储格式
     *
     * @var string
     */
    protected $dateFormat = 'U';

    /**
     * 数据库创建字段默认create_at
     * 数据库更新字段默认update_at
     */
    const CREATED_AT = 'create_at';
    const UPDATED_AT = 'update_at';


    /**
     * 关联学生信息模型 一对一
     */
    public function info()
    {
        return $this->hasOne('App\Model\StudentInfo', 'student_id', 'id');
    }

    /**
     * 关联班级模型 多对一
     */
    public function classroom()
    {
        return $this->belongsTo('App\Model\Classroom', 'classroom_id', 'id');
    }

    /**
     * 关联课程模型 多对多
     */
    public function courses()
    {
        return $this->belongsToMany('App\Model\Course', 'student_course');
    }
}
