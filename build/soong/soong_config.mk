# Insert new variables inside the PornAOSP structure
paosp_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"PornAOSP": {'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false)'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
