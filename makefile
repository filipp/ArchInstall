NAME=ArchiCAD
PKG=${NAME}.pkg
FOLDER="Install ${NAME}"
TARGET=/tmp/ArchiCADInstaller
VERSION=$(defaults read ${PWD}/payload/Install.app/Contents/ArchiCAD\ Installer.app/Contents/Info CFBundleShortVersionString)
ID=com.graphisoft.archicad${VERSION}

pkg:
	pkgbuild --identifier ${ID} --root payload --install-location ${TARGET} --scripts scripts ${PKG}

dmg:${PKG}
	mkdir ${FOLDER}
	mv ${PKG} ${FOLDER}
	hdiutil create -srcfolder ${FOLDER} ${FOLDER}.dmg

clean:
	rm -rf ${TARGET} ${FOLDER}

all:
	pkg dmg
