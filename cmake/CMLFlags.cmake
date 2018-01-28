OPTION(CML_DOUBLE_PRECISION "Use double precision floating point values" BOOL:FALSE)
IF(CML_DOUBLE_PRECISION)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DCML_DOUBLE_PRECISION=${CML_DOUBLE_PRECISION}")
	MESSAGE(STATUS "Using double-precision floating point values")
ELSE()
	MESSAGE(STATUS "Using single-precision floating point values")
ENDIF()

OPTION(CML_NO_ALIASES "Use math functions aliases" BOOL:FALSE)
IF(CML_NO_ALIASES)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DCML_NO_ALIASES=${CML_NO_ALIASES}")
ELSE()
	MESSAGE(STATUS "Using math functions aliases")
ENDIF()

OPTION(CML_NO_EASING_FUNCTIONS "Use easing functions" BOOL:FALSE)
IF(CML_NO_EASING_FUNCTIONS)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DCML_NO_EASING_FUNCTIONS=${CML_NO_ALIASES}")
ELSE()
	MESSAGE(STATUS "Using easing functions")
ENDIF()

OPTION(CML_NO_STDBOOL "Use stdbool.h" BOOL:FALSE)
IF(CML_NO_STDBOOL)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DCML_NO_STDBOOL=${CML_NO_ALIASES}")
ELSE()
	MESSAGE(STATUS "Using stdbool.h")
ENDIF()

OPTION(CML_NO_STDINT "Use stdint.h" BOOL:FALSE)
IF(CML_NO_STDINT)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DCML_NO_STDINT=${CML_NO_ALIASES}")
ELSE()
	MESSAGE(STATUS "Using stdint.h")
ENDIF()

IF(mint_t)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Dmint_t=${mint_t}")
ENDIF()

IF(mfloat_t)
	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Dmfloat_t=${mfloat_t}")
ENDIF()
