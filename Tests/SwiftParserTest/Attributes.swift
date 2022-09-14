@_spi(RawSyntax) import SwiftSyntax
@_spi(RawSyntax) import SwiftParser
import XCTest

final class AttributeTests: XCTestCase {
  func testMissingArgumentToAttribute() {
    AssertParse(
      """
      @_dynamicReplacement(#^DIAG_1^#
      func #^DIAG_2^#test_dynamic_replacement_for2() {
      }
      """,
      diagnostics: [
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected 'for' in attribute argument"),
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected ':' in attribute argument"),
        DiagnosticSpec(locationMarker: "DIAG_2", message: "Expected ')' to end attribute"),
      ]
    )
  }
  
  func testMissingGenericTypeToAttribute() {
    AssertParse(
      """
      @differentiable(reverse wrt#^DIAG_1^#,where T#^DIAG_2^#
      func podcastPlaybackSpeed() {
      }
      """,
      diagnostics: [
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected ':' in '@differentiable' argument"),
        DiagnosticSpec(locationMarker: "DIAG_2", message: "Expected '=' in same type requirement"),
        DiagnosticSpec(locationMarker: "DIAG_2", message: "Expected ')' to end attribute"),
      ]
    )
  }
  
  func testMissingClosingParenToAttribute() {
    AssertParse(
      """
      @_specialize(e#^DIAG_1^#
      """,
      diagnostics: [
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected ':' in attribute argument"),
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected ')' to end attribute"),
      ]
    )
  }
  
  func testMultipleInvalidSpecializeParams() {
    AssertParse(
      """
      @_specialize(e#^DIAG_1^#, exported#^DIAG_2^#)
      """,
      diagnostics: [
        DiagnosticSpec(locationMarker: "DIAG_1", message: "Expected ':' in attribute argument"),
        DiagnosticSpec(locationMarker: "DIAG_2", message: "Expected ':' in attribute argument"),
        DiagnosticSpec(locationMarker: "DIAG_2", message: "Expected 'false' in attribute argument"),
      ]
    )
  }

  func testObjCAttribute() {
    AssertParse(
      """
      @objc(zeroArg)
      class A { }

      @objc(:::::)
      func f(_: Int, _: Int, _: Int, _: Int, _: Int) { }
      """
    )
  }

  func testRethrowsAttribute() {
    AssertParse(
      """
      @rethrows
      protocol P { }
      """
    )
  }

  func testAutoclosureAttribute() {
    AssertParse(
      """
      func f(in: @autoclosure () -> Int) { }
      func g(in: @autoclosure @escaping () -> Int) { }
      """
    )
  }

  func testDifferentiableAttribute() {
    AssertParse(
      """
      func f(in: @differentiable(reverse) (Int) -> Int) { }
      func f(in: @differentiable(reverse, wrt: a) (Int) -> Int) { }
      """
    )
  }

  func testQualifiedAttribute() {
    AssertParse(
      """
      @_Concurrency.MainActor(unsafe) public struct Image : SwiftUI.View {}
      """)
  }

  func testDerivativeAttribute() {
    AssertParse(
      """
      @inlinable
      @differentiable(reverse, wrt: self)
      public func differentiableMap<Result: Differentiable>(
        _ body: @differentiable(reverse) (Element) -> Result
      ) -> [Result] {
        map(body)
      }
      """)

    AssertParse(
      """
      @inlinable
      @differentiable(reverse, wrt: (self, initialResult))
      public func differentiableReduce<Result: Differentiable>(
        _ initialResult: Result,
        _ nextPartialResult: @differentiable(reverse) (Result, Element) -> Result
      ) -> Result {
        reduce(initialResult, nextPartialResult)
      }
      """)

    AssertParse(
      """
      @inlinable
      @derivative(of: differentiableReduce)
      internal func _vjpDifferentiableReduce<Result: Differentiable>(
        _ initialResult: Result,
        _ nextPartialResult: @differentiable(reverse) (Result, Element) -> Result
      ) -> (
        value: Result,
        pullback: (Result.TangentVector)
          -> (Array.TangentVector, Result.TangentVector)
      ) {}
      """)
  }
}
