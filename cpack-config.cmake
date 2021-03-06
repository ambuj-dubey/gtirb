# Global properties
set(CMAKE_PROJECT_HOMEPAGE_URL https://github.com/GrammaTech/gtirb)

set(CPACK_DEB_COMPONENT_INSTALL ON)
set(CPACK_COMPONENTS_GROUPING ALL_COMPONENTS_IN_ONE)

if("${CPACK_GTIRB_DEBIAN_PACKAGE}" STREQUAL "lib")
  set(CPACK_DEBIAN_PACKAGE_NAME "libgtirb")
  set(CPACK_PACKAGE_FILE_NAME "libgtirb")
  set(CPACK_COMPONENTS_ALL library)
  set(CPACK_DEBIAN_PACKAGE_DEPENDS
      "libstdc++6, libc6, libgcc1, libprotobuf10 (>=${CPACK_PROTOBUF_VERSION_LOWER_BOUND}~), libprotobuf10 (<<${CPACK_PROTOBUF_VERSION_UPPER_BOUND})"
  )
elseif("${CPACK_GTIRB_DEBIAN_PACKAGE}" STREQUAL "dev")
  set(CPACK_DEBIAN_PACKAGE_NAME "libgtirb-dev")
  set(CPACK_PACKAGE_FILE_NAME "libgtirb-dev")
  set(CPACK_COMPONENTS_ALL headers proto_library cmake_config cmake_target)
  set(CPACK_DEBIAN_PACKAGE_DEPENDS
      "libstdc++6, libc6, libgcc1, libgtirb (=${CPACK_GTIRB_VERSION}-${CPACK_DEBIAN_PACKAGE_RELEASE}), libboost-dev (>=1.67) | libboost1.67-dev, libprotobuf-dev (>=${CPACK_PROTOBUF_VERSION_LOWER_BOUND}~), libprotobuf-dev (<<${CPACK_PROTOBUF_VERSION_UPPER_BOUND})"
  )
elseif("${CPACK_GTIRB_DEBIAN_PACKAGE}" STREQUAL "python")
  set(CPACK_DEBIAN_PACKAGE_NAME "python3-gtirb")
  set(CPACK_PACKAGE_FILE_NAME "python3-gtirb")
  set(CPACK_COMPONENTS_ALL python)
  set(CPACK_DEBIAN_PACKAGE_DEPENDS "python3, python3-protobuf")
elseif("${CPACK_GTIRB_DEBIAN_PACKAGE}" STREQUAL "debug")
  set(CPACK_DEBIAN_PACKAGE_NAME "libgtirb-dbg")
  set(CPACK_PACKAGE_FILE_NAME "libgtirb-dbg")
  set(CPACK_COMPONENTS_ALL debug-file)
  set(CPACK_DEBIAN_PACKAGE_DEPENDS
      "libgtirb (=${CPACK_GTIRB_VERSION}-${CPACK_DEBIAN_PACKAGE_RELEASE})"
  )
endif()
