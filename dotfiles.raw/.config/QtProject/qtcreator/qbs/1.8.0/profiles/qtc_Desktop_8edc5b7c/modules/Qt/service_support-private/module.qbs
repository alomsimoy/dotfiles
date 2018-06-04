import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ServiceSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ServiceSupport"
    libNameForLinkerRelease: "Qt5ServiceSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5ServiceSupport.a"
    cpp.defines: ["QT_SERVICE_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtServiceSupport", "/usr/include/qt/QtServiceSupport/5.9.0", "/usr/include/qt/QtServiceSupport/5.9.0/QtServiceSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
