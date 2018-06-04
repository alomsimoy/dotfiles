import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickControls2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Quick.so.5.9.0", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QuickControls2"
    libNameForLinkerRelease: "Qt5QuickControls2"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QuickControls2.so.5.9.0"
    cpp.defines: ["QT_QUICKCONTROLS2_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickControls2"]
    cpp.libraryPaths: []
    
}
