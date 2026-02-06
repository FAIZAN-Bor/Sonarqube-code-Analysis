@echo off
cd /d "C:\Users\M. Faizan\Desktop\8th\SRE\Assignment 1\json-server"
set SONAR_SCANNER_HOME=C:\Users\M. Faizan\Desktop\8th\SRE\Assignment 1\sonar-scanner-5.0.1.3006-windows
"%SONAR_SCANNER_HOME%\bin\sonar-scanner.bat" -Dsonar.projectKey=json-server -Dsonar.projectName=json-server -Dsonar.sources=src -Dsonar.host.url=http://localhost:9000 -Dsonar.login=sqp_934aa485abe577f23d64ae0c6d217c2d6ea462b4
pause
