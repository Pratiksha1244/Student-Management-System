*&---------------------------------------------------------------------*
*& Report ZSTUDENT_MANAGEMENT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSTUDENT_MANAGEMENT.


* Structure Declaration
TYPES: BEGIN OF ty_student,
         name   TYPE string,
         marks  TYPE i,
         result TYPE string,
       END OF ty_student.

* Internal Table and Work Area
DATA:
  lt_students TYPE TABLE OF ty_student,
  ls_student  TYPE ty_student.

* Student 1
ls_student-name = 'Rahul'.
ls_student-marks = 75.

IF ls_student-marks >= 35.
  ls_student-result = 'PASS'.
ELSE.
  ls_student-result = 'FAIL'.
ENDIF.

APPEND ls_student TO lt_students.

* Student 2
CLEAR ls_student.

ls_student-name = 'Priya'.
ls_student-marks = 82.

IF ls_student-marks >= 35.
  ls_student-result = 'PASS'.
ELSE.
  ls_student-result = 'FAIL'.
ENDIF.

APPEND ls_student TO lt_students.

* Student 3
CLEAR ls_student.

ls_student-name = 'Amit'.
ls_student-marks = 30.

IF ls_student-marks >= 35.
  ls_student-result = 'PASS'.
ELSE.
  ls_student-result = 'FAIL'.
ENDIF.

APPEND ls_student TO lt_students.

* Output
WRITE: / '=============================='.
WRITE: / '      STUDENT REPORT          '.
WRITE: / '=============================='.

LOOP AT lt_students INTO ls_student.

  WRITE: / 'Name   :', ls_student-name.
  WRITE: / 'Marks  :', ls_student-marks.
  WRITE: / 'Result :', ls_student-result.
  WRITE: / '--------------------------'.

ENDLOOP.
