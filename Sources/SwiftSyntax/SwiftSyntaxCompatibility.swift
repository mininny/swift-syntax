//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// This file provides compatiblity aliases to keep dependents of SwiftSyntax building.
// All users of the declarations in this file should transition away from them ASAP.

@available(*, deprecated, renamed: "ImportPathSyntax")
public typealias AccessPathSyntax = ImportPathSyntax

@available(*, deprecated, renamed: "ImportPathComponentSyntax")
public typealias AccessPathComponentSyntax = ImportPathComponentSyntax

@available(*, deprecated, renamed: "WithAttributesSyntax")
public typealias AttributedSyntax = WithAttributesSyntax

public extension DeclGroupSyntax {
  @available(*, deprecated, renamed: "memberBlock")
  var members: MemberDeclBlockSyntax {
    get {
      return memberBlock
    }
    set(value) {
      memberBlock = value
    }
  }
}

public extension SyntaxProtocol {
  @available(*, deprecated, message: "Use detached computed property instead.")
  func detach() -> Self {
    return detached
  }
}

public extension TokenKind {
  @available(*, deprecated, renamed: "leftSquare")
  static var leftSquareBracket: TokenKind {
    return .leftSquare
  }

  @available(*, deprecated, renamed: "rightSquare")
  static var rightSquareBracket: TokenKind {
    return .rightSquare
  }
}

public extension TokenSyntax {
  @available(*, deprecated, renamed: "leftSquareToken")
  static func leftSquareBracketToken(
    leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = [],
    presence: SourcePresence = .present
  ) -> TokenSyntax {
    return .leftSquareToken(
      leadingTrivia: leadingTrivia,
      trailingTrivia: trailingTrivia,
      presence: presence
    )
  }

  @available(*, deprecated, renamed: "rightSquareToken")
  static func rightSquareBracketToken(
    leadingTrivia: Trivia = [],
    trailingTrivia: Trivia = [],
    presence: SourcePresence = .present
  ) -> TokenSyntax {
    return .rightSquareToken(
      leadingTrivia: leadingTrivia,
      trailingTrivia: trailingTrivia,
      presence: presence
    )
  }
}

//==========================================================================//
// IMPORTANT: If you are tempted to add a compatiblity layer code here      //
// please insert it in alphabetical order above                             //
//==========================================================================//
