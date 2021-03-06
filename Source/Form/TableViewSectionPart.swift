// MIT license. Copyright (c) 2016 SwiftyFORM. All rights reserved.
import UIKit

public enum TableViewSectionPart {
	case None
	case TitleString(string: String)
	case TitleView(view: UIView)
	
	typealias CreateBlock = Void -> TableViewSectionPart
	
	var title: String? {
		switch self {
		case let .TitleString(string):
			return string
		default:
			return nil
		}
	}
	
	var view: UIView? {
		switch self {
		case let .TitleView(view):
			return view
		default:
			return nil
		}
	}
	
	var height: CGFloat {
		switch self {
		case let .TitleView(view):
			let view2: UIView = view
			return view2.frame.size.height
		default:
			return UITableViewAutomaticDimension
		}
	}
}
