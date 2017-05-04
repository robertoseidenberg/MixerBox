### MixerBox

An iOS μ-framework featuring 2 HSB color picker views.

![ ](preview.gif)

#####Usage

See the included sample project for implementation details. MixerBox provides two UIView subclasses. Indicating the appropriate subclass in InterfaceBuilder should suffice to make the views work.
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
Both return values via __delegate__:

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



##### Requirements

* iOS 10


* A metal compatible device



##### Notes

Since both views are using Metal in order to display their colors they __do not__ work on the simulator!