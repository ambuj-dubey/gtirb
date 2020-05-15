//===- version.h -------------------------------------------------*- C++-*-===//
//
//  Copyright (C) 2020 GrammaTech, Inc.
//
//  This code is licensed under the MIT license. See the LICENSE file in the
//  project root for license terms.
//
//  This project is sponsored by the Office of Naval Research, One Liberty
//  Center, 875 N. Randolph Street, Arlington, VA 22203 under contract #
//  N68335-17-C-0700.  The content of the information does not necessarily
//  reflect the position or policy of the Government and no official
//  endorsement should be inferred.
//
//===----------------------------------------------------------------------===//

#ifndef GTIRB_VERSION_H
#define GTIRB_VERSION_H

/**@def GTIRB_MAJOR_VERSION
   Major Version
*/
#define GTIRB_MAJOR_VERSION 1

/**@def GTIRB_MINOR_VERSION
   Minor Version
*/
#define GTIRB_MINOR_VERSION 7

/**@def GTIRB_PATCH_VERSION
   Patch Version
*/
#define GTIRB_PATCH_VERSION 1

/// \file version.h
/// \brief Holds the version macros. Read from version.txt

/**@def GTIRB_VERSION_STRING
   Full version
*/
#define GTIRB_VERSION_STRING                                                   \
  "1.7.1"

/**@def GTIRB_PROTOBUF_VERSION
 * The version of the Protobuf files produced by this API.
*/
#define GTIRB_PROTOBUF_VERSION 1

#endif
