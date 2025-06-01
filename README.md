# RAPID: Robust Analysis and Processing of Image Data
RAPID is a MATLAB-based app designed to help researchers convert qualitative image data into quantitative format.  The conversion works by applying several image processing algorithms to segment objects from background.  The segmented objects are then fully characterized for several features (e.g., area, circularity, perimeter length, etc.).  
## Features
- **Streamlined GUI**: RAPID has a shallow learning curve thanks to a pipeline approach which guides the user from beginning to end.
- **Batch image-processing**: Users can process multiple images using a single, consistent set of segmentation parameters, ensuring processing consistency across the entire dataset.
- **Real-time segmentation preview**: Users can *visually* preview the segmentation result before committing computing power, which is immensely helpful in fine-tuning the segmentation parameters when more than one image is processed simultaneously.
- **Easily reproducible results**: A preferences file is automatically generated after exporting the data.  This file allows the user to quickly replicate all (or a selection) of previously performed operations on the same image set (or an entirely new image set). 
## Installation 
- Navigate to the **install** folder
- Download and run the MATLAB installer file RAPID_WebInstaller.exe.
- Choose an installation path for RAPID when prompted
- Choose an installation path for MATLAB RUNTIME (if not already available). Note: This will require >2GBs of computer space.
- RAPID is now installed.
## Contents
- **/install/**: Contains the RAPID’s windows installation file. 
- **/src/**: Contains the open-source code for RAPID. 
- **/demo data/**: Contains data generated using the same processing parameters as those presented in the demonstration video of the (published) manuscript.
## Contact
For any questions or support, please contact Mohanad Bahshwan at mbahshwan@uj.edu.sa
