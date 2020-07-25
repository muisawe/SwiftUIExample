//
//  QuadPageControl.swift
//  NewWattan
//
//  Created by Moumen Alisawe on 6/30/20.
//  Copyright © 2020 moumen. All rights reserved.
//


import SwiftUI

public class CustomPageControl: UIPageControl {
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        guard !subviews.isEmpty else { return }
        
        let spacing: CGFloat = 5
        
        let width: CGFloat = 20
        
        let height = spacing
        
        var total: CGFloat = 0
        
        for view in subviews {
            view.layer.cornerRadius = 2
            view.frame = CGRect(x: total, y: frame.size.height / 2 - height / 2, width: width, height: height)
            total += width + spacing
        }
        
        total -= spacing
        
        frame.origin.x = frame.origin.x + frame.size.width / 2 - total / 2
        frame.size.width = total
    }
}
struct QuadPageControl: UIViewRepresentable {
    var numberOfPages: Int
    var tintColor : UIColor
    var currentPositionColor : UIColor
    @Binding var currentPage: Int
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: Context) -> CustomPageControl {
        let control = CustomPageControl()
        control.numberOfPages = numberOfPages
        control.pageIndicatorTintColor = tintColor
        control.currentPageIndicatorTintColor = currentPositionColor
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return control
    }

    func updateUIView(_ uiView: CustomPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

    class Coordinator: NSObject {
        var control: QuadPageControl

        init(_ control: QuadPageControl) {
            self.control = control
        }
        @objc
        func updateCurrentPage(sender: CustomPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
