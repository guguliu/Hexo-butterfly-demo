@echo off
echo ===========================
echo ��ѡ�����
echo ===========================
echo 1.��װ�ر��������װ�ɹ��������ٰ�װ��
echo 2.�������в���
echo 3.�ϴ���վ
echo 4.������
echo.
set /p input="ʹ�����ְ�װ��ʽ��1/2/3/4: "
if %input%==1 goto A
if %input%==2 goto B
if %input%==3 goto C
if %input%==4 goto D

:A
cls
echo ======================================================
echo ��ѡ��װ��ʽ����������������ʧ����ѡ��cnpm �� yarnģʽ����
echo ======================================================
echo 1.npm
echo 2.cnpm
echo 3.yarn
echo.
set /p install="ʹ�����ְ�װ��ʽ��1/2/3�� "
if %install%==1 (
npm install
pause
exit
)
if %install%==2 (
cnpm install
pause
exit
)
if %install%==3 (
yarn
pause
exit
)

:B
start cmd.exe /k "@echo off && hexo s && pause && exit"
start http://localhost:4000
exit


:C
start cmd.exe /k "@echo off && hexo d && echo. && echo ������ִ����ɣ�������������� && pause && cls && ���нű�.bat"
exit

:D
start cmd.exe /k "@echo off && hexo cl && echo. && echo �������� && pause && cls && ���нű�.bat"
exit


pause

