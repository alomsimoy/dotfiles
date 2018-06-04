import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "webchannel", "positioning"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Quick.so.5.9.0", "/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5WebChannel.so.5.9.0", "/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5Positioning.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebEngineCore"
    libNameForLinkerRelease: "Qt5WebEngineCore"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebEngineCore.so.5.9.0"
    cpp.defines: ["QT_WEBENGINECORE_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngineCore"]
    cpp.libraryPaths: []
    
}
