project(cf_dummy LANGUAGES CXX)
cmake_minimum_required(VERSION 3.12)
find_package(sentencepiece REQUIRED)

add_executable(test_me test_me.cxx)
target_link_libraries(test_me sentencepiece sentencepiece_train)
if(MSVC)
  # static libsentencepiece leaks its host dependencies;
  # need to link them as well
  target_link_libraries(test_me libprotobuf abseil_dll)
  # absl_flag* are always static on windows
  target_link_libraries(test_me absl_log_flags absl_flags_commandlineflag
    absl_flags_commandlineflag_internal absl_flags_config absl_flags_internal
    absl_flags_marshalling absl_flags_parse absl_flags_private_handle_accessor
    absl_flags_program_name absl_flags_reflection absl_flags_usage absl_flags_usage_internal)
endif()
