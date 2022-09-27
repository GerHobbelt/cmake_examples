set(lldb_required_debug_flag "-g -fstandalone-debug")

if(CMAKE_BUILD_TYPE MATCHES "Debug")
  set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} ${lldb_required_debug_flag}")
  set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} ${lldb_required_debug_flag}")
elseif(CMAKE_BUILD_TYPE MATCHES "Release")
  set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} ${lldb_required_debug_flag}")
  set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${lldb_required_debug_flag}")
elseif(CMAKE_BUILD_TYPE MATCHES "RelWithDebInfo")
  set(CMAKE_C_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO} ${lldb_required_debug_flag}")
  set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} ${lldb_required_debug_flag}")
elseif(CMAKE_BUILD_TYPE MATCHES "MinSizeRel")
  set(CMAKE_C_FLAGS_MINSIZEREL "${CMAKE_C_FLAGS_MINSIZEREL} ${lldb_required_debug_flag}")
  set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_CXX_FLAGS_MINSIZEREL} ${lldb_required_debug_flag}")
elseif(CMAKE_BUILD_TYPE EQUAL "None" OR NOT CMAKE_BUILD_TYPE)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${lldb_required_debug_flag}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${lldb_required_debug_flag}")
else()
  message(FATAL_ERROR "unsupported CMAKE_BUILD_TYPE for lldb adding flags: ${CMAKE_BUILD_TYPE}")
endif()