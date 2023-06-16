////
////  SplashViewTest.swift
////  DroidconKE
////
////  Created by Samuel Baraka on 16/06/2023.
////
//
//import XCTest
//
//@testable import DroidconKE
//
//class SplashViewTests: XCTestCase {
//
//    func testSplashView_Content() {
//        let splashView = SplashView()
//
//        let expectedImageName = "SplashImage"
//
//        XCTAssertTrue(splashView.body is VStack)
//
//        let vStack = splashView.body as! VStack
//        XCTAssertEqual(vStack.spacing, 0)
//        XCTAssertEqual(vStack.alignment, .center)
//
//        let vStackContent = vStack.content
//        XCTAssertEqual(vStackContent.count, 2)
//
//        XCTAssertTrue(vStackContent[0] is Spacer)
//
//        let image = vStackContent[1] as! Image
//        XCTAssertEqual(image.resizable(), Image("SplashImage").resizable())
//        XCTAssertEqual(image.aspectRatio(contentMode: .fit), Image("SplashImage").aspectRatio(contentMode: .fit))
//        XCTAssertEqual(image.edgesIgnoringSafeArea(.all), Image("SplashImage").edgesIgnoringSafeArea(.all))
//    }
//
//}
