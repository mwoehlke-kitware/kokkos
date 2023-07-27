include("${CTEST_SCRIPT_DIRECTORY}/setup.cmake")

ctest_start(${DASHBOARD_TRACK})

file(STRINGS "${CTEST_BINARY_DIRECTORY}/config" configure_args)

message(STATUS "configure args:" ${configure_args})
ctest_configure(OPTIONS "${configure_args}" VERBOSITY ALWAYS)
ctest_submit(PARTS Configure CAPTURE_CMAKE_ERROR SUBMIT_RESULT)
