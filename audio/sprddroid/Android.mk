LOCAL_PATH :=   $(call my-dir)

ifenq ($(filter BOARD_USE_SPRDDROID_AUDIO),true)
include $(call all-makefiles-under,normal)
endif

ifenq ($(filter BOARD_USE_SPRDDROID_WHALE_AUDIO),true)
include $(call all makefiles-under,whale) 
endif
