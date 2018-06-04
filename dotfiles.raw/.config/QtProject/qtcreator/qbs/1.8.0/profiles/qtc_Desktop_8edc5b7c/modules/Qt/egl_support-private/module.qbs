import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "dl", "Xext", "X11", "m", "EGL", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglSupport"
    libNameForLinkerRelease: "Qt5EglSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglSupport.a"
    cpp.defines: ["QT_EGL_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtEglSupport", "/usr/include/qt/QtEglSupport/5.9.0", "/usr/include/qt/QtEglSupport/5.9.0/QtEglSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
