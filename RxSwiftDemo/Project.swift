import ProjectDescription

let project = Project(
    name: "RxSwiftDemo",
    targets: [
        .target(
            name: "RxSwiftDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "kr.co.youngmin.RxSwiftDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["RxSwiftDemo/Sources/**"],
            resources: ["RxSwiftDemo/Resources/**"],
            dependencies: [
                .external(name: "RxSwift"),
                .external(name: "RxCocoa")
            ]
        ),
        .target(
            name: "RxSwiftDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "kr.co.youngmin.RxSwiftDemo",
            infoPlist: .default,
            sources: ["RxSwiftDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "RxSwiftDemo")]
        ),
    ]
)
