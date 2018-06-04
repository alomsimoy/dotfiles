import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PacketProtocol"
    Depends { name: "Qt"; submodules: ["core-private", "qml-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libQt5Qml.so.5.9.0", "/usr/lib/libQt5Network.so.5.9.0", "/usr/lib/libQt5Core.so.5.9.0", "pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PacketProtocol"
    libNameForLinkerRelease: "Qt5PacketProtocol"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5PacketProtocol.a"
    cpp.defines: ["QT_PACKETPROTOCOL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPacketProtocol", "/usr/include/qt/QtPacketProtocol/5.9.0", "/usr/include/qt/QtPacketProtocol/5.9.0/QtPacketProtocol"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
