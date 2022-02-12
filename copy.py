# This script is used to copy the addons to another folder, for example your
# WoW addon folder.

import argparse
import os
import shutil

addon_folder = "addons"

def copy(dest_path):
    if not os.path.exists(dest_path):
        print("The target folder doesn't exist.")
        return
    for addon in os.listdir(addon_folder):
        src_path    = os.path.join(addon_folder, addon)
        target_path = os.path.join(dest_path, addon)
        if os.path.exists(target_path):
            shutil.rmtree(target_path)
        shutil.copytree(src_path, target_path)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description =
        "Copies the addons to the specified folder."
    )
    parser.add_argument(
        "path",
        help = "The folder to copy the addon to.",
        type = str
    )
    args = parser.parse_args()
    copy(args.path)
