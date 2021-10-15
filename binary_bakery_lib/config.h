#pragma once

#include "universal.h"

#include <optional>
#include <string>


namespace bb
{
   struct abs_directory_path;
   struct abs_file_path;

   struct config {
      std::string output_filename = "binary_bakery_payload.h";
      int indentation_size = 3;
      int max_columns = 100;
      bool smart_mode = true;
      compression_mode compression = compression_mode::none;
      bool prompt_for_key = true;
      image_vertical_direction image_loading_direction = image_vertical_direction::bottom_to_top;
   };

   [[nodiscard]] auto get_cfg_from_dir(const abs_directory_path& dir) -> std::optional<config>;
   [[nodiscard]] auto get_cfg_from_file(const abs_file_path& file) -> std::optional<config>;

}
