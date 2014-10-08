-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 08-10-2014 a las 01:45:29
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `assignment1`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comment`
-- 

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `anchor_id` int(11) NOT NULL,
  `comment_type` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=357 ;

-- 
-- Volcar la base de datos para la tabla `comment`
-- 

INSERT INTO `comment` VALUES (1, 9, 1, 2, 'Look, if you had one shot, or one opportunity, To seize everything you ever wanted. one moment, Would you capture it or just let it slip? Yo', '2014-05-01 00:00:00');
INSERT INTO `comment` VALUES (2, 1, 1, 2, 'You better lose yourself in the music, the moment <br> You own it, you better never let it go <br> You only get one shot, do not miss your chance to blow <br>This opportunity comes once in a lifetime yo', '2014-05-01 01:10:50');
INSERT INTO `comment` VALUES (356, 8, 10, 1, 'Cmon people! What do you guys think!', '2014-10-07 21:26:02');
INSERT INTO `comment` VALUES (355, 10, 4, 2, 'its the same shit ', '2014-10-07 16:58:44');
INSERT INTO `comment` VALUES (354, 1, 4, 2, '8-) done', '2014-10-07 16:07:36');
INSERT INTO `comment` VALUES (353, 1, 4, 2, ':0 yup, let me fix it :)', '2014-10-07 16:05:59');
INSERT INTO `comment` VALUES (352, 1, 4, 2, 'this is inverted isnt it?', '2014-10-07 16:05:41');
INSERT INTO `comment` VALUES (351, 21, 11, 1, 'Awesome! I wanna teach that course!', '2014-10-07 15:07:05');
INSERT INTO `comment` VALUES (350, 8, 8, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2014-10-07 14:59:44');
INSERT INTO `comment` VALUES (349, 11, 8, 1, 'hey', '2014-10-07 14:52:45');
INSERT INTO `comment` VALUES (347, 11, 8, 1, 'asdf', '2014-10-07 14:50:20');
INSERT INTO `comment` VALUES (348, 11, 1, 2, 'hey whatup!', '2014-10-07 14:52:19');
INSERT INTO `comment` VALUES (346, 11, 7, 1, 'what? hahah sarah you just went berserk!!', '2014-10-07 14:50:15');
INSERT INTO `comment` VALUES (340, 7, 8, 2, 'Where r u!?', '2014-10-07 13:09:40');
INSERT INTO `comment` VALUES (339, 6, 7, 2, 'Watching your vicious bastard die gave me more relief that a thousand lying whores  ( quote from game of thrones )', '2014-10-07 13:07:21');
INSERT INTO `comment` VALUES (344, 8, 14, 2, 'You\\''re just a test user', '2014-10-07 14:41:56');
INSERT INTO `comment` VALUES (342, 2, 7, 1, 'asdasdasdasdasdasdasd', '2014-02-03 12:23:11');
INSERT INTO `comment` VALUES (343, 8, 2, 2, 'Badass pic!!', '2014-10-07 14:41:16');
INSERT INTO `comment` VALUES (331, 10, 3, 2, 'who are you?', '2014-10-07 12:56:34');
INSERT INTO `comment` VALUES (330, 10, 4, 2, 'whazaaaaaaaaaaaap', '2014-10-07 12:55:46');
INSERT INTO `comment` VALUES (329, 10, 4, 2, 'zuckerberg! dude!', '2014-10-07 12:55:05');
INSERT INTO `comment` VALUES (328, 10, 4, 2, 'hey mark!', '2014-10-07 12:54:14');
INSERT INTO `comment` VALUES (341, 4, 8, 1, 'I like this! seems very interesting!!', '2014-01-05 10:00:00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comment_types`
-- 

CREATE TABLE `comment_types` (
  `type` tinyint(4) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `comment_types`
-- 

INSERT INTO `comment_types` VALUES (1, 'submission comment');
INSERT INTO `comment_types` VALUES (2, 'userprofile comment');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `flow`
-- 

CREATE TABLE `flow` (
  `flow_id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY  (`flow_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `flow`
-- 

INSERT INTO `flow` VALUES (1, 1, '7');
INSERT INTO `flow` VALUES (2, 2, '7');
INSERT INTO `flow` VALUES (3, 1, '5');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `flow_step`
-- 

CREATE TABLE `flow_step` (
  `flow_step_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) default NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`flow_step_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `flow_step`
-- 

INSERT INTO `flow_step` VALUES (1, 'Faculty of Arts Chair', 'It needs to be approved by the Faculty of Arts Chair', 1);
INSERT INTO `flow_step` VALUES (2, 'Curriculum Comitee', 'It needs to be approved by the Curriculum Comitee', 3);
INSERT INTO `flow_step` VALUES (3, 'Office of the Registar', 'It needs to be approved by the Registar', 4);
INSERT INTO `flow_step` VALUES (4, 'Faculty of Science Chair', 'It needs to be approved by the Faculty of Science Chair', 2);
INSERT INTO `flow_step` VALUES (8, 'GFC', 'For information only', 7);
INSERT INTO `flow_step` VALUES (7, 'APPC', 'For information only', 6);
INSERT INTO `flow_step` VALUES (6, 'Faculty Council', 'It needs to be approved by the Faculty Council', 5);
INSERT INTO `flow_step` VALUES (5, 'Advisory Comitee', 'When appropiate makes recommendations', 9);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `flow_step_seq`
-- 

CREATE TABLE `flow_step_seq` (
  `flow_id` int(11) NOT NULL,
  `step_id` varchar(45) NOT NULL,
  `sequence` varchar(45) NOT NULL,
  PRIMARY KEY  (`flow_id`,`step_id`,`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `flow_step_seq`
-- 

INSERT INTO `flow_step_seq` VALUES (1, '1', '1');
INSERT INTO `flow_step_seq` VALUES (1, '2', '2');
INSERT INTO `flow_step_seq` VALUES (1, '3', '3');
INSERT INTO `flow_step_seq` VALUES (2, '2', '2');
INSERT INTO `flow_step_seq` VALUES (2, '3', '3');
INSERT INTO `flow_step_seq` VALUES (2, '4', '1');
INSERT INTO `flow_step_seq` VALUES (3, '2', '2');
INSERT INTO `flow_step_seq` VALUES (3, '3', '3');
INSERT INTO `flow_step_seq` VALUES (3, '5', '1');
INSERT INTO `flow_step_seq` VALUES (3, '6', '4');
INSERT INTO `flow_step_seq` VALUES (3, '7', '5');
INSERT INTO `flow_step_seq` VALUES (3, '8', '6');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `group`
-- 

CREATE TABLE `group` (
  `group_id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `description` text,
  `chair` int(11) default NULL,
  `chair_since` date NOT NULL,
  `democratic` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `group`
-- 

INSERT INTO `group` VALUES (1, 'Faculty of Arts', 'By the Arts and Humanities we mean human culture and history. Studying the Arts and Humanities means coming to understand aspects of human culture both in the past and the present. In our modules you will explore people’s ideas and beliefs, their cultural practices and the objects they have made. Human culture not only includes works created in such fields as painting, sculpture, music, and literature, but also ideas about human existence, the world’s religions, science, technology and medicine. Studying culture means looking at peoples ideas, practices and products and trying to understand what all these activities might have meant to them and what they mean to us now.', 4, '2014-02-02', 0);
INSERT INTO `group` VALUES (2, 'Faculty of Science', 'The Faculty of Sciences seeks to educate and foster future leaders of scientific endeavour and to actively partner the development of innovative industries', 3, '2014-02-02', 0);
INSERT INTO `group` VALUES (3, 'Curriculum Committee', 'The Curriculum Committee, a standing subcommittee of the Faculty Senate, reviews and makes recommendations on proposals for adding, expanding, deleting, or modifying programs and courses offered by the College. Curriculum Committee membership consists of at least one faculty member from each Academic Division; 2 student members; the Vice President, Academic Affairs; Vice President, Student Services; Division Deans; Director of Curriculum and Scheduling and the Articulation Officer.  All faculty members serving on the Curriculum Committee are voting members.', 5, '2014-02-02', 1);
INSERT INTO `group` VALUES (4, 'Office of the Registrar', 'Office of the Registrar supports every registered student, as well as all the faculty and staff who interact with them. ', 6, '2014-02-02', 1);
INSERT INTO `group` VALUES (5, 'Faculty Council', 'The University Faculty Council consists of an elected body of members responsible for exercising faculty authority for the MRU University System', 1, '2014-02-02', 1);
INSERT INTO `group` VALUES (6, 'APPC', 'ACADEMIC PLANNING AND PRIORITIES COMMITTEE', 2, '2014-02-02', 1);
INSERT INTO `group` VALUES (7, 'GFC', 'General Faculties Council should be an effective voice of the academic community, approving academic policy and priorities, and offering its advice to other decision-makers on issues touching upon the academic work of the University.', 7, '2014-02-02', 1);
INSERT INTO `group` VALUES (8, 'Faculty of Medicine', ' Faculty of Medicine educates health professional and life sciences students at the undergraduate, graduate and postgraduate levels, and pursues research – in the laboratory, in clinical settings and at the population and public policy level – to improve the health of people worldwide.', 18, '2014-04-04', 0);
INSERT INTO `group` VALUES (9, 'Advisory Comitee', 'Provides Advice..', NULL, '0000-00-00', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `group_users`
-- 

CREATE TABLE `group_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `since` date NOT NULL,
  PRIMARY KEY  (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `group_users`
-- 

INSERT INTO `group_users` VALUES (1, 8, '2014-01-10');
INSERT INTO `group_users` VALUES (1, 9, '2014-01-10');
INSERT INTO `group_users` VALUES (1, 10, '2014-01-10');
INSERT INTO `group_users` VALUES (3, 11, '2014-01-10');
INSERT INTO `group_users` VALUES (3, 12, '2014-01-10');
INSERT INTO `group_users` VALUES (3, 13, '2014-01-10');
INSERT INTO `group_users` VALUES (4, 14, '2014-01-10');
INSERT INTO `group_users` VALUES (4, 15, '2014-01-10');
INSERT INTO `group_users` VALUES (5, 16, '2014-01-10');
INSERT INTO `group_users` VALUES (5, 17, '2014-01-10');
INSERT INTO `group_users` VALUES (6, 3, '2014-01-10');
INSERT INTO `group_users` VALUES (6, 6, '2014-01-10');
INSERT INTO `group_users` VALUES (7, 2, '2014-01-10');
INSERT INTO `group_users` VALUES (7, 8, '2014-01-10');
INSERT INTO `group_users` VALUES (8, 19, '2014-01-20');
INSERT INTO `group_users` VALUES (8, 20, '2014-01-20');
INSERT INTO `group_users` VALUES (2, 21, '2014-05-05');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `submission`
-- 

CREATE TABLE `submission` (
  `submission_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `document` longtext,
  `group_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL default '0',
  `step` int(11) NOT NULL default '0',
  PRIMARY KEY  (`submission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `submission`
-- 

INSERT INTO `submission` VALUES (7, 7, 'Poison 101', 'Behahsjcjfksoks', 'Hsbs', 7, 1, '2014-10-07 13:11:05', 1, 0);
INSERT INTO `submission` VALUES (8, 6, 'Moonshine 101', 'its not suitable for a university', 'adasd', 4, 4, '2014-10-07 13:32:59', 1, 0);
INSERT INTO `submission` VALUES (9, 1, 'Change of Editorial Change test1', 'This is a test for checking out if the Curriculum Submission System works allright. So.. yeah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 7, '2014-10-07 14:58:21', 1, 0);
INSERT INTO `submission` VALUES (10, 8, 'Its called Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 5, '2014-10-07 14:59:22', 1, 0);
INSERT INTO `submission` VALUES (11, 10, 'Defence Against the Dark Arts', 'Defence Against the Dark Arts (sometimes written as DADA) is a core class and subject taught at Hogwarts School of Witchcraft and Wizardry, in which students learn how to magically defend themselves against Dark Creatures, Dark Arts, and other dark charms. Offensive magic is also taught in this class, such as how to duel, which requires the use of both offensive and defensive magic', 'Defence Against the Dark Arts is a required subject from first year to fifth year. The curriculum of the class varies greatly depending on what the professor at the time deems appropriate; due to the jinx on the teaching post that was present prior to the death of Lord Voldemort, a great many teachers have been appointed.\r\n\r\nThe lessons generally have a practical approach to them, with many of the teachers (with the exception of Dolores Umbridge) believing that when it comes to the Dark Arts a practical approach is the best way. With theoretical aissignments given as homework.\r\n\r\nIn the fifth year Ordinary Wizarding Level examinations are taken; as such students are spent learning new topics and possibly revisiting the past four years of lessons (depending on the teacher). As part of their Defence Against the Dark Arts O.W.L., students must sit a written exam one of the questions asks to describe the five signs of a werewolf and after sudents must complete a practical exam of; counter-jinxes, defensive spells, Riddikulus, and the Patronus Charm (for bonus points).[1]\r\n\r\nTo advance to the N.E.W.T. class a student must first achieve a high O.W.L. score of either \\''Outstanding\\'' or \\''Exceeds Expectations\\''; most teachers set the bar at \\''Exceeds Expectations\\''.', 2, 5, '2014-10-07 15:01:11', 1, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `type`
-- 

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type_name` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `type`
-- 

INSERT INTO `type` VALUES (1, 'New Program', 'proposes the creation of a new program');
INSERT INTO `type` VALUES (2, 'Minor Program Change', 'implies the change of some minor program settings');
INSERT INTO `type` VALUES (3, 'Major Program Change', 'denotes a big change in a program');
INSERT INTO `type` VALUES (4, 'Program Deletion', 'proposes the deletion of a existing program');
INSERT INTO `type` VALUES (5, 'New Course', 'proposes the creation of a new course');
INSERT INTO `type` VALUES (6, 'Course Change', 'describes a change in a exisiting course');
INSERT INTO `type` VALUES (7, 'Editorial Calendar Change', 'a request to add, omit or amend text within the academic calendar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `users`
-- 

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `profilepic` varchar(45) default 'null.jpg',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Volcar la base de datos para la tabla `users`
-- 

INSERT INTO `users` VALUES (1, 'eagui939', 'ef516e0accc8fb34f78e88fda58cb054', 'Eduardo', 'Aguilar', 'eagui939@mtroyal.ca', 'edag.png');
INSERT INTO `users` VALUES (2, 'sarah333', '538dc11b4b5074fead28d199123bc37c', 'Sarah', 'Connor', 'sarah333@gmail.com', 'sarah.jpg');
INSERT INTO `users` VALUES (3, 'smith1', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'John', 'Smith', 'smith1@mtroyal.ca', 'null.jpg');
INSERT INTO `users` VALUES (4, 'smith2', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Daniel', 'Smith', 'smith2@mtroyal.ca', 'zuckerberg.jpg');
INSERT INTO `users` VALUES (5, 'fenix123', '56f3f885234d52d7bd89394d19228991', 'Marcus', 'Fenix', 'fenix@gmail.ca', 'fenix.jpg');
INSERT INTO `users` VALUES (6, 'tyrion123', '6b42d00c4ca6ddc33a604c54b8ce4adc', 'Tyrion', 'Lannister', 'lannister@gmail.ca', 'tyrion.jpg');
INSERT INTO `users` VALUES (7, 'cersei123', '6b42d00c4ca6ddc33a604c54b8ce4adc', 'Cersei', 'Lannister', 'cersei@gmail.ca', 'cersei.jpg');
INSERT INTO `users` VALUES (8, 'arya123', 'bf4397d8b4dc061e1b6d191a352e9134', 'Arya', 'Stark', 'stark@gmail.ca', 'arya.jpg');
INSERT INTO `users` VALUES (9, 'eminem123', 'ef3758d0804d0b29338a6b163858cb7b', 'Marshal', 'Mathers', 'eminem@mtroyal.ca', 'eminem.jpg');
INSERT INTO `users` VALUES (10, 'potter123', '58651340138deddda3360f7ce8f06844', 'Harry', 'Potter', 'hp@gmail.ca', 'harry.jpg');
INSERT INTO `users` VALUES (11, 'lucious123', 'a82fd95db10ff25dfad39f07372ebe37', 'Lucious', 'Malfoy', 'malfoy@mtroyal.ca', 'lucious.jpg');
INSERT INTO `users` VALUES (12, 'testuser1', '098f6bcd4621d373cade4e832627b4f6', 'TestUser', 'One', 'test1@gmail.ca', 'rider.jpg');
INSERT INTO `users` VALUES (13, 'testuser2', '098f6bcd4621d373cade4e832627b4f6', 'TestUser', 'Two', 'test2@gmail.ca', 'goofy.jpg');
INSERT INTO `users` VALUES (14, 'testuser3', '098f6bcd4621d373cade4e832627b4f6', 'TestUser', 'Three', 'test3@gmail.ca', 'null.jpg');
INSERT INTO `users` VALUES (15, 'testuser4', '098f6bcd4621d373cade4e832627b4f6', 'TestUser', 'Four', 'test4@gmail.ca', 'null.jpg');
INSERT INTO `users` VALUES (16, 'smith5', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Robert', 'Smith', 'smith5@gmail.ca', 'shady.jpg');
INSERT INTO `users` VALUES (17, 'smith6', '5ebe2294ecd0e0f08eab7690d2a6ee69', 'Manuel', 'Smith', 'smith6@gmail.ca', 'null.jpg');
INSERT INTO `users` VALUES (18, 'rob123', '098f6bcd4621d373cade4e832627b4f6', 'Robbie', 'Heineke', 'rob123@mtroyal.ca', 'null.jpg');
INSERT INTO `users` VALUES (19, 'bob123', 'f9c2c5652289aaa70537dd459b959833', 'Bob', 'Builder', 'bob123@mtroyal.ca', 'null.jpg');
INSERT INTO `users` VALUES (20, 'joseph123', '098f6bcd4621d373cade4e832627b4f6', 'Joseph', 'Johnson', 'joseph123@mtroyal.ca', 'null.jpg');
INSERT INTO `users` VALUES (21, 'quirrell123', 'a82fd95db10ff25dfad39f07372ebe37', 'Prof.Quirinus', 'Quirrel', 'quirrell123@mtroyal.ca', 'quirrell.jpg');
