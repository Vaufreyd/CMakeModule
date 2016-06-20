# Function used in my cmake files
# This file will be downloaded automatically by cmake when mandatory

function(AddFlag CurVariable CurFlag)
	if ( NOT ${${CurVariable}} MATCHES ${CurFlag} )
	      set(${CurVariable} "${${CurVariable}} ${CurFlag}" PARENT_SCOPE)
	endif()
endfunction(AddFlag)

function(AddSourceInGroup MainFolder cpp_folder GroupName)
	# Add cpp data
	# Message( STATUS ${cpp_folder} )
	file(GLOB_RECURSE CPP_SRCS RELATIVE ${MainFolder} "${cpp_folder}/*.cpp")
	# source_group(${GroupName} FILES ${CPP_SRCS})
	set(${GroupName} ${${GroupName}} ${CPP_SRCS} PARENT_SCOPE)
endfunction(AddSourceInGroup)