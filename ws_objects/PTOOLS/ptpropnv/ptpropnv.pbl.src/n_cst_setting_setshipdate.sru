﻿$PBExportHeader$n_cst_setting_setshipdate.sru
forward
global type n_cst_setting_setshipdate from n_cst_syssettings_enumerated_2rb
end type
end forward

global type n_cst_setting_setshipdate from n_cst_syssettings_enumerated_2rb
end type
global n_cst_setting_setshipdate n_cst_setting_setshipdate

forward prototypes
public function string of_getvalue ()
public function integer of_savevalue (any aa_value)
end prototypes

public function string of_getvalue ();String 	ls_Value
Any 		la_Value

n_cst_Settings lnv_settings

lnv_settings.of_GetSetting(160,la_Value)

ls_Value = String(la_Value)

IF ls_Value = "NO!" THEN
	ls_Value = THIS.cs_No
ELSE
	ls_Value = THIS.cs_Yes
END IF

Return ls_Value
end function

public function integer of_savevalue (any aa_value);Any 		la_Value

n_cst_Settings lnv_settings
IF String ( aa_value ) = THIS.cs_Yes THEN
	la_Value = "YES!"
ELSE
	la_Value = "NO!"
END IF
THIS.of_SetSetting(160,la_Value,lnv_settings.cs_datatype_string)

Return 1
end function

on n_cst_setting_setshipdate.create
call super::create
end on

on n_cst_setting_setshipdate.destroy
call super::destroy
end on

event constructor;call super::constructor;is_PropertyTextlabel = "Set Shipment Date Automatically."
is_RB1Text				= THIS.cs_Yes
is_RB2text				= THIS.cs_No
end event

