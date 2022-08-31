# Try to find the EGL library
#  EGL_FOUND - system has EGL
#  EGL_INCLUDE_DIR - the EGL include directory
#  EGL_LIBRARY - the EGL library

FIND_PATH(EGL_INCLUDE_DIR NAMES EGL/egl.h)
SET(_EGL_STATIC_LIBS libEGL.a)
SET(_EGL_SHARED_LIBS libEGL.dll.a EGL)
#IF(USE_STATIC_LIBS)
#    FIND_LIBRARY(EGL_LIBRARY NAMES ${_EGL_STATIC_LIBS} ${_EGL_SHARED_LIBS})
#ELSE()
    FIND_LIBRARY(EGL_LIBRARY NAMES ${_EGL_SHARED_LIBS} ${_EGL_STATIC_LIBS})
#ENDIF()
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(EGL DEFAULT_MSG EGL_LIBRARY EGL_INCLUDE_DIR)
MARK_AS_ADVANCED(EGL_LIBRARY EGL_INCLUDE_DIR)
