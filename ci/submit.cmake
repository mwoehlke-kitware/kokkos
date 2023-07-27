include("${CTEST_SCRIPT_DIRECTORY}/setup.cmake")

ctest_start(APPEND)

ctest_submit(PARTS Done CAPTURE_CMAKE_ERROR SUBMIT_RESULT)
