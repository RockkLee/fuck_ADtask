@echo off
setlocal EnableDelayedExpansion

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%

SET /p folder_name=�п�J����W��:
echo .
SET /p file_name=�п�J����渹(�����D�Ъ���Enter):
echo .

IF exist %folder_name%\ (
	echo ��Ƨ��w�s�b!!!!!!!!!!
	goto goto_END
)

mkdir %folder_name%
mkdir %folder_name%\AD_process
mkdir %folder_name%\Csv
mkdir %folder_name%\Report

IF [%file_name%]==[] (
	echo null
	echo --�渹: RE2022xxxxx%NL%--�ݨD: >%folder_name%\FG0520_RE2022xxxxx.tst
) else (
	echo not_null
	echo --�渹: %file_name%%NL%--�ݨD: >%folder_name%\FG0520_%file_name%.tst
)

:goto_END
pause