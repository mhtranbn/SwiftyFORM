// MIT license. Copyright (c) 2016 SwiftyFORM. All rights reserved.
import Foundation

/// This is an invisible field, that is submitted along with the json
public class MetaFormItem: FormItem {
	override func accept(visitor: FormItemVisitor) {
		visitor.visit(self)
	}
	
	public var value: AnyObject?
	public func value(value: AnyObject?) -> Self {
		self.value = value
		return self
	}
}
