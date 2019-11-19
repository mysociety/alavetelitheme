

DIFF_FILE_HSE = general/_before_body_end.html.erb
DIFF_FILE_HSE = general/_before_head_end.html.erb
DIFF_FILE_HSE = general/_credits.html.erb
DIFF_FILE_HSE = general/_credits.sv.html.erb
DIFF_FILE_HSE = general/_orglink.html.erb
DIFF_FILE_HSE = general/_popup_banner.html.erb
DIFF_FILE_HSE = general/exception_caught.html.erb
DIFF_FILE_HSE = general/mycontroller.html.erb


DIFF_FILE_HSE = help/_sidebar.html.erb
DIFF_FILE_HSE = help/_why_they_should_reply_by_email.html.erb
DIFF_FILE_HSE = help/about.html.erb
DIFF_FILE_HSE = help/alaveteli.html.erb
DIFF_FILE_HSE = help/api.html.erb
DIFF_FILE_HSE = help/contact.html.erb
DIFF_FILE_HSE = help/credits.html.erb
DIFF_FILE_HSE = help/officers.html.erb
DIFF_FILE_HSE = help/privacy.html.erb
DIFF_FILE_HSE = help/pro.html.erb
DIFF_FILE_HSE = help/requesting.html.erb
DIFF_FILE_HSE = help/unhappy.html.erb


diff-theme:
	#git diff --no-index -w ./lib/views/$(DIFF_FILE_HSE) ../alaveteli/app/views/$(DIFF_FILE_HSE)
	git diff --no-index ./lib/views/$(DIFF_FILE_HSE) ../alavetelitheme/lib/views/$(DIFF_FILE_HSE)


copy-a:
	 cp ../alaveteli/app/views/$(DIFF_FILE_HSE) ./lib/views/$(DIFF_FILE_HSE)

