<TMPL_INCLUDE NAME="features/forgotpassword/myaccount_header.tpl">

		    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_INFO">
			<TMPL_INCLUDE NAME=features/forgotpassword/myaccount_info.tpl>
		    </TMPL_IF>
		    
		    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_ENABLE">
			<TMPL_INCLUDE NAME=features/forgotpassword/myaccount_enable.tpl>
		    <TMPL_ELSE>
			<TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_REGISTRATION">
			    <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_register.tpl>
			</TMPL_IF>
		    </TMPL_IF>
		    
		    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_CANCEL">
			<TMPL_INCLUDE NAME=features/forgotpassword/myaccount_cancel.tpl>
		    </TMPL_IF>

<TMPL_INCLUDE NAME="features/forgotpassword/myaccount_footer.tpl">
