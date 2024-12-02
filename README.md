# Icon Cache Refresher

**A simple batch script to clear the Windows icon cache and restart Windows Explorer, providing a fresh start for your desktop icons.**

## Short Description
Icon Cache Refresher is a batch script that helps fix issues with incorrect or corrupted desktop icons by clearing the Windows icon cache and restarting Windows Explorer.

## Overview
This utility is designed to help users clear the Windows icon cache in order to solve issues with incorrectly displayed or corrupted icons. The script requests elevated permissions, clears the icon cache using the built-in Windows command `ie4uinit.exe`, and restarts Windows Explorer to apply the changes.

The tool is useful for anyone experiencing issues like missing or incorrect icons on their Windows system, as it offers a simple, one-click solution to refresh the icon cache.

## Features
- Automatically requests administrator privileges.
- Clears the Windows icon cache using `ie4uinit.exe`.
- Restarts Windows Explorer to apply changes immediately.
- Provides user confirmation before proceeding.
- Includes error handling for each step, ensuring reliability.

## Usage
1. Download the repository or clone it using:
   ```sh
   git clone https://github.com/ClearanceClarence/Icon-Cache-Refresher.git
   ```
2. Navigate to the folder containing the batch script.
3. Right-click on `refresh_icon_cache.bat` and select **Run as administrator**.
4. Follow the prompts to clear the icon cache and refresh your icons.

## Script Details
### `refresh_icon_cache.bat`
This script performs the following actions:
1. Checks if the script is running with administrator privileges. If not, it prompts the user for elevation.
2. Asks the user for confirmation before proceeding to clear the icon cache.
3. Uses `ie4uinit.exe` to clear the icon cache.
4. Stops and then restarts Windows Explorer to ensure that changes take effect.

### Requirements
- Windows operating system (Windows 7 and above).
- Administrative privileges are required to clear the icon cache.

## Contributing
Feel free to open issues or submit pull requests if you have any suggestions for improvements or additional features.

## License
This project is licensed under the MIT License.
