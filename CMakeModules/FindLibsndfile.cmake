
FIND_PATH(LIBSNDFILE_INCLUDE_DIR sndfile.h /usr/local/include /usr/include)
FIND_LIBRARY(LIBSNDFILE_LIBRARY NAMES libsndfile.a PATH /usr/local/lib /usr/lib)
FIND_LIBRARY(LIBFLAC_LIBRARY NAMES libFLAC.a PATH /usr/local/lib /usr/lib)
FIND_LIBRARY(LIBOGG_LIBRARY NAMES libogg.a PATH /usr/local/lib /usr/lib)
FIND_LIBRARY(LIBVORBIS_LIBRARY NAMES libvorbis.a PATH /usr/local/lib /usr/lib)

SET(LIBSNDFILE_LIBRARIES
    ${LIBSNDFILE_LIBRARY}
    ${LIBFLAC_LIBRARY}
    ${LIBOGG_LIBRARY}
    ${LIBVORBIS_LIBRARY}
)

IF (LIBSNDFILE_INCLUDE_DIR AND LIBSNDFILE_LIBRARY AND LIBFLAC_LIBRARY)
    SET(LIBSNDFILE_FOUND TRUE)
ENDIF (LIBSNDFILE_INCLUDE_DIR AND LIBSNDFILE_LIBRARY AND LIBFLAC_LIBRARY)

IF (LIBSNDFILE_FOUND)
    IF (NOT libsndfile_FIND_QUIETLY)
        MESSAGE(STATUS "Found libsndfile: ${LAME_INCLUDE_DIR}/sndfile.h ${LIBSNDFILE_LIBRARIES}")
    ENDIF (NOT libsndfile_FIND_QUIETLY)
ELSE (LIBSNDFILE_FOUND)
    MESSAGE(FATAL_ERROR "Could not find libsndfile")
ENDIF (LIBSNDFILE_FOUND)
