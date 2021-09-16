@echo off
echo ===========================
echo 请选择命令：
echo ===========================
echo 1.安装必备插件【安装成功后无需再安装】
echo 2.本地运行测试
echo 3.上传网站
echo 4.清理缓存
echo.
set /p input="使用哪种安装方式？1/2/3/4: "
if %input%==1 goto A
if %input%==2 goto B
if %input%==3 goto C
if %input%==4 goto D

:A
echo ===========================
echo 请选择安装方式：
echo ===========================
echo 1.npm【速度随缘】
echo 2.cnpm【速度最快】
echo 3.yarn【速度一般】
set /p install="使用哪种安装方式？1/2/3： "
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
start cmd.exe /k "@echo off && hexo d && echo. && echo 命令已执行完成，如出错请检查配置 && pause && cls && 运行脚本.bat"
exit

:D
start cmd.exe /k "@echo off && hexo cl && echo. && echo 已清理缓存 && pause && cls && 运行脚本.bat"
exit


pause

