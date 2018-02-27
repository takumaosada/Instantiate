# 4.0.0

- Remove `Instantiatable` and `Injectable` protocol reference.
- Unavailable `NibInstantiatable`'s ViewController supports.
  - Please Make init own self, but can use `let` variable on `Instantiatable` + ViewController + Nib.
```swift
class MyViewController: UIViewController, Instantiatable, NibType {
    let dependency: Dependency
    required init(dependency: Dependency) {
        self.dependency = dependency
        super.init(...)
    }
    
    required init?(coder: NSCoder) { ... }
}
```
- Add protocol conditions.
 - `StoryboardInstantiatable` require ViewController
 - `NibInstantiatable` require View.
- Remove protocol properties.
 - Remove `NibInsitantiatable`'s `nibName`, `nibBundle`.
 - Remove `StoryboardInsitantiatable`'s `storyboardName`, `storyboardBundle`.
