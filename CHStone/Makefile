#DIRS = adpcm aes blowfish dfadd dfdiv dfmul dfsin gsm jpeg mips motion sha
DIRS_SDC = adpcm_sdc aes_sdc blowfish_sdc gsm_sdc jpeg_sdc mips_sdc sha_sdc
DIRS_ILP = adpcm_ilp aes_ilp blowfish_ilp gsm_ilp jpeg_ilp mips_ilp sha_ilp
DIRS_GA = adpcm_ga aes_ga blowfish_ga gsm_ga jpeg_ga mips_ga sha_ga
DIRS_NI = adpcm_ni aes_ni blowfish_ni gsm_ni jpeg_ni mips_ni sha_ni
DIRS_SMS = adpcm_sms aes_sms blowfish_sms gsm_sms jpeg_sms mips_sms sha_sms

ALL = $(DIRS_SDC) $(DIRS_ILP) $(DIRS_GA) $(DIRS_NI) $(DIRS_SMS)

sdc:
	for dir in $(DIRS_SDC); do make -C $$dir; done

ilp:
	for dir in $(DIRS_ILP); do make -C $$dir; done

ga:
	for dir in $(DIRS_GA); do make -C $$dir; done

ni:
	for dir in $(DIRS_NI); do make -C $$dir; done

SMS:
	for dir in $(DIRS_SMS); do make -C $$dir; done

clean_test:
	for dir in $(ALL); do make -C $$dir cleanall ; done
