import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "GlxSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "Xext", "X11", "m", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5GlxSupport"
    libNameForLinkerRelease: "Qt5GlxSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5GlxSupport.a"
    cpp.defines: ["QT_GLX_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtGlxSupport", "/usr/include/qt/QtGlxSupport/5.9.0", "/usr/include/qt/QtGlxSupport/5.9.0/QtGlxSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
