add_executable(ApiTest apitest.cpp)

target_link_libraries(ApiTest SampleApi)

add_test(NAME ApiTest COMMAND ApiTest)
