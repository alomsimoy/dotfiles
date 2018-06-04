import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ThemeSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "/usr/lib/libQt5DBus.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ThemeSupport"
    libNameForLinkerRelease: "Qt5ThemeSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5ThemeSupport.a"
    cpp.defines: ["QT_THEME_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtThemeSupport", "/usr/include/qt/QtThemeSupport/5.9.0", "/usr/include/qt/QtThemeSupport/5.9.0/QtThemeSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
