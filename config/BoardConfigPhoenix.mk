# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/phoenix/config/BoardConfigQcom.mk
endif

# Soong
include vendor/phoenix/config/BoardConfigSoong.mk
