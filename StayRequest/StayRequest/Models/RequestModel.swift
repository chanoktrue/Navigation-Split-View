//
//  RequestModel.swift
//  StayRequest
//
//  Created by Thongchai Subsaidee on 12/7/2564 BE.
//

import Foundation

struct Request: Identifiable {
    let id = UUID()
    let name: String
    let startDate: String
    let endDate: String
    let request: String
    let approval: Int
}

let requestData = [
    Request(name: "Stockholm, Sweden1", startDate: "Sep 21", endDate: "Sep 23", request: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", approval: 0),
    Request(name: "Stockholm, Sweden2", startDate: "Sep 21", endDate: "Sep 23", request: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", approval: 1),
    Request(name: "Stockholm, Sweden3", startDate: "Sep 21", endDate: "Sep 23", request: "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", approval: 2)
]
