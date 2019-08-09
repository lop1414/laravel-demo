CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `name` varchar(255) NOT NULL COMMENT '学生名称',
  `classroom_id` int(11) NOT NULL DEFAULT '0' COMMENT '班级id',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='学生表';


CREATE TABLE `student_info` (
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';


CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `name` varchar(255) NOT NULL COMMENT '班级名称',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='班级表';


CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `name` varchar(255) NOT NULL COMMENT '课程名称',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';


CREATE TABLE `student_course` (
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生选课表';



-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', '一班', '0', '0');
INSERT INTO `classroom` VALUES ('2', '二班', '0', '0');
INSERT INTO `classroom` VALUES ('3', '三班', '0', '0');

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '0', '0');
INSERT INTO `course` VALUES ('2', '数学', '0', '0');
INSERT INTO `course` VALUES ('3', '英语', '0', '0');

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '1', '0', '0');
INSERT INTO `student` VALUES ('2', '李四', '2', '0', '0');
INSERT INTO `student` VALUES ('3', '王五', '1', '0', '0');
INSERT INTO `student` VALUES ('4', '赵六', '2', '0', '0');

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '2');
INSERT INTO `student_course` VALUES ('1', '3');
INSERT INTO `student_course` VALUES ('2', '1');
INSERT INTO `student_course` VALUES ('2', '3');
INSERT INTO `student_course` VALUES ('3', '3');

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '18', '0', '0');
INSERT INTO `student_info` VALUES ('2', '19', '0', '0');
INSERT INTO `student_info` VALUES ('3', '18', '0', '0');
INSERT INTO `student_info` VALUES ('4', '20', '0', '0');