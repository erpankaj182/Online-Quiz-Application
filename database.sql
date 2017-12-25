-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2017 at 02:59 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'erpankaj182', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_personal_info`
--

CREATE TABLE IF NOT EXISTS `admin_personal_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `hint_q` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin_personal_info`
--

INSERT INTO `admin_personal_info` (`id`, `username`, `password`, `name`, `email`, `mobile`, `address`, `hint_q`, `answer`) VALUES
(1, 'erpankaj182', '123456', 'Pankaj Agrawal', 'erpankaj182@gmail.com', '7737042061', 'Green Park, Dadi Ka Phatak, Benar Road, Jhotwara', 'Mother''s Middle Name', 'Devi'),
(2, 'admin', 'iloveBigData', 'Vikash Kumar Jangid', 'vikash32@yahoomail.com', '2765632135', 'Delhi VasantVihar, NCR', 'School Name', 'St.Anslem Public School'),
(6, 'yaashi123', 'mepagalhu', 'Yaashi Pagal', 'pagalchori@zyx.com', '0000000000', 'Laptaganj, Chinese colony, Chaina -989800', 'Fav Hobby ', 'Watching Cartoon ');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Java Quiz '),
(2, 'PHP Quiz'),
(3, 'SQL Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qno` int(3) NOT NULL AUTO_INCREMENT,
  `ques` text,
  `a` text,
  `b` text,
  `c` text,
  `d` text,
  `ans` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qno`, `ques`, `a`, `b`, `c`, `d`, `ans`) VALUES
(1, 'Java programs are  ', 'Faster than others\r\n', 'Platform independent\r\n', 'Not reusable\r\n', 'Not scalable\r\n', 'b\r\n'),
(2, 'Java has its origin in\r\n', 'C programming language\r\n', 'PERRL\r\n', 'COBOL\r\n', 'Oak programming language\r\n', 'd\r\n'),
(3, 'Which one of the following is true for Java\r\n', 'Java is object oriented and interpreted\r\n', 'Java is efficient and faster than C\r\n', 'Java is the choice of everyone.\r\n', 'Java is not robust.\r\n', 'a\r\n'),
(4, 'The command javac is used to\r\n', 'debug a java program\r\n', 'compile a java program\r\n', 'interpret a java program\r\n', 'execute a java program\r\n', 'b\r\n'),
(5, 'Java servlets are an efficient and powerful solution for creating ______ for the web.\r\n', 'Dynamic content\r\n', 'Static content\r\n', 'Hardware\r\n', 'Both a and b\r\n', 'a\r\n'),
(7, 'Which of the following is not the java primitive type\r\n', 'Byte\r\n', 'Float\r\n', 'Character\r\n', 'Long double\r\n', 'd\r\n'),
(8, 'Command to execute compiled java program is\r\n', 'java\r\n', 'javac\r\n', 'run\r\n', 'javaw\r\n', 'a\r\n'),
(9, 'Inner classes are\r\n', 'anonymous classes\r\n', 'nested classes\r\n', 'sub classes\r\n', 'derived classes\r\n', 'b\r\n'),
(10, 'All java classes are derived from\r\n', 'java.lang.Class\r\n', 'java.util.Name\r\n', 'java.lang.Object\r\n', 'java.awt.Window\r\n', 'c\r\n'),
(11, 'What would happen if "String[]args" is not included as argument in the main method.\r\n', 'No error\r\n', 'Compilation error\r\n', 'Program won''t run\r\n', 'Program exit\r\n', 'c\r\n'),
(12, 'For execution of DELETE SQL query in JDBC  _____. method must be used.\r\n', 'executeQuery()\r\n', 'executeDeleteQuery()\r\n', 'executeUpdate()\r\n', 'executeDelete()\r\n', 'c\r\n'),
(13, 'Which of the following is not mandatory in variable declaration?', 'a semicolon\r\n', 'an identifier\r\n', 'an assignment\r\n', 'a data type\r\n', 'c\r\n'),
(14, 'The out object is an object encapsulated inside the _______. class and represents the standard output device.\r\n', 'standard\r\n', 'local\r\n', 'globlal\r\n', 'system\r\n', 'd\r\n'),
(15, 'The third type of comment is used by a tool called ______ for automatic generation of documentation.\r\n', 'Java commenting\r\n', 'Java generator\r\n', 'Java doc\r\n', 'Java loc\r\n', 'c\r\n'),
(16, 'In the second type the information written in java after // is ignored by the ________.\r\n', 'Interpreter\r\n', 'Compiler\r\n', 'Programmer\r\n', 'All of the above\r\n', 'b\r\n'),
(17, 'In JDBC _______ imports all Java classes concerned with database connectivity.\r\n', 'javax.sql.*\r\n', 'java.mysql.*\r\n', 'java.sql.*\r\n', 'com.*\r\n', 'c\r\n'),
(18, 'The class at the top of exception class hierarchy is _________.\r\n', 'ArithmeticException\r\n', 'Throwable\r\n', 'Class\r\n', 'Exception\r\n', 'b\r\n'),
(19, 'The class string belongs to _________ package.\r\n', 'java.awt\r\n', 'java.lang\r\n', 'java.applet\r\n', 'java.string\r\n', 'b\r\n'),
(20, '________ package is used by compiler itself. So it does not need to be imported for use.\r\n', 'java.math\r\n', 'java.awt\r\n', 'java.applet\r\n', 'java.lang\r\n', 'd\r\n'),
(21, 'A package is a collection of\r\n', 'classes\r\n', 'interfaces\r\n', 'editing tools\r\n', 'classes and interfaces\r\n', 'd\r\n'),
(22, 'Which of the following methods belong to the string class?\r\n', 'length( )\r\n', 'compare To ( )\r\n', 'equals ( )\r\n', 'All of them\r\n', 'd\r\n'),
(23, 'If m and n are int type variables what will be the result of the expression m%n when m=5 and n=2 ?\r\n', '0\r\n', '1\r\n', '2\r\n', 'None of the above\r\n', 'b\r\n'),
(24, 'The concept of multiple inheritance is implemented in Java by\r\n', 'extending two or more classes\r\n', 'extending one class and implementing one or more interfaces\r\n', 'implementing two or more interfaces\r\n', 'both B and C\r\n', 'd\r\n'),
(25, 'Using which keyword we can access value of the instance variables and class variables of that class inside the method of that class itself.\r\n', 'super\r\n', 'final\r\n', 'this\r\n', 'either super or this\r\n', 'c\r\n'),
(26, 'If a variable is declared final it must include ________ value.\r\n', 'integer\r\n', 'no\r\n', 'initial\r\n', 'float\r\n', 'c\r\n'),
(27, 'In java string is a ________.\r\n', 'primitive data type\r\n', 'abstract data type\r\n', 'combination of boolean\r\n', 'None of the above\r\n', 'b\r\n'),
(28, 'Each method in a java class must have a unique name .\r\n', 'Not necessary\r\n', 'True\r\n', 'False\r\n', 'None of the above\r\n', 'a\r\n'),
(29, 'It is important feature of java that it always provides a default constructor to a class.\r\n', 'Not supported\r\n', 'False\r\n', 'True\r\n', 'None of the above\r\n', 'c\r\n\r\n'),
(30, 'Java was developed by the company\r\n', 'Sun Micro systems\r\n', 'Microsoft\r\n', 'Micro tech\r\n', 'IBM\r\n', 'a\r\n'),
(31, 'What is the file extension of compiled java program?\r\n', '.class\r\n', '.java\r\n', '.css\r\n', '.html\r\n', 'a\r\n'),
(32, '________ keyword is used to invoke the current object.\r\n', 'New\r\n', 'That\r\n', 'This\r\n', 'Me\r\n', 'c\r\n'),
(33, 'Which of the function is used to convert string to Number in java program?\r\n', 'to Number()\r\n', 'conString()\r\n', 'valueOf()\r\n', 'toString()\r\n', 'c\r\n'),
(34, 'What are the part in executing a Java program and their purposes?\r\n', 'Java Compiler\r\n', 'Java Interpreter\r\n', 'Java Preprocessor\r\n', 'Directive Preprocessor\r\n', 'a\r\n'),
(35, 'Method overloading is one of the way that Java supports ________\r\n', 'encapsulation\r\n', 'class\r\n', 'inheritence\r\n', 'polymorphism\r\n', 'd\r\n'),
(36, 'Java support RMI. What does this RMI stands for?\r\n', 'Random Memory Interface\r\n', 'Remote Method Invocation\r\n', 'Random Method Invocation\r\n', 'Remote Memory Interface\r\n', 'b\r\n'),
(37, 'Which of the following represent legal flow control statements?\r\n', 'break;\r\n', 'break();\r\n', 'continue(inner);\r\n', 'exit();\r\n', 'b\r\n'),
(38, 'The keywords reserved but used in the initial version of Java are\r\n', 'union\r\n', 'const\r\n', 'inner\r\n', 'goto\r\n', 'a\r\n'),
(39, 'What is the default return type of main() ..\r\n', 'void\r\n', 'double\r\n', 'float\r\n', 'int\r\n', 'd\r\n'),
(40, 'Which of the following is not keyword?\r\n', 'NULL\r\n', 'implements\r\n', 'protected\r\n', 'switch\r\n', 'a\r\n'),
(41, 'Object is an ________ of class.\r\n', 'instance\r\n', 'implement\r\n', 'inheritance\r\n', 'invoke\r\n', 'a\r\n'),
(42, '________ is the wrapper class.\r\n', 'Random\r\n', 'Byte\r\n', 'Vector\r\n', 'String\r\n', 'b\r\n'),
(43, 'Class is a ________ entity.\r\n', 'logical\r\n', 'Physical\r\n', 'up normal\r\n', 'collection of\r\n', 'a\r\n'),
(44, 'Which of the following denotes a javadoc comment?\r\n', '//#\r\n', '/*\r\n', '/**\r\n', '//**\r\n', 'c\r\n'),
(45, 'Object is a ________ entity.\r\n', 'normal\r\n', 'physical\r\n', 'logical\r\n', 'normal\r\n', 'b\r\n'),
(46, 'One interface can inherit another by use of the keyword ________\r\n', 'public\r\n', 'extends\r\n', 'method name\r\n', 'class name\r\n', 'b\r\n'),
(47, '________ must be the first non comment statement in the file\r\n', 'package\r\n', 'class\r\n', 'object\r\n', 'declaration\r\n', 'a\r\n'),
(48, 'Every method of a ________ is implicitly final.\r\n', 'static class\r\n', 'dynamic class\r\n', 'final class\r\n', 'abstract class\r\n', 'c\r\n'),
(49, 'The string is defined in ________ name space.\r\n', 'java.Lang\r\n', 'java.String\r\n', 'java.Char\r\n', 'java.Awt\r\n', 'a\r\n'),
(50, 'A ________ object cannot be modified after it is created.\r\n', 'double\r\n', 'int\r\n', 'string\r\n', 'main\r\n', 'c\r\n'),
(51, '________ is a special member function.\r\n', 'method\r\n', 'class\r\n', 'use defined function\r\n', 'constructor\r\n', 'd\r\n'),
(52, 'A ________ class may not have any abstract method.\r\n', 'abstract\r\n', 'static\r\n', 'final\r\n', 'public\r\n', 'c\r\n'),
(53, 'Keyword ________ is always a reference to the object.\r\n', 'new\r\n', 'this\r\n', 'invoke\r\n', 'class\r\n', 'b\r\n'),
(54, '________ is a small unit of process.\r\n', 'method\r\n', 'thread\r\n', 'applet\r\n', 'steam\r\n', 'b\r\n'),
(55, '________ is valid for if statement?\r\n', 'An integer expression\r\n', 'A Boolean expression\r\n', 'A character expression\r\n', 'A legal expression\r\n', 'b\r\n'),
(56, 'Wrapper class is a wrapper around a ________ data type.\r\n', 'normal\r\n', 'central\r\n', 'primitive\r\n', 'concrete\r\n', 'c\r\n'),
(57, '________ statement is valid for array declaration.\r\n', 'int number();\r\n', 'float number();\r\n', 'float number[];\r\n', 'count int[];\r\n', 'c\r\n'),
(58, '________ operators which concatenates two strings.\r\n', '+\r\n', '++\r\n', '?\r\n', '--\r\n', 'a\r\n'),
(59, 'What is the range of short data type in Java?\r\n', '-128 to 127\r\n', '-32768 to 32767\r\n', '-2147483648 to 2147483647\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(60, 'What is the range of byte data type in Java?\r\n', '-128 to 127\r\n', '-32768 to 32767\r\n', '-2147483648 to 2147483647\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(61, 'An expression involving byte and int and literal numbers is promoted to which of these?\r\n', 'int\r\n', 'long\r\n', 'byte\r\n', 'float\r\n', 'a\r\n'),
(62, 'An expression involving byte and int and literal numbers is promoted to which of these?\r\n', 'int\r\n', 'long\r\n', 'byte\r\n', 'float\r\n', 'a\r\n'),
(63, 'What is the numerical range of a char data type in Java?\r\n', '-128 to 127\r\n', '0 to 256\r\n', '0 to 32767\r\n', '0 to 65535\r\n', 'd\r\n'),
(64, 'Which of these coding types is used for data type characters in Java?\r\n', 'ASCII\r\n', 'ISO-LATIN-1\r\n', 'UNICODE\r\n', 'None of the mentioned\r\n', 'c\r\n'),
(65, 'Which of these values can a boolean variable contain?\r\n', 'True & False\r\n', '0 & 1\r\n', 'Any integer value\r\n', 'true\r\n', 'a\r\n'),
(66, 'Which one is a valid declaration of a boolean?\r\n', 'boolean b1 = 1;\r\n', 'boolean b2 = ''false'';\r\n', 'boolean b3 = false;\r\n', 'boolean b4 = ''true''\r\n', 'c\r\n'),
(67, 'Which of these is necessary condition for automatic type conversion in Java?\r\n', 'The destination type is smaller than source type.\r\n', 'The destination type is larger than source type.\r\n', 'The destination type can be larger or smaller than source type.\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(68, 'If an expression contains double and int and float and long then whole expression will promoted into which of these data types?\r\n', 'long\r\n', 'int\r\n', 'double\r\n', 'float\r\n', 'c\r\n'),
(69, 'What is Truncation is Java?\r\n', 'Floating-point value assigned to an integer type.\r\n', 'Integer value assigned to floating type.\r\n', 'Floating-point value assigned to an Floating type.\r\n', 'Integer value assigned to floating type.\r\n', 'a\r\n'),
(70, 'Which of these operators is used to allocate memory to array variable in Java?\r\n', 'malloc\r\n', 'alloc\r\n', 'new\r\n', 'new malloc\r\n', 'c\r\n'),
(71, 'Which of these is necessary to specify at time of array initialization?\r\n', 'Row\r\n', 'Column\r\n', 'Both Row and Column\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(72, 'Which of the following can be operands of arithmetic operators?\r\n', 'Numeric\r\n', 'Boolean\r\n', 'Characters\r\n', 'Both Numeric & Characters\r\n', 'd\r\n'),
(73, 'Modulus operator % can be applied to which of these?\r\n', 'Integers\r\n', 'Floating ? point numbers\r\n', 'Both Integers and floating ? point numbers.\r\n', 'None of the mentioned\r\n', 'c\r\n'),
(74, 'Decrement operator -- decreases value of variable by what number?\r\n', '1\r\n', '2\r\n', '3\r\n', '4\r\n', 'a\r\n'),
(75, 'Which of these is not a bitwise operator?\r\n', '&\r\n', '&=\r\n', '|=\r\n', '<=\r\n', 'd\r\n'),
(76, 'Which operator is used to invert all the digits in binary representation of a number?\r\n', '~\r\n', '<<<\r\n', '>>>\r\n', '^\r\n', 'a\r\n'),
(77, 'What is the output of relational operators?\r\n', 'Integer\r\n', 'Boolean\r\n', 'Characters\r\n', 'Double\r\n', 'b\r\n'),
(78, 'Which of these is returned by "greater than" and "less than" and "equal to" operators?\r\n', 'Integers\r\n', 'Floating ? point numbers\r\n', 'Boolean\r\n', 'None of the mentioned\r\n', 'c\r\n'),
(79, 'Which of these operators can skip evaluating right hand operand?\r\n', '!\r\n', '|\r\n', '&\r\n', '&&\r\n', 'd\r\n'),
(80, 'Which of these statement is correct?\r\n', 'true and false are numeric values 1 and 0.\r\n', 'true and false are numeric values 0 and 1.\r\n', 'true is any non zero value and false is 0.\r\n', 'true and false are non numeric values.\r\n', 'd\r\n'),
(81, 'Which of these have highest precedence?\r\n', '()\r\n', '++\r\n', '*\r\n', '>>\r\n', 'a\r\n'),
(82, 'Which of these selection statements test only for equality?\r\n', 'if\r\n', 'switch\r\n', 'if & switch\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(83, 'Which of these are selection statements in Java?\r\n', 'if()\r\n', 'for()\r\n', 'continue\r\n', 'break\r\n', 'a\r\n'),
(84, 'Which of the following loops will execute the body of loop even when condition controlling the loop is initially false?\r\n', 'do-while\r\n', 'while\r\n', 'for\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(85, 'Which of these jump statements can skip processing remainder of code in its body for a particular iteration?\r\n', 'break\r\n', 'return\r\n', 'exit\r\n', 'continue\r\n', 'd\r\n'),
(86, 'Which of these keywords is used to make a class?\r\n', 'class\r\n', 'struct\r\n', 'int\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(87, 'Which of the following is a valid declaration of an object of class Box?\r\n', 'Box obj = new Box();\r\n', 'Box obj = new Box;\r\n', 'obj = new Box();\r\n', 'new Box obj;\r\n', 'a\r\n'),
(88, 'Which of these operators is used to allocate memory for an object?\r\n', 'malloc\r\n', 'alloc\r\n', 'new\r\n', 'give\r\n', 'c\r\n'),
(89, 'Which of these statement is incorrect?\r\n', 'Every class must contain a main() method.\r\n', 'Applets do not require a main() method at all.\r\n', 'There can be only one main() method in a program.\r\n', 'main() method must be made public.\r\n', 'a\r\n'),
(90, 'What is the return type of a method that does not returns any value?\r\n', 'int\r\n', 'float\r\n', 'void\r\n', 'double\r\n', 'c\r\n'),
(91, 'What is the process of defining more than one method in a class differentiated by method signature?\r\n', 'Function overriding\r\n', 'Function overloading\r\n', 'Function doubling\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(92, 'Which of the following is a method having same name as that of it?s class?\r\n', 'finalize\r\n', 'delete\r\n', 'class\r\n', 'constructor\r\n', 'd\r\n'),
(93, 'Which method can be defined only once in a program?\r\n', 'main method\r\n', 'finalize method\r\n', 'static method\r\n', 'private method\r\n', 'a\r\n'),
(94, 'What is the return type of Constructors?\r\n', 'int\r\n', 'float\r\n', 'void\r\n', 'None of the mentioned\r\n', 'd\r\n'),
(95, 'Which keyword is used by method to refer to the object that invoked it?\r\n', 'import\r\n', 'catch\r\n', 'abstract\r\n', 'this\r\n', 'd\r\n'),
(96, 'Which of these can be overloaded?\r\n', 'Methods\r\n', 'Constructors\r\n', 'All of the mentioned\r\n', 'None of the mentioned\r\n', 'c\r\n'),
(97, 'What is the process of defining a method in terms of itself i.e. a method that calls itself?\r\n', 'Polymorphism\r\n', 'Abstraction\r\n', 'Encapsulation\r\n', 'Recursion\r\n', 'd\r\n'),
(98, 'Which of these access specifiers must be used for main() method?\r\n', 'private\r\n', 'public\r\n', 'protected\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(99, 'Which of these is used to access member of class before object of that class is created?\r\n', 'public\r\n', 'private\r\n', 'static\r\n', 'protected\r\n', 'c\r\n'),
(100, 'What is the process by which we can control what parts of a program can access the members of a class?\r\n', 'Polymorphism\r\n', 'Abstraction\r\n', 'Encapsulation\r\n', 'Recursion\r\n', 'c\r\n'),
(101, 'Arrays in Java are implemented as?\r\n', 'class\r\n', 'object\r\n', 'variable\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(102, 'Which of these keywords is used to prevent content of a variable from being modified?\r\n', 'final\r\n', 'last\r\n', 'constant\r\n', 'static\r\n', 'a\r\n'),
(103, 'Which of these methods must be made static?\r\n', 'main()\r\n', 'delete()\r\n', 'run()\r\n', 'finalize()\r\n', 'a\r\n'),
(104, 'String in Java is a?\r\n', 'class\r\n', 'object\r\n', 'variable\r\n', 'character array\r\n', 'a\r\n'),
(105, 'Which of these method of String class is used to obtain character at specified index?\r\n', 'char()\r\n', 'Charat()\r\n', 'charat()\r\n', 'charAt()\r\n', 'd\r\n'),
(106, 'Which of these keywords is used to refer to member of base class from a sub class?\r\n', 'upper\r\n', 'super\r\n', 'this\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(107, 'Which of these method of String class can be used to test to strings for equality?\r\n', 'isequal()\r\n', 'isequals()\r\n', 'equal()\r\n', 'equals()\r\n', 'd\r\n'),
(108, 'Which of the following statements are incorrect?\r\n', 'String is a class.\r\n', 'Strings in java are mutable.\r\n', 'Every string is an object of class String.\r\n', 'Java defines a peer class of String called StringBuffer which allows string to be altered.\r\n', 'b\r\n'),
(109, 'Which of these keyword must be used to inherit a class?\r\n', 'super\r\n', 'this\r\n', 'extent\r\n', 'extends\r\n', 'd\r\n'),
(110, 'Which of these is correct way of inheriting class A by class B?\r\n', 'class B + class A {}\r\n', 'class B inherits class A {}\r\n', 'class B extends A {}\r\n', 'class B extends class A {}\r\n', 'c\r\n'),
(111, 'Which of these keyword can be used in subclass to call the constructor of superclass?\r\n', 'super\r\n', 'this\r\n', 'extent\r\n', 'extends\r\n', 'a\r\n'),
(112, 'Which of these keywords can be used to prevent Method overriding?\r\n', 'static\r\n', 'constant\r\n', 'protected\r\n', 'final\r\n', 'd\r\n'),
(113, 'Which of these is correct way of calling a constructor having no parameters of superclass A by subclass B?\r\n', 'super(void);\r\n', 'superclass.();\r\n', 'super.A();\r\n', 'super();\r\n', 'd\r\n'),
(114, 'Which of these class is superclass of every class in Java?\r\n', 'String class\r\n', 'Object class\r\n', 'Abstract class\r\n', 'ArrayList class\r\n', 'b\r\n'),
(115, 'Which of these method of Object class is used to obtain class of an object at run time?\r\n', 'get()\r\n', 'void getclass()\r\n', 'Class getclass()\r\n', 'None of the mentioned\r\n', 'c\r\n'),
(116, 'Which of these keywords can be used to prevent inheritance of a class?\r\n', 'super\r\n', 'constant\r\n', 'Class\r\n', 'final\r\n', 'd\r\n'),
(117, 'Which of these keywords cannot be used for a class which has been declared final?\r\n', 'abstract\r\n', 'extends\r\n', 'abstract and extends\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(118, 'Which of these class relies upon its subclasses for complete implementation of its methods?\r\n', 'Object class\r\n', 'abstract class\r\n', 'ArrayList class\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(119, 'Which of these class is superclass of String and StringBuffer class?\r\n', 'java.util\r\n', 'java.lang\r\n', 'ArrayList\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(120, 'Which of these operators can be used to concatenate two or more String objects?\r\n', '+\r\n', '+=\r\n', '&\r\n', '||\r\n', 'a\r\n'),
(121, 'Which of these method of class String is used to obtain length of String object?\r\n', 'get()\r\n', 'Sizeof()\r\n', 'lengthof()\r\n', 'length()\r\n', 'd\r\n'),
(122, 'Which of these method of class String is used to check weather a given object starts with a particular string literal?\r\n', 'startsWith()\r\n', 'endsWith()\r\n', 'Starts()\r\n', 'ends()\r\n', 'a\r\n'),
(123, 'What is the value returned by function compareTo() if the invoking string is less than the string compared?\r\n', 'zero\r\n', 'value less than zero\r\n', 'value greater than zero\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(124, 'Which of these data type value is returned by equals() method of String class?\r\n', 'char\r\n', 'int\r\n', 'boolean\r\n', 'All of the mentioned\r\n', 'c\r\n'),
(125, 'Which of these method of class String is used to extract a substring from a String object?\r\n', 'substring()\r\n', 'Substring()\r\n', 'SubString()\r\n', 'None of the mentioned\r\n', 'a\r\n'),
(126, 'Which of these method of class String is used to remove leading and trailing whitespaces?\r\n', 'startsWith()\r\n', 'trim()\r\n', 'Trim()\r\n', 'doTrim()\r\n', 'b\r\n'),
(127, 'Which of these class is used to create an object whose character sequence is mutable?\r\n', 'String()\r\n', 'StringBuffer()\r\n', 'Both of the mentioned\r\n', 'None of the mentioned\r\n', 'b\r\n'),
(128, 'Which of these method of class StringBuffer is used to concatenate the string representation to the end of invoking string?\r\n', 'concat()\r\n', 'append()\r\n', 'join()\r\n', 'concatenate()\r\n', 'b\r\n'),
(129, 'Which of these method of class StringBuffer is used to reverse sequence of characters?\r\n', 'reverse()\r\n', 'reverseall()\r\n', 'Reverse()\r\n', 'reverseAll()\r\n', 'a\r\n'),
(130, 'Which of the following are incorrect form of StringBuffer class constructor?\r\n', 'StringBuffer()\r\n', 'StringBuffer(int size)\r\n', 'StringBuffer(String str)\r\n', 'StringBuffer(int size , String str)\r\n', 'd\r\n'),
(131, 'Which of these keywords is used to define packages in Java?\r\n', 'pkg\r\n', 'Pkg\r\n', 'package\r\n', 'Package\r\n', 'c\r\n'),
(132, 'Which of the following is correct way of importing an entire package ?pkg??\r\n', 'import pkg.\r\n', 'Import pkg.\r\n', 'import pkg.*\r\n', 'Import pkg.*\r\n', 'c\r\n'),
(133, 'Which of these keywords is used to define interfaces in Java?\r\n', 'interface\r\n', 'Interface\r\n', 'intf\r\n', 'Intf\r\n', 'a\r\n'),
(134, 'Which of these keywords is used by a class to use an interface defined previously?\r\n', 'import\r\n', 'Import\r\n', 'implements\r\n', 'Implements\r\n', 'c\r\n'),
(135, 'Which of these class is superclass of all other classes?\r\n', 'Math\r\n', 'Process\r\n', 'System\r\n', 'Object\r\n', 'd\r\n'),
(136, 'Which of these method of Object class can generate duplicate copy of the object on which it is called?\r\n', 'clone()\r\n', 'copy()\r\n', 'dublicate()\r\n', 'dito()\r\n', 'a\r\n'),
(137, 'Which of these method is a rounding function of Math class?\r\n', 'max()\r\n', 'min()\r\n', 'abs()\r\n', 'All of the mentioned\r\n', 'd\r\n'),
(138, 'Which of these class contains only floating point functions?\r\n', 'Math\r\n', 'Process\r\n', 'System\r\n', 'Object\r\n', 'a\r\n'),
(139, 'Which of these keywords is not a part of exception handling?\r\n', 'try\r\n', 'finally\r\n', 'thrown\r\n', 'catch\r\n', 'c\r\n'),
(140, 'Which of these keywords must be used to monitor for exceptions?\r\n', 'try\r\n', 'finally\r\n', 'throw\r\n', 'catch\r\n', 'a\r\n'),
(141, 'Which of these keywords must be used to handle the exception thrown by try block in some rational manner?\r\n', 'try\r\n', 'finally\r\n', 'throw\r\n', 'catch\r\n', 'd\r\n'),
(142, 'Which of these keywords is used to manually throw an exception?\r\n', 'try\r\n', 'finally\r\n', 'throw\r\n', 'catch\r\n', 'c\r\n'),
(143, 'Which of these class is related to all the exceptions that can be caught by using catch?\r\n', 'Error\r\n', 'Exception\r\n', 'RuntimeExecption\r\n', 'All of the mentioned\r\n', 'b\r\n'),
(144, 'Which of these methods can be used to output a sting in an applet?\r\n', 'display()\r\n', 'print()\r\n', 'drawString()\r\n', 'transient()\r\n', 'c\r\n'),
(145, 'What does AWT stands for?\r\n', 'All Window Tools\r\n', 'All Writing Tools\r\n', 'Abstract Window Toolkit\r\n', 'Abstract Writing Toolkit\r\n', 'c\r\n'),
(146, 'Which of these operators can be used to get run time information about an object?\r\n', 'getInfo\r\n', 'Info\r\n', 'instanceof\r\n', 'getinfoof\r\n', 'c\r\n'),
(147, 'Which of these package is used for graphical user interface?\r\n', 'java.applet\r\n', 'java.awt\r\n', 'java.awt.image\r\n', 'java.io\r\n', 'b\r\n'),
(149, 'sdfsdfd pankaj', 'seg', 'b', 'a', 'a', 'a'),
(150, 'What of the following is correct way of importing an entire package ?pkg?', 'a', 'b', 'c ', 'd', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `questionsmongodb`
--

CREATE TABLE IF NOT EXISTS `questionsmongodb` (
  `qno` int(11) DEFAULT NULL,
  `ques` text,
  `a` text,
  `b` text,
  `c` text,
  `d` text,
  `ans` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionsmongodb`
--

INSERT INTO `questionsmongodb` (`qno`, `ques`, `a`, `b`, `c`, `d`, `ans`) VALUES
(1, 'Which of the following language is MongoDB written in ?', 'Javascript', 'C', 'C++', 'All of the mentioned', 'd'),
(2, 'Point out the correct statement :', 'MongoDB is classified as a NoSQL database', 'MongoDB favours XML format more than JSON', 'MongoDB is column oriented database store', 'All of the mentioned', 'a'),
(3, 'Which of the following format is supported by MongoDB ?\r\n', 'SQL', 'XML', 'BSON', 'All of the mentioned', 'c'),
(4, 'MongoDB Queries can return specific fields of documents which also include user-defined __________ functions.', 'Javascript', 'C', 'C++\r\n', 'All of the mentioned', 'a'),
(5, 'Point out the wrong statement :', 'Secondary indices is not available in MongoDB', 'MongoDB supports search by field, range queries, regular expression searches', 'MongoDB can store the business subject in the minimal number of documents', 'All of the mentioned', 'a'),
(6, 'Initial release of MongoDB was in the year :', '2000', '2005', '2009', '2011', 'c'),
(7, 'MongoDB has been adopted as ________ software by a number of major websites and services.', 'frontend', 'backend', 'proprietary', 'All of the mentioned', 'b'),
(8, 'MongoDB is a _________ database that provides high performance, high availability, and easy scalability.', 'graph', 'key value', 'document', 'All of the mentioned', 'c'),
(9, 'Dynamic schema in MongoDB makes ____________ easier for applications.\r\n', 'inheritance', 'polymorphism', 'encapsulation', 'None of the mentioned', 'b'),
(10, 'With ________, MongoDB supports a complete backup solution and full deployment monitoring.', 'MMS', 'AMS', 'CMS', 'DMS', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `questionsphp`
--

CREATE TABLE IF NOT EXISTS `questionsphp` (
  `qno` int(11) NOT NULL AUTO_INCREMENT,
  `ques` text,
  `a` text,
  `b` text,
  `c` text,
  `d` text,
  `ans` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `questionsphp`
--

INSERT INTO `questionsphp` (`qno`, `ques`, `a`, `b`, `c`, `d`, `ans`) VALUES
(1, 'What does PHP stand for?i) Personal Home Pageii) Hypertext Preprocessoriii) Pretext Hypertext Processoriv) Preprocessor Home Page ', 'Both i) and iii)', 'Both ii) and iv)', 'Only ii)', 'Both i) and ii)', 'd'),
(2, 'PHP files have a default file extension of.', '.html', '.xml', '.php', '.ph', 'c'),
(3, 'A PHP script should start with ___ and end with ___:\r\n', '< php >', '< ? php ?>', '<? ?> or <?php ?>', '<>', 'c'),
(4, 'Which version of PHP introduced Try/catch Exception?\r\n', 'PHP 4', 'PHP 5', 'PHP 5.3', 'PHP 6', 'b'),
(5, 'What will be the output of the following php code?\r\n\r\n    <?php\r\n    $num  = 1;\r\n    $num1 = 2;\r\n    print $num . "+". $num1;\r\n    ?>', '3', '1+2', '1.+.2', 'Error', 'b'),
(6, 'What will be the output of the following php code?\r\n\r\n    <?php\r\n    $num  = "1";\r\n    $num1 = "2";\r\n    print $num+$num1;\r\n    ?>', '3\r\n', '1+2\r\n', 'Error\r\n', '12', 'a'),
(7, 'Which of the below symbols is a newline character?\r\n', '\\r\r\n', '\\n\r\n', '/n\r\n', '/r', 'b'),
(8, '3. What will be the output of the following PHP code?\r\n\r\n    <?php\r\n    $num = 10;\r\n    echo ''What is her age? \\n She is $num years old'';\r\n    ?>\r\n', 'What is her age? \\n She is $num years old\r\n', 'What is her age?\r\nShe is $num years old', 'What is her age? She is 10 years old', 'What is her age?\r\nShe is 10 years old', 'a'),
(9, 'Which of the looping statements is/are supported by PHP?\r\ni) for loop\r\nii) while loop\r\niii) do-while loop\r\niv) foreach loop', 'i) and ii)', 'i), ii) and iii)', 'All of the mentioned', 'None of the mentioned', 'c'),
(10, ' If $a = 12 what will be returned when ($a == 12) ? 5 : 1 is executed?\r\n', '12', '1', 'Error', '5', 'd'),
(11, 'mysql_connect( ) does not take following parameter\r\n', 'database host\r\n', 'user ID', 'password\r\n', 'database name', 'd'),
(12, 'For integer data type PHP 5 and earlier supported\r\n', '8 bit integer value', '16 bit integer value', '32 bit integer value\r\n', '64 bit integer value', 'c'),
(13, 'If a boolean variable $ alive= 5;\r\n', '$ alive is false\r\n', '$ alive is true\r\n', '$ alive is overflow\r\n', 'the statement is snot valid', 'b'),
(14, 'Which of the following data type is compound datatype supported by PHP\r\n', 'Array\r\n', 'String\r\n', 'Float\r\n', 'Boolean', 'a'),
(15, 'Which of the following data type is not seal or datetype supported by PHP\r\n', 'Array', 'String\r\n', 'Float', 'Boolean', 'a'),
(16, 'Which of the following function can assign the output to a string variable  ', 'echo ( )', 'print ( )', 'print f ( )', 's print f ( )', 'd'),
(17, 'WHat is your name ', 'plshopify1.2', 'a', 'a', 'd', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `questionssql`
--

CREATE TABLE IF NOT EXISTS `questionssql` (
  `qno` int(11) NOT NULL AUTO_INCREMENT,
  `ques` text,
  `a` text,
  `b` text,
  `c` text,
  `d` text,
  `ans` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`qno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `questionssql`
--

INSERT INTO `questionssql` (`qno`, `ques`, `a`, `b`, `c`, `d`, `ans`) VALUES
(1, 'You can add a row using SQL in a database with which of the following?\r\n', 'ADD', 'CREATE', 'INSERT', 'MAKE', 'c'),
(2, 'The command to remove rows from a table ''CUSTOMER'' is:\r\n', 'REMOVE FROM CUSTOMER ...', 'DROP FROM CUSTOMER ...', 'DELETE FROM CUSTOMER WHERE ...', 'UPDATE FROM CUSTOMER ...', 'c'),
(3, 'The SQL WHERE clause:\r\n', 'limits the column data that are returned.', 'limits the row data are returned.', 'Both A and B are correct.', 'Neither A nor B are correct.', 'b'),
(4, 'Which of the following is the original purpose of SQL?', 'To specify the syntax and semantics of SQL data definition language', 'To specify the syntax and semantics of SQL manipulation language', 'To define the data structures', 'All of the above.', 'd'),
(5, 'The wildcard in a WHERE clause is useful when?', 'An exact match is necessary in a SELECT statement.', 'An exact match is not possible in a SELECT statement.', 'An exact match is necessary in a CREATE statement.', 'An exact match is not possible in a CREATE statement.', 'b'),
(6, 'A view is which of the following?\r\n', 'A virtual table that can be accessed via SQL commands', 'A virtual table that cannot be accessed via SQL commands', 'A base table that can be accessed via SQL commands	\r\n', 'A base table that cannot be accessed via SQL commands', 'a'),
(7, 'The command to eliminate a table from a database is:', 'REMOVE TABLE CUSTOMER;', 'DROP TABLE CUSTOMER;', 'DELETE TABLE CUSTOMER;\r\n', 'UPDATE TABLE CUSTOMER;', 'b'),
(8, 'ON UPDATE CASCADE ensures which of the following?', 'Normalization', 'Data Integrity', 'Materialized Views', 'All of the above.', 'b'),
(9, 'SQL data definition commands make up a(n) ________ .\r\n', 'DDL', 'DML', 'HTML	', 'XML', 'a'),
(10, 'Which of the following is valid SQL for an Index?', 'CREATE INDEX ID;', 'CHANGE INDEX ID;', 'ADD INDEX ID;', 'REMOVE INDEX ID;', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_feedback`
--

