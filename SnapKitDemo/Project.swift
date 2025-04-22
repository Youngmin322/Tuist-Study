import ProjectDescription

let project = Project(
     name: "SnapKitDemo",
   targets: [
     .target(
       name: "SnapKitDemo",
       destinations: .iOS,
       product: .app,
       bundleId: "kr.co.youngmin.SnapKitDemo",
       infoPlist: .extendingDefault(
         with: [
           "UILaunchScreen": [
             "UIColorName": "",
             "UIImageName": "",
           ],
         ]
       ),
       sources: ["SnapKitDemo/Sources/**"],
       resources: ["SnapKitDemo/Resources/**"],
       dependencies: [
         .external(name: "SnapKit"),
       ]
     ),
     .target(
       name: "SnapKitDemoTests",
       destinations: .iOS,
       product: .unitTests,
       bundleId: "kr.co.youngmin.SnapKitDemoTests",
       infoPlist: .default,
       sources: ["SnapKitDemo/Tests/**"],
       resources: [],
       dependencies: [.target(name: "SnapKitDemo")]
     ),
   ]
)
