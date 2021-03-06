//
//  ViewController.swift
//  LLCycleScrollView
//
//  Created by LvJianfeng on 2016/11/22.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var storyBoardBanner: LLCycleScrollView!

    var bannerDemo2: LLCycleScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let w = UIScreen.main.bounds.width
        // 网络图，本地图混合
        let imagesURLStrings = [
            "s3.jpg",
            "http://www.g-photography.net/file_picture/3/3587/4.jpg",
            "http://img2.zjolcdn.com/pic/0/13/66/56/13665652_914292.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg",
            "http://img3.redocn.com/tupian/20150806/weimeisheyingtupian_4779232.jpg"
        ]

        // let imagesURLStrings = [
        //     "s3.jpg","s2","s1"
        // ];

        // 图片配文字
        let titles = ["感谢您的支持",
                      "如果代码在使用过程中出现问题",
                      "您可以发邮件到coderjianfeng@foxmail.com您可以发邮件到coderjianfeng@foxmail.com"
                      ]

        // 新增图片显示控制
        self.storyBoardBanner.imageViewContentMode = .scaleToFill
        self.storyBoardBanner.customPageControlStyle = .image
        self.storyBoardBanner.pageControlPosition = .left
        self.storyBoardBanner.pageControlActiveImage = #imageLiteral(resourceName: "dot")
        self.storyBoardBanner.pageControlInActiveImage = #imageLiteral(resourceName: "dottest")

        // 是否对url进行特殊字符处理
        self.storyBoardBanner.isAddingPercentEncodingForURLString = true

        // 2018-02-25 新增协议
        self.storyBoardBanner.delegate = self

        // 纯文本demo
        let titleDemo = LLCycleScrollView(frame: CGRect(x: 0, y: self.storyBoardBanner.frameY + 190, width: w, height: 70), imageURLPaths: [], titles: titles) { (index) in
            print("当前点击文本的位置为:\(index)")
        }

        var setting = PageControlSetting()
        setting.customPageControlStyle = .none
        titleDemo.pageControlSetting = setting
        titleDemo.scrollDirection = .vertical

        var labelSetting = LabelSetting()
        labelSetting.font = UIFont.systemFont(ofSize: 13)
        labelSetting.textColor = UIColor.white
        labelSetting.titleBackgroundColor = UIColor.red
        labelSetting.numberOfLines = 2
        // 文本　Leading约束
        labelSetting.titleLeading = 30
        titleDemo.labelSetting = labelSetting
        scrollView.addSubview(titleDemo)

        // Demo--点击回调
        let bannerDemo = LLCycleScrollView(frame: CGRect(x: 0, y: titleDemo.frameY + 80, width: w, height: 200), imageURLPaths: imagesURLStrings, titles: []) { (index) in
            print("当前点击图片的位置为:\(index)")
        }

        var settingDemo = PageControlSetting()
        settingDemo.customPageControlStyle = .fill
        settingDemo.customPageControlInActiveTintColor = UIColor.red
        settingDemo.pageControlPosition = .left
        bannerDemo.pageControlSetting = settingDemo

        bannerDemo.pageControlLeadingOrTrialingContact = 28

        // 下边约束
        bannerDemo.pageControlBottom = 15
        scrollView.addSubview(bannerDemo)

        // Demo--带左右箭头
        let bannerDemo1 = LLCycleScrollView(frame: CGRect(x: 0, y: bannerDemo.frameY + 205, width: w, height: 200),
                                            arrowLRImages: [UIImage(named: "ico-two-left-arrow")!, UIImage(named: "ico-two-right-arrow")!],
                                            arrowLRFrame: nil,
                                            imageURLPaths: imagesURLStrings,
                                            titles: []) { (index) in
            print("当前点击图片的位置为:\(index)")
        }

        var setting01 = PageControlSetting()
        setting01.customPageControlStyle = .snake
        setting01.customPageControlInActiveTintColor = UIColor.red
        bannerDemo1.pageControlSetting = setting01
        bannerDemo1.pageControlPosition = .center
        bannerDemo1.pageControlLeadingOrTrialingContact = 28

        // 下边约束
        bannerDemo.pageControlBottom = 15
        scrollView.addSubview(bannerDemo1)

        // Demo--其他属性
        bannerDemo2 = LLCycleScrollView(frame: CGRect(x: 0, y: bannerDemo1.frameY + 205, width: w, height: 200), imageURLPaths: imagesURLStrings, titles: titles, didSelectItemAtIndex: nil)
        // 滚动间隔时间
        bannerDemo2.autoScrollTimeInterval = 3.0
        // 加载状态图
        bannerDemo2.placeHolderImage = #imageLiteral(resourceName: "s1")
        // 没有数据时候的封面图
        bannerDemo2.coverImage = #imageLiteral(resourceName: "s2")
        bannerDemo2.customPageControlStyle = .none
        scrollView.addSubview(bannerDemo2)
        scrollView.contentSize = CGSize(width: 0, height: bannerDemo2.frameY+220)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: LLCycleScrollViewDelegate {
    func cycleScrollView(_ cycleScrollView: LLCycleScrollView, didSelectItemIndex index: NSInteger) {
        print("协议：当前点击文本的位置为:\(index)")
    }
}
