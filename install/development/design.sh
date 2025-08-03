yay -S --noconfirm --needed \
  freecad kicad

# Qidi slicer
mkdir -p $HOME/install/qidislicer
pushd $HOME/install/qidislicer/
wget -O qidislicer.AppImage https://github.com/QIDITECH/QIDISlicer/releases/download/V1.2.3/QIDISlicer_1.2.3_Linux_Ubuntu24.AppImage
chmod +x qidislicer.AppImage
popd

# First time you launch qidislicer you do it from terminal,
# then it will create application shortcut which will be picked up by the launcher
