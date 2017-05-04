### MixerBox

An iOS μ-framework featuring 2 HSB color picker views.

![ ](preview.gif)



#### Setup

Cloning the project, dropping it into your workspace and linking to __MixerBox.framework__ should make all required classes available.

```
$ git clone https://github.com/robertoseidenberg/MixerBox
```

#### Usage

See the included sample project for implementation details. MixerBox provides two UIView subclasses.  Assigning those in InterfaceBuilder should suffice to make the views work.
```
// Displays all hues in a colorwheel manner and allows picking hue and saturation
public final class HSBView: ColorPickerView {
...
}

// Allows selection of saturation and lightness
public final class SBView: ColorPickerView {
...
}
```
Both views (when updated by the user) return values via __delegate__:

 ```fdff
public protocol ColorPickerViewDelegate {
  func colorPickerView(_ view: ColorPickerView, didSelectHSB hsb: HSB)
}
 ```

__HSBView__ as well as __SBView__ can be configured by setting each view's HSB value. They update accordingly.

```
public var hsb: HSB {
...
}
```



#### Requirements

* iOS 10


* A metal compatible device



#### Notes

Since MixerBox is using Metal it __does not__ work on the simulator! In fact it won't even compile for the simulator.