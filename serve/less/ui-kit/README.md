# UI-Framework
Set of ui-components and less helpers, compliant with bootstrap, but made in a way better manner, highly customizable.
It’s an herald of ui-components that will use this as the basis, that will further be used by Typer.

Now it’s just WIP, that will grow in future.

## Notes
* Sometimes you need one exact style for your project, button, for example. It’s much more useful to utilise button-generator, not the whole framework. To obtain exact style of button and paste it in your project. So, in some future there’s a sense to have button-generator in Typer.
* Rework’d allow to implement data-uri painter in a way better manner.


## Statements
<dl>
	<dt>? Styles could be in any format: less, css, svg, sass, etc. How to make them flexible, format-independent?</dt>
	<dd>— Place files with different extensions. But how to include them?</dd>

	<dt>✔ Styles may alter in dependence of context (`input` inside `navbar` transforms own view).</dt>
	<dd>— When define new component (`.navbar`), create redefine rules. (preferrable — saves place)</dd>
	<dd>— _OR_ use `.navbar & {…}` statement to redefine component in-place. </dd>

	<dt>✔ Style may inherit a set of basic properties. E.g. browser defaults have some predefined set of styles, but if you change these, all nested elements may suffer. Therefore important to show explicitly what default presets component inherits. Basically, each component defines general less-mixin with minimal rules, e.g. `.navbar`.</dt>
	<dd>— Default components make minimalistic but essential style properties, that are supposed being redefinable in packs and through global variables.</dd>

	<dt>~? UI-packs may stylize some subsets of components, so basic styles of components should be minimal, like described by component.io</dt>
	<dd>— how to determine minimal essential properties? Make component functions with parameters close to domain area (`.input-error`, …). Properties that are not in minimal scope are supposed customizable.</dd>

	<dt>✔ Components shuld be redefinable</dt>
	<dd>— Make new component and extend it from base one: `.navbar-main-menu {.navbar(2.6)}`</dd>

	<dt>✔ Component default properties should be handleable from main panel: variables.less or some other (later)</dt>
	<dd>— Redefine `variables.less` in your custom pack</dd>

	<dt>? Component should be a JS-component</dt>
	<dd>— `component.json` (is it one more format of components? Looks like it is).</dd>

	<dt>? Web-components and shadow DOM</dt>
	<dd>— one more format of utilisation of ui-components (like html, svg, and so on)</dd>

	<dt>? Component may have a model and function of rendering this model</dt>
	<dd>— </dd>

	<dt>? Make snippets inside of HTML to include other components, to not to duplicate code</dt>
	<dd>— Use swig, underscore-tpl, web-component template, svg, mustache and other kinds of templates</dd>

	<dt>? Component may be utilised in different contexts: SVG, html, … How to describe that contexts?</dt>
	<dd>— </dd>

	<dt>? Component may have states</dt>
	<dd>— </dd>

	<dt>? Component may have decorators (also known as modifiers in BEM)</dt>
	<dd>— Now decorators are in separate file</dd>

	<dt>~? Component may include other components (Element in BEM)</dt>
	<dd>— Place elements inside of components. No need to describe separate of calendar data-component. You can always use it from calendar. No need to describe separate _dropcap_ component, you can use it from _typography_.</dd>

	<dt>? Don’t restrict or obligate casual style of coding, as it does component.js. </dt>
	<dd>— </dd>

	<dt>~? Use of classes</dt>
	<dd>— To use basic component in default style, assign `.some-component`. OR redefine class and use custom class `.some-component-custom`.</dd>

	<dt>✔ Use of packs</dt>
	<dd>Place pack in `packs`, redefine variables, make custom components.</dd>

</dl>


## Thoughts
There are main point of difference between abstract element types and specific elements that you see on the screen.
Element abstractions in matter of fact are UI-elements independent of specific representations like html-code, css3 style and so on. They are described as they are understood by people.
For example, button is something that has shape, it could have some text or shapes inside, it has states: normal, hover, push, disabled; usually button presented by `<input type="button"/>` or other. It’s preferably shows the pushability.
Table is something that has rows and columns. Besides, it often has header/subheader/footer. Odd rows are often coloured in a bit different shade, that doesn’t make contrast. Rows could be selected. Usually tables are presented by `<table>` html element.
So, that abstract description of data should accord to some specifications.

There are lots of known specific instances of elements. For example, button may be presented as a star, or as a windows-system-button, or any other kind of button. Instances are always related to context (same way the Color in graphics presented in different formats). So, the context may be html, Qt, png, canvas, svg, swing and any other format of rendering graphics.
So, the button in html-context will be rendered as `<input type="button">`.

UI kits usually include a set of some graphic primitives with specific style. Furthermore, that style is often related to context UI kit created, that may include background, light, mean tone.

UPD. There is [components](https://github.com/component) JS concept that helps to foundate these components. There is a sense to borrow some components to implement owns.


## Questions
Q: Is layout property of element itself, or it’s just some characteristic of group? Canvas?
A: Layout is a property of element itself and the container. Container characterizes default method of placing (read as kind of Layout Manager). Element defines it’s own role in layout placing type. E.g. default html flow layout may include inline-block, inline or block elements.

Q: how to solve guilloches? It’s kinda pattern-generator algorithm
A: Gulloches are a background type of element. Here is bitmap, color, gradient, shape or pattern. (may be other sources)

* ‽ How to implement data, that is related with element? It’s kind of Object Oriented interfaces pattern.

* ‽ Suppose you have an carousel of three visible items, that is some kind of sophisticated element. So, there is a bunch of images as data. Visually, you see just three of them: center, left and right, that are visible when you make transitions. 

* ? Suppose the situation where you want to output a list of some items (let it be posts), premixed with widgets. So, elements are formad based on some collection of data, and widgets just dilutes this collection. It’s kudago-like situation. How to implement this with components?


## Ideas
* Each element has actually not some states, but in fact is a state-machine. Suppose dropdown. It has states related with button press. It has states related with appearing of list. What about selection of items? Is it states? If states, then every row has states, related with drag/drop.

* Every interface is a sort of state-machine by fact. All that you do is making of such state machine. So programming languages are not the best way to perform state-machine programming tasks. It’d be better way to do that is having some sort of IDE, that is feasible for creating states easy way.  

* There are transitions between states.

* Interesting to note: width of paragraph is choosed in basis of feeling, where the length of row will be comfortable to read. That’s in every graphic motive. User chooses what size, proportion etc will be correct for given situation, it’s sense of beauty.

* Layout is a property of container and element. Actually, layout manager may be external and applied to element, like CSS-directive.


## Terms and Axioms
* Color
* Shape
* Bitmap
* Text style
	* Font-size, …
* Pattern (guilloche e.g.)
* Gradient
* Effect
* 

## Component properties:
* Model (data)
* States: 
* Rendering of model (where to output data-value)
* Nested elements
* Style
* Transitions (parameter, function)
* Layout

### Style properties:
* Shape
* Background
* Text, paragraph props
* Size
* Transforms
* Borders
* Paddings
* Layout type
* Effects

### Sort out
✔ Цвет и фон → bg, color 
✔ Бордюры и контуры → эффекты: bshad, tshad, border, 
✔ Шрифт → ff,fs,…
→ Абзац
✔ Многоколоночность → .content-columns
✔ Отступы → m, p, …
→ Позиционирование
Отображение (display, visibility)
✔ Трансформации → bootstrap transform mixins
✔ Анимация
✔ Переходы
? Интерфейс
✔ Размеры → .h, .w
Чередование
✔ Списки (элементозависимый)
✔ Таблицы (элементозависимый)
✔ Формы (элементозависимый)
✔ Ссылки (элементозависимый)
UI (элементозависимый)
Псевдоклассы
Псевдоэлементы


## Default elements
Default elements are classified by common categories.
Actually, it’s html spec + some common sense extensions.

* Generic
	* Element (rect, circ, path in general)
	* Text ← text style
* Typographic & content
	* Paragraph ← element with text
	* Header
		Header is element with text that intendet to use for …
		It has ierarchy level 
	* Ruler
	* Address
	* Article
	* Banner
	* Blockquote
	* Date/time
	* Therms list
	* Block
	* Figure
	* List
	* Typographics test
	* Table
* Forms
	* Button
	* Split button
	* Calendar
	* Captcha
	* Radio button
	* Radio button group
	* Checkbox
	* Checkbox group
	* Switch
	* Switch group
	* Form
	* Progress
	* Preloader
	* Rating
	* Search
	* Dropdown list
	* List
	* Combo box
	* Cycle button
	* Slider
	* Text field
	* Text area
	* Tree
	* Volume
	* Spinner
	* Datagrid
	* Date & time-pickers
	* Toggle button
	* Password
	* Suggest box
	* Rich text editor
	* Cell browser
	* 
* Navigation
	* NavBar
	* Breadcrumbs
	* Facet block
	* Pagins
	* Logo
	* Links list
	* Taglist
	* Tag
	* Metas
	* Filtering
	* Link
	* Tab
	* Scrollbar
	* Flipper up/down switch
* Output
	* Label
	* Balloon
	* Tooltip
	* Status bar
	* Progress bar
	* Info bar
	* Icon
* Containers (sort it out)
	* Window (any dialog including)
	* Accordion
	* Paletter window
	* Inspector window
	* Overlay
	* Dialog box
	* Frame or fieldset
	* Disclosure panel
* Layout
	* Page
	* Aside column
	* Container
	* Header
	* Footer
* Widget
	* News
	* Subscribe
	* Payment
	* Tags
	* Categories
	* Twitter
	* Weather
* Social
	* Comments
	* Social buttons
	* Avatars
	* Rate
	* Carma
	* Authentication form, buttons
	* Social widgets
* Media
	* Video
	* Image
	* Audio
	* Canvas
	* Graph
	* Embed
	* Iframe
	* Image
	* Gallery
	* Slider
	* Carousel
	* Zones Map
	* SVG
	* Geographic Map
* Menus
	* Menu
	* MenuBar
	* ContextMenu
	* PieMenu
	* Ribbon
	* Toolbar
* Ads


## Structure of JSON (sketch)
Collection of element is presented by pack. Each pack includes some meta-information and basic types of elements with default style.
```json
{
	"id": 1,
	"name": "default",
	"description":"Basic elements that are used everywhere",
	"elements":[
		…
	]
}
```

`elements` includes element objects:
```json
{
	"id": 1,
	"name": "Div",
	"description": "Simple div block for creating content on it's basis",
	"thumb":["small", "bigger", "biggest"],

	"html":"<div/>",
	"class":"e-block",
	"content": "Content of block",
	"style": ".e-block{width:100px; height: 100px; outline:1px dashed darkgray; background:lightgray}",
	"libraries":[],
	"actions":{},
	"resources":[],

	"tags":["section","div"],
	"classnames":["*container*","*block*","*div*","*wrapper*","*hold*"],
	"selector": "",

	"contextModifiers":["info"],
	"settings":null
},
…
```