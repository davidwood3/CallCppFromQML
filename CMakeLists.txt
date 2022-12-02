cmake_minimum_required(VERSION 3.16)

project(QML_Cpp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appQML_Cpp
    main.cpp
    cppworker.h
    cppworker.cpp

)

qt_add_qml_module(appQML_Cpp
    URI QML_Cpp
    VERSION 1.0
    QML_FILES main.qml Other.qml
)

set_target_properties(appQML_Cpp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQML_Cpp
    PRIVATE Qt6::Quick)

install(TARGETS appQML_Cpp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
