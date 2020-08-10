import XCTest
import SwiftUI
import SwiftUILib

final class SwiftUILibTests: XCTestCase {

  func testKeyboardSupport() {
    _ = EmptyView().keyboardAware()
  }
  
  func testDocumentPicker() {
    _ = EmptyView().documentPicker(isPresented: .constant(false))
  }

  func testWrapStack() {
    _ = WHStack {
      Text("foo")
      Text("bar")
    }
  }
}
