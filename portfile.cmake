vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO kornelski/libicns
    REF 1137b6f67eed87fe7a31c7de5325686422bc4568
    SHA512 1e7ea3fa75eb28d16ac59a3637e34b3ae55c45a216e3d2bbf8b1a462a6d49caa713dfdc58a1b4339c5fd2b82c9dce348e0c4c9e1a19873fc9f15c8d2a6286558
    PATCHES
        0001-add-cmake-buildsystem.patch
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/libicns")