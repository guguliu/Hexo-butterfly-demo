@echo off
echo ===========================
echo ��ѡ�����
echo ===========================
echo 1.�½�����ҳ��
echo 2.�½�����ҳ��
echo.
set /p input="ѡ���ܣ�1/2: "
if %input%==1 goto A
if %input%==2 goto B


:A
cls
set /p t1="�����������ļ���: " 
start cmd.exe /k "hexo n %t1% && echo. && echo �Ѿ��� source/_posts Ŀ¼�������ļ���%t1%.md �� ��Դ�ļ��У� %t1% && pause && exit"
exit

:B
cls
set /p t2="���������ҳ���ļ���: "
start cmd.exe /k "hexo n page %t2% && echo. && echo �Ѿ��� source Ŀ¼������һ���ļ��У� %t2% �����ļ����ڴ������ļ��� %t2%.md && pause && exit"
exit

pause

