for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
start cmd /k "cd %CD% && ..\Scripts\activate && python manage.py runserver 192.168.2.20:8000"
start chrome "192.168.2.20:8000"