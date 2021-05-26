if(JAVA_AWT_LIBRARY)
  set(JNI_FOUND TRUE)
  return()
endif()
if(DEFINED JAVA_AWT_LIBRARY)
  set(JNI_FOUND FALSE)
  return()
endif()

set(orig_CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH})
unset(CMAKE_MODULE_PATH)
include(FindJNI)
set(CMAKE_MODULE_PATH ${orig_CMAKE_MODULE_PATH})
