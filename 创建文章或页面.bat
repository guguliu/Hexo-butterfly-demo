@echo off
echo ===========================
echo 请选择命令：
echo ===========================
echo 1.新建文章页面
echo 2.新建独立页面
echo.
set /p input="选择功能？1/2: "
if %input%==1 goto A
if %input%==2 goto B


:A
cls
set /p t1="请输入文章文件名: " 
start cmd.exe /k "hexo n %t1% && echo. && echo 已经在 source/_posts 目录下生成文件：%t1%.md 与 资源文件夹： %t1% && pause && exit"
exit

:B
cls
set /p t2="请输入独立页面文件名: "
start cmd.exe /k "hexo n page %t2% && echo. && echo 已经在 source 目录下生成一个文件夹： %t2% 并在文件夹内创建了文件： %t2%.md && pause && exit"
exit

pause

