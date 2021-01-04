import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="database_students"
)
def get_student_schedule():
	mycursor = mydb.cursor()

	mycursor.execute("SELECT s.fname, s.lname, c.coursecode, p.lname FROM database_students.timetable tt, students s, classes c, professors p where tt.studentid=10 and tt.studentid=s.id and tt.professorid=p.id and tt.classid=c.id")

	myresult = mycursor.fetchall()

	for x in myresult:
	  print(x)

get_student_schedule()
