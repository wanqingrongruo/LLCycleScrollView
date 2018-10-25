//
//  LLViewExtensions.swift
//  LLCycleScrollView
//
//  Created by LvJianfeng on 2016/11/22.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

import UIKit

// MARK: Frame
extension UIView {
    public var frameX: CGFloat {
        get {
            return frame.origin.x
        }
        set(value) {
            self.frame = CGRect(x: value, y: frameY, width: frameW, height: frameH)
        }
    }

    public var frameY: CGFloat {
        get {
            return self.frame.origin.y
        }
        set(value) {
            self.frame = CGRect(x: frameX, y: value, width: frameW, height: frameH)
        }
    }

    public var frameW: CGFloat {
        get {
            return self.frame.size.width
        } set(value) {
            self.frame = CGRect(x: frameX, y: frameY, width: value, height: frameH)
        }
    }

    public var frameH: CGFloat {
        get {
            return self.frame.size.height
        } set(value) {
            self.frame = CGRect(x: frameX, y: frameY, width: frameW, height: value)
        }
    }
}
