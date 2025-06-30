@echo off
echo Compiling Java files...
javac -cp ".\.idea\libraries\jcalendar-1.4.jar" -d .\out .\src\bank\management\system\*.java

echo Copying icon resources...
Copy-Item -Recurse -Force .\src\icon .\out\

echo Running the application...
cd out
java -cp ".;..\.\.idea\libraries\jcalendar-1.4.jar" bank.management.system.Signup
cd ..
