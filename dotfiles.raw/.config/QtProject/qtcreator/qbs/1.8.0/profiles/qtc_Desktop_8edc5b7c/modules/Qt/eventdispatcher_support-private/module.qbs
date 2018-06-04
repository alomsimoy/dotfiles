import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EventDispatcherSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "GL", "gthread-2.0", "glib-2.0"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EventDispatcherSupport"
    libNameForLinkerRelease: "Qt5EventDispatcherSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EventDispatcherSupport.a"
    cpp.defines: ["QT_EVENTDISPATCHER_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtEventDispatcherSupport", "/usr/include/qt/QtEventDispatcherSupport/5.9.0", "/usr/include/qt/QtEventDispatcherSupport/5.9.0/QtEventDispatcherSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
