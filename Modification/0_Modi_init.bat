@echo off
setlocal EnableDelayedExpansion

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%

SET /p folder_name=�п�J�渹:
echo.

IF exist %folder_name%\ (
	echo ��Ƨ��w�s�b!!!!!!!!!!
	goto goto_END
)
IF [%folder_name%]==[] (
	echo �п�J�渹!!!!!!!!!!
	goto goto_END
)

mkdir %folder_name%
echo --�渹: %folder_name%%NL%>%folder_name%\%folder_name%.sql
echo --�渹: %folder_name%_A%NL%>%folder_name%\%folder_name%_A.sql

:goto_END
pause