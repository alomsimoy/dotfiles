import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XcbQpa"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "service_support-private", "theme_support-private", "eventdispatcher_support-private", "fontdatabase_support-private", "linuxaccessibility_support-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["xcb-xinerama", "/usr/lib/libQt5ServiceSupport.a", "/usr/lib/libQt5ThemeSupport.a", "/usr/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/usr/lib/libQt5FontDatabaseSupport.a", "fontconfig", "freetype", "/usr/lib/libQt5LinuxAccessibilitySupport.a", "/usr/lib/libQt5AccessibilitySupport.a", "GL", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5DBus.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "X11", "X11-xcb", "Xi", "SM", "ICE", "xcb-xkb", "xcb-render-util", "xcb-render", "xcb-sync", "xcb-xfixes", "xcb-randr", "xcb-image", "xcb-shm", "xcb-keysyms", "xcb-icccm", "xcb", "xcb-shape", "xkbcommon-x11", "xkbcommon"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XcbQpa"
    libNameForLinkerRelease: "Qt5XcbQpa"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5XcbQpa.so.5.9.0"
    cpp.defines: ["QT_XCB_QPA_LIB_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    
}
