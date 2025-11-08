# 🎨 Citra Kanal Warna – MATLAB 2022b

## 📘 Description

**Citra Kanal Warna** is a digital image processing application developed using **MATLAB 2022b** and **GUIDE (Graphical User Interface Development Environment)**.
This application is designed to separate, visualize, and analyze the **color channels** of an image — including **Red, Green, Blue, Grayscale**, and **Binary** — and to generate **histograms** that show the intensity distribution for each channel.

## 🧠 Theoretical Background

In digital image processing, a **color channel** represents the intensity values of a particular color component within an image.

* **Red (R)**, **Green (G)**, and **Blue (B)** channels form the fundamental components of RGB color images.
* A **Grayscale** image converts the RGB channels into shades of gray based on luminance.
* A **Binary** image represents two intensity levels (black and white) based on a defined threshold.

A **histogram** illustrates how pixel intensities are distributed within an image. It helps in understanding image contrast, brightness, and dynamic range — which are essential for image enhancement and analysis.

## 🚀 Main Features

* Load and display an image from local storage
* Separate and display color channels:

  * 🔴 **Red Channel**
  * 🟢 **Green Channel**
  * 🔵 **Blue Channel**
  * ⚫ **Grayscale Image**
  * ⚪ **Binary Image**
* Generate **intensity histograms** for each channel
* Simple and interactive GUI built using MATLAB GUIDE

## ⚙️ Technologies Used

* **MATLAB R2022b**
* **GUIDE** (Graphical User Interface Development Environment)
* MATLAB built-in functions:

  ```matlab
  imread(), imshow(), rgb2gray(), im2bw(), imhist(), subplot(), axes()
  ```

## 🖥️ How to Run

1. Clone this repository or download it as a ZIP file:

   ```bash
   git clone https://github.com/sheiza31/CITRA-APP-KANAL-WARNA.git
   ```
2. Open the project folder in MATLAB.
3. Run the GUI file using:

   ```matlab
   guide('CitraApp.fig')
   ```

   or simply execute:

   ```matlab
   run('CitraApp.m')
   ```
4. Click **Browse / Load Image** to select an image.
5. Use the available buttons to:

   * Display each color channel (R, G, B, Gray, Binary)
   * Show the corresponding **intensity histogram**

## 📸 Example GUI

*(Add a screenshot of your MATLAB GUI here)*
screenshoot/Screenshot 2025-11-08 184316.png

## 🧩 Project Structure

```
├── screenshoot
    ├── Screenshot 2025-11-08 184316.png # Screenshot Gui Matlab
├── CitraApp.fig        # GUI layout file
├── CitraApp.m          # MATLAB main script
└── README.md                  # Documentation
