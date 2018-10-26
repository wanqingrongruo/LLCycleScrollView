//
//  LLCycleScrollView+Helper.swift
//  LLCycleScrollView
//
//  Created by roni on 2018/10/26.
//  Copyright © 2018 LvJianfeng. All rights reserved.
//

import Foundation
import UIKit

/// Style
public enum PageControlStyle {
    case none
    case system
    case fill
    case pill
    case snake
    case image
}

public struct PageControlSetting {
    var pageControlTintColor: UIColor = UIColor.lightGray

    var pageControlCurrentPageColor: UIColor = UIColor.white

    var fillPageControlIndicatorRadius: CGFloat = 4

    /// Active Tint Color [PageControlStyle == .pill || PageControlStyle == .snake]
    var customPageControlInActiveTintColor: UIColor = UIColor(white: 1, alpha: 0.3)

    /// Active Image [PageControlStyle == .system]
    var pageControlActiveImage: UIImage?

    /// In Active Image [PageControlStyle == .system]
    var pageControlInActiveImage: UIImage?

    /// Tint Color
    var customPageControlTintColor: UIColor = UIColor.white

    /// Indicator Padding
    var customPageControlIndicatorPadding: CGFloat = 8

    /// Style [.fill, .pill, .snake]
    var customPageControlStyle: PageControlStyle = .system

    /// Position
    var pageControlPosition: PageControlPosition = .center
}

public struct LabelSetting {

    /// Color
    var textColor: UIColor = UIColor.white

    /// Number Lines
    var numberOfLines: NSInteger = 2

    /// Title Leading
    var titleLeading: CGFloat = 15

    /// Font
    var font: UIFont = UIFont.systemFont(ofSize: 15)

    /// Background
    var titleBackgroundColor: UIColor = UIColor.black.withAlphaComponent(0.3)
}

extension LLCycleScrollView {
    /// Tint Color
    open var pageControlTintColor: UIColor {
        get {
            return pageControlSetting.pageControlTintColor
        }
        set {
            pageControlSetting.pageControlTintColor = pageControlTintColor
        }
    }
    // InActive Color
    open var pageControlCurrentPageColor: UIColor {
        get {
            return pageControlSetting.pageControlCurrentPageColor
        }
        set {
            pageControlSetting.pageControlCurrentPageColor = pageControlCurrentPageColor
        }
    }

    /// Radius [PageControlStyle == .fill]
    open var fillPageControlIndicatorRadius: CGFloat {
        get {
            return pageControlSetting.fillPageControlIndicatorRadius
        }
        set {
            pageControlSetting.fillPageControlIndicatorRadius = fillPageControlIndicatorRadius
        }
    }

    /// Active Tint Color [PageControlStyle == .pill || PageControlStyle == .snake]
    open var customPageControlInActiveTintColor: UIColor {
        get {
            return pageControlSetting.customPageControlInActiveTintColor
        }
        set {
            pageControlSetting.customPageControlInActiveTintColor = customPageControlInActiveTintColor
        }
    }

    /// Active Image [PageControlStyle == .system]
    open var pageControlActiveImage: UIImage? {
        get {
            return pageControlSetting.pageControlActiveImage
        }
        set {
            pageControlSetting.pageControlActiveImage = pageControlActiveImage
        }
    }

    /// In Active Image [PageControlStyle == .system]
    open var pageControlInActiveImage: UIImage? {
        get {
            return pageControlSetting.pageControlInActiveImage
        }
        set {
            pageControlSetting.pageControlInActiveImage = pageControlInActiveImage
        }
    }

    /// Tint Color
    open var customPageControlTintColor: UIColor {
        get {
            return pageControlSetting.customPageControlTintColor
        }
        set {
            pageControlSetting.customPageControlTintColor = customPageControlTintColor
        }
    }
    /// Indicator Padding
    open var customPageControlIndicatorPadding: CGFloat {
        get {
            return pageControlSetting.customPageControlIndicatorPadding
        }
        set {
            pageControlSetting.customPageControlIndicatorPadding = customPageControlIndicatorPadding
        }
    }

    /// Style [.fill, .pill, .snake]
    var customPageControlStyle: PageControlStyle {
        get {
            return pageControlSetting.customPageControlStyle
        }
        set {
            pageControlSetting.customPageControlStyle = customPageControlStyle
        }
    }

    /// Position
    var pageControlPosition: PageControlPosition {
        get {
            return pageControlSetting.pageControlPosition
        }
        set {
            pageControlSetting.pageControlPosition = pageControlPosition
        }
    }
}

extension LLCycleScrollView {
    /// Color
    open var textColor: UIColor {
        get {
            return labelSetting.textColor
        }
        set {
            labelSetting.textColor = textColor
        }
    }

    /// Number Lines
    open var numberOfLines: NSInteger {
        get {
            return labelSetting.numberOfLines
        }
        set {
            labelSetting.numberOfLines = numberOfLines
        }
    }
    /// Title Leading
    open var titleLeading: CGFloat {
        get {
            return labelSetting.titleLeading
        }
        set {
            labelSetting.titleLeading = titleLeading
        }
    }
    /// Font
    open var font: UIFont {
        get {
            return labelSetting.font
        }
        set {
            labelSetting.font = font
        }
    }

    /// Background
    open var titleBackgroundColor: UIColor {
        get {
            return labelSetting.titleBackgroundColor
        }
        set {
            labelSetting.titleBackgroundColor = titleBackgroundColor
        }
    }

}
