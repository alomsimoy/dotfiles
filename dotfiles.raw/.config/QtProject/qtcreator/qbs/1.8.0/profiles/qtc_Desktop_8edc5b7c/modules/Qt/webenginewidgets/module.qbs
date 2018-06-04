import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "webenginecore", "widgets", "network", "quick", "printsupport"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5WebEngineCore.so.5.9.0", "/usr/lib/libQt5Quick.so.5.9.0", "/usr/lib/libQt5PrintSupport.so.5.9.0", "/usr/lib/libQt5Widgets.so.5.9.0", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5WebChannel.so.5.9.0", "/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Positioning.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebEngineWidgets"
    libNameForLinkerRelease: "Qt5WebEngineWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebEngineWidgets.so.5.9.0"
    cpp.defines: ["QT_WEBENGINEWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngineWidgets"]
    cpp.libraryPaths: []
    
}
