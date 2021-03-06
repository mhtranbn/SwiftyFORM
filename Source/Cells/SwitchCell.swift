// MIT license. Copyright (c) 2016 SwiftyFORM. All rights reserved.
import UIKit

public struct SwitchCellModel {
	var title: String = ""

	var valueDidChange: Bool -> Void = { (value: Bool) in
		SwiftyFormLog("value \(value)")
	}
}

public class SwitchCell: UITableViewCell {
	public let model: SwitchCellModel
	public let switchView: UISwitch
	
	public init(model: SwitchCellModel) {
		self.model = model
		self.switchView = UISwitch()
		super.init(style: .Default, reuseIdentifier: nil)
		selectionStyle = .None
		textLabel?.text = model.title
		
		switchView.addTarget(self, action: #selector(SwitchCell.valueChanged), forControlEvents: .ValueChanged)
		accessoryView = switchView
	}
	
	public required init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	public func valueChanged() {
		SwiftyFormLog("value did change")
		model.valueDidChange(switchView.on)
	}

	public func setValueWithoutSync(value: Bool, animated: Bool) {
		SwiftyFormLog("set value \(value), animated \(animated)")
		switchView.setOn(value, animated: animated)
	}
	
}

