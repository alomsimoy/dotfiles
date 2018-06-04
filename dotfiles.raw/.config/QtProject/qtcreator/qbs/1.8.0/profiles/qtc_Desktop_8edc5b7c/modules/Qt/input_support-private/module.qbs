import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "InputSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "devicediscovery_support-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5DeviceDiscoverySupport.a", "udev", "/usr/lib/libQt5Gui.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread", "ts", "GL", "udev", "mtdev", "input", "xkbcommon"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5InputSupport"
    libNameForLinkerRelease: "Qt5InputSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5InputSupport.a"
    cpp.defines: ["QT_INPUT_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtInputSupport", "/usr/include/qt/QtInputSupport/5.9.0", "/usr/include/qt/QtInputSupport/5.9.0/QtInputSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
