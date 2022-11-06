@echo off
setlocal EnableDelayedExpansion

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%

SET /p folder_name=請輸入單號:
echo.

IF exist %folder_name%\ (
	echo 資料夾已存在!!!!!!!!!!
	goto goto_END
)
IF [%folder_name%]==[] (
	echo 請輸入單號!!!!!!!!!!
	goto goto_END
)

mkdir %folder_name%
echo --單號: %folder_name%%NL%>%folder_name%\%folder_name%.sql
echo --單號: %folder_name%_A%NL%>%folder_name%\%folder_name%_A.sql

:goto_END
pause