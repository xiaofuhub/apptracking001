﻿$PBExportHeader$n_cst_setting_glpayablesvalidationfile.sru
forward
global type n_cst_setting_glpayablesvalidationfile from n_cst_syssettings_files
end type
end forward

global type n_cst_setting_glpayablesvalidationfile from n_cst_syssettings_files
end type
global n_cst_setting_glpayablesvalidationfile n_cst_setting_glpayablesvalidationfile

forward prototypes
public function string of_getvalue ()
public function integer of_savevalue (any aa_value)
end prototypes

public function string of_getvalue ();String 	ls_Value
Any 		la_Value

n_cst_Settings lnv_settings

lnv_settings.of_GetSetting(132,la_Value)

ls_Value = String(la_Value)

Return ls_Value


end function

public function integer of_savevalue (any aa_value);Int li_ReturnValue = 1 
String ls_Value

n_cst_Settings lnv_settings

ls_Value = String(aa_Value)

IF Not IsNull(ls_Value) THEN
	This.of_SetSetting(132,ls_Value,lnv_settings.cs_datatype_string)
ELSE
	li_ReturnValue = -1
END IF

Return li_ReturnValue

end function

on n_cst_setting_glpayablesvalidationfile.create
call super::create
end on

on n_cst_setting_glpayablesvalidationfile.destroy
call super::destroy
end on

event constructor;call super::constructor;is_propertytextlabel = "Full Path to GL Payables Validation File."
end event

