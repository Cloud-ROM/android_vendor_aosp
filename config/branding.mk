# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 11
CLOUD_VERSION := 2.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := CloudROM_$(CUSTOM_BUILD)-$(CLOUD_VERSION)_$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-Alpha-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := $(CLOUD_VERSION)_$(CUSTOM_PLATFORM_VERSION)

CUSTOM_PROPERTIES := \
    org.cloud.version=$(CUSTOM_VERSION_PROP) \
    org.cloud.version.display=$(CUSTOM_VERSION) \
    org.cloud.build_date=$(CUSTOM_BUILD_DATE) \
    org.cloud.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.cloud.build_type=$(CUSTOM_BUILD_TYPE)
