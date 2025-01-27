//// Automatically generated by generate-swiftsyntax
//// Do not edit directly!
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

import SwiftSyntax

extension ArrayExprSyntax {
  @available(*, deprecated, message: "Use an initializer with leftSquareBracket, rightSquareBracket argument(s).")
  @_disfavoredOverload
  /// A convenience initializer that allows initializing syntax collections using result builders
  public init(
      leadingTrivia: Trivia? = nil, 
      unexpectedBeforeLeftSquareBracket: UnexpectedNodesSyntax? = nil, 
      leftSquareBracket: TokenSyntax = .leftSquareToken(), 
      unexpectedBetweenLeftSquareBracketAndElements: UnexpectedNodesSyntax? = nil, 
      unexpectedBetweenElementsAndRightSquareBracket: UnexpectedNodesSyntax? = nil, 
      rightSquareBracket: TokenSyntax = .rightSquareToken(), 
      unexpectedAfterRightSquareBracket: UnexpectedNodesSyntax? = nil, 
      @ArrayElementListBuilder elementsBuilder: () throws -> ArrayElementListSyntax, 
      trailingTrivia: Trivia? = nil
    ) rethrows {
    try self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeLeftSquareBracket, 
        leftSquare: leftSquareBracket, 
        unexpectedBetweenLeftSquareBracketAndElements, 
        elements: elementsBuilder(), 
        unexpectedBetweenElementsAndRightSquareBracket, 
        rightSquare: rightSquareBracket, 
        unexpectedAfterRightSquareBracket, 
        trailingTrivia: trailingTrivia
      )
  }
}

extension EnumDeclSyntax {
  @available(*, deprecated, message: "Use an initializer with genericParameters argument(s).")
  @_disfavoredOverload
  /// A convenience initializer that allows initializing syntax collections using result builders
  public init(
      leadingTrivia: Trivia? = nil, 
      unexpectedBeforeAttributes: UnexpectedNodesSyntax? = nil, 
      attributes: AttributeListSyntax? = nil, 
      unexpectedBetweenAttributesAndModifiers: UnexpectedNodesSyntax? = nil, 
      modifiers: ModifierListSyntax? = nil, 
      unexpectedBetweenModifiersAndEnumKeyword: UnexpectedNodesSyntax? = nil, 
      enumKeyword: TokenSyntax = .keyword(.enum), 
      unexpectedBetweenEnumKeywordAndIdentifier: UnexpectedNodesSyntax? = nil, 
      identifier: TokenSyntax, 
      unexpectedBetweenIdentifierAndGenericParameters: UnexpectedNodesSyntax? = nil, 
      genericParameters: GenericParameterClauseSyntax? = nil, 
      unexpectedBetweenGenericParametersAndInheritanceClause: UnexpectedNodesSyntax? = nil, 
      inheritanceClause: TypeInheritanceClauseSyntax? = nil, 
      unexpectedBetweenInheritanceClauseAndGenericWhereClause: UnexpectedNodesSyntax? = nil, 
      genericWhereClause: GenericWhereClauseSyntax? = nil, 
      unexpectedBetweenGenericWhereClauseAndMemberBlock: UnexpectedNodesSyntax? = nil, 
      unexpectedAfterMemberBlock: UnexpectedNodesSyntax? = nil, 
      @MemberDeclListBuilder memberBlockBuilder: () throws -> MemberDeclListSyntax, 
      trailingTrivia: Trivia? = nil
    ) rethrows {
    try self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeAttributes, 
        attributes: attributes, 
        unexpectedBetweenAttributesAndModifiers, 
        modifiers: modifiers, 
        unexpectedBetweenModifiersAndEnumKeyword, 
        enumKeyword: enumKeyword, 
        unexpectedBetweenEnumKeywordAndIdentifier, 
        identifier: identifier, 
        unexpectedBetweenIdentifierAndGenericParameters, 
        genericParameterClause: genericParameters, 
        unexpectedBetweenGenericParametersAndInheritanceClause, 
        inheritanceClause: inheritanceClause, 
        unexpectedBetweenInheritanceClauseAndGenericWhereClause, 
        genericWhereClause: genericWhereClause, 
        unexpectedBetweenGenericWhereClauseAndMemberBlock, 
        memberBlock: MemberDeclBlockSyntax(members: memberBlockBuilder()), 
        unexpectedAfterMemberBlock, 
        trailingTrivia: trailingTrivia
      )
  }
}

extension GenericParameterClauseSyntax {
  @available(*, deprecated, message: "Use an initializer with genericParameterList argument(s).")
  @_disfavoredOverload
  /// A convenience initializer that allows initializing syntax collections using result builders
  public init(
      leadingTrivia: Trivia? = nil, 
      unexpectedBeforeLeftAngleBracket: UnexpectedNodesSyntax? = nil, 
      leftAngleBracket: TokenSyntax = .leftAngleToken(), 
      unexpectedBetweenLeftAngleBracketAndGenericParameterList: UnexpectedNodesSyntax? = nil, 
      unexpectedBetweenGenericParameterListAndGenericWhereClause: UnexpectedNodesSyntax? = nil, 
      genericWhereClause: GenericWhereClauseSyntax? = nil, 
      unexpectedBetweenGenericWhereClauseAndRightAngleBracket: UnexpectedNodesSyntax? = nil, 
      rightAngleBracket: TokenSyntax = .rightAngleToken(), 
      unexpectedAfterRightAngleBracket: UnexpectedNodesSyntax? = nil, 
      @GenericParameterListBuilder genericParameterListBuilder: () throws -> GenericParameterListSyntax, 
      trailingTrivia: Trivia? = nil
    ) rethrows {
    try self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeLeftAngleBracket, 
        leftAngleBracket: leftAngleBracket, 
        unexpectedBetweenLeftAngleBracketAndGenericParameterList, 
        parameters: genericParameterListBuilder(), 
        unexpectedBetweenGenericParameterListAndGenericWhereClause, 
        genericWhereClause: genericWhereClause, 
        unexpectedBetweenGenericWhereClauseAndRightAngleBracket, 
        rightAngleBracket: rightAngleBracket, 
        unexpectedAfterRightAngleBracket, 
        trailingTrivia: trailingTrivia
      )
  }
}

extension TupleExprSyntax {
  @available(*, deprecated, message: "Use an initializer with elementList argument(s).")
  @_disfavoredOverload
  /// A convenience initializer that allows initializing syntax collections using result builders
  public init(
      leadingTrivia: Trivia? = nil, 
      unexpectedBeforeLeftParen: UnexpectedNodesSyntax? = nil, 
      leftParen: TokenSyntax = .leftParenToken(), 
      unexpectedBetweenLeftParenAndElementList: UnexpectedNodesSyntax? = nil, 
      unexpectedBetweenElementListAndRightParen: UnexpectedNodesSyntax? = nil, 
      rightParen: TokenSyntax = .rightParenToken(), 
      unexpectedAfterRightParen: UnexpectedNodesSyntax? = nil, 
      @TupleExprElementListBuilder elementListBuilder: () throws -> TupleExprElementListSyntax, 
      trailingTrivia: Trivia? = nil
    ) rethrows {
    try self.init(
        leadingTrivia: leadingTrivia, 
        unexpectedBeforeLeftParen, 
        leftParen: leftParen, 
        unexpectedBetweenLeftParenAndElementList, 
        elements: elementListBuilder(), 
        unexpectedBetweenElementListAndRightParen, 
        rightParen: rightParen, 
        unexpectedAfterRightParen, 
        trailingTrivia: trailingTrivia
      )
  }
}
