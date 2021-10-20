function(bb_bake_folder folderPath targetName)
  list(APPEND exec_bb "${CMAKE_CURRENT_FUNCTION_LIST_DIR}/binary_bakery")
  list(APPEND exec_bb "${CMAKE_CURRENT_FUNCTION_LIST_DIR}/binary_bakery.toml")
  list(APPEND exec_bb "${folderPath}")
  add_library(${targetName} INTERFACE)
  add_custom_target(
    ${targetName}_bb ALL
    COMMAND ${exec_bb}
    WORKING_DIRECTORY ${folderPath})
  target_include_directories(
    ${targetName} INTERFACE ${folderPath} ${CMAKE_CURRENT_FUNCTION_LIST_DIR})
  add_dependencies(${targetName} ${targetName}_bb)
endfunction(bb_bake_folder)
