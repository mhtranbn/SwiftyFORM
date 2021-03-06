// MIT license. Copyright (c) 2016 SwiftyFORM. All rights reserved.
import UIKit
import SwiftyFORM

public class FirstViewController: FormViewController {
	override public func populate(builder: FormBuilder) {
		builder.navigationTitle = "SwiftyFORM"
		builder.demo_showInfo("Welcome to the\nSwiftyFORM example app\nthat shows everything")

		builder += SectionHeaderTitleFormItem().title("Usecases")
		builder += ViewControllerFormItem().title("Sign Up").viewController(SignUpViewController.self)
		builder += ViewControllerFormItem().title("Change Password").viewController(ChangePasswordViewController.self)
		builder += ViewControllerFormItem().title("Report").viewController(ReportViewController.self)
		builder += ViewControllerFormItem().title("Rate").viewController(RateAppViewController.self)
		builder += ViewControllerFormItem().title("Area 51").storyboard("Area51", bundle: nil)
		builder += ViewControllerFormItem().title("Color Picker").viewController(ColorPickerViewController.self)

		builder += SectionHeaderTitleFormItem().title("TextField")
		builder += ViewControllerFormItem().title("Valid & Invalid").viewController(TextFieldValidInvalidViewController.self)
		builder += ViewControllerFormItem().title("Keyboard Types").viewController(TextFieldKeyboardTypesViewController.self)
		builder += ViewControllerFormItem().title("Tab Through Form").viewController(TextFieldTabThroughFormViewController.self)
		builder += ViewControllerFormItem().title("Return Key").viewController(TextFieldReturnKeyViewController.self)

		builder += SectionHeaderTitleFormItem().title("TextView")
		builder += ViewControllerFormItem().title("TextViews").viewController(TextViewViewController.self)

		builder += SectionHeaderTitleFormItem().title("DatePicker")
		builder += ViewControllerFormItem().title("DatePicker With Locale").viewController(DatePickerLocaleViewController.self)
		builder += ViewControllerFormItem().title("DatePicker With Range").viewController(DatePickerRangeViewController.self)
		builder += ViewControllerFormItem().title("DatePicker With Initial Value").viewController(DatePickerInitialValueViewController.self)
		builder += ViewControllerFormItem().title("DatePicker With Bindings").viewController(DatePickerBindingViewController.self)

		builder += SectionHeaderTitleFormItem().title("Other")
		builder += ViewControllerFormItem().title("Static & Attributed Text").viewController(StaticTextAndAttributedTextViewController.self)
		builder += ViewControllerFormItem().title("Buttons").viewController(ButtonsViewController.self)
		builder += ViewControllerFormItem().title("Sliders").viewController(SlidersViewController.self)
		builder += ViewControllerFormItem().title("Segmented Controls").viewController(SegmentedControlsViewController.self)
		builder += ViewControllerFormItem().title("Options").viewController(OptionsViewController.self)
		builder += ViewControllerFormItem().title("Header & Footer").viewController(HeaderFooterViewController.self)
		builder += ViewControllerFormItem().title("Steppers").viewController(SteppersViewController.self)
		builder += ViewControllerFormItem().title("Custom Cells").viewController(CustomViewController.self)
		builder += ViewControllerFormItem().title("Sliders & TextFields").viewController(SlidersAndTextFieldsViewController.self)
		builder += ViewControllerFormItem().title("Precision Sliders").viewController(PrecisionSlidersViewController.self)
		builder += ViewControllerFormItem().title("Work In Progress").viewController(WorkInProgressViewController.self)
	}
}
