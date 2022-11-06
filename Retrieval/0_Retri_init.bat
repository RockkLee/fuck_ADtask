@echo off
setlocal EnableDelayedExpansion

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%

SET /p folder_name=請輸入撈件名稱:
echo .
SET /p file_name=請輸入撈件單號(不知道請直接Enter):
echo .

IF exist %folder_name%\ (
	echo 資料夾已存在!!!!!!!!!!
	goto goto_END
)

mkdir %folder_name%
mkdir %folder_name%\AD_process
mkdir %folder_name%\Csv
mkdir %folder_name%\Report

IF [%file_name%]==[] (
	echo null
	echo --單號: RE2022xxxxx%NL%--需求: >%folder_name%\FG0520_RE2022xxxxx.tst
) else (
	echo not_null
	echo --單號: %file_name%%NL%--需求: >%folder_name%\FG0520_%file_name%.tst
)

:goto_END
pause