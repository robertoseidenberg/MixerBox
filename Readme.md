#### MixerBox

An iOS μ-framework featuring 2 HSB color picker views.

####Usage
See the included sample project for implementation details. MixerBox provides two UIView subclasses : 
```
public final class HSBView: ColorPickerView {
...
}

public final class SBView: ColorPickerView {
...
}
```
__HSBView__ displays all hues in a colorwheel manner and allows picking hue and saturation. __SBView__ allows selection of saturation and lightness. 



Both return values via:

 ```fdff
public protocol ColorPickerViewDelegate {
  func colorPickerView(_ view: ColorPickerView, didSelectHSB hsb: HSB)
}
 ```



___HSBView__ as well as __SBView__ can be configured by setting each view's HSB value:

```
public var hsb: HSB {
...
}
```



#### Requirements

* iOS 10


* A metal compatible device

#### Notes

Since both views are using Metal in order to display their colors the ___do not__ work on the simulator!