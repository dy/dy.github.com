---
layout: post
title: Vows assertions
published: true
category: blog
tags: [programming, js]
language: english
---
# Vows assert

There’s some notes about js assert in vows, particularly.

1. `assert.deepEqual(a,b)` makes object equation. E.g. while `assert.equal({a:1} === {a:1})` → `false`, `assert.deepEqual({a:1} === {a:1})` → `true`.

Example:
```javascript
…
'Test color':{
	'Hex short: new G.Color("#6Fa")' : {			
		topic: function(){
			var c = new G.Color("#6fa")
			return c;
		},
		'toJSON() is {r:102, g:255, b:170}' : function(color){
			assert.deepEqual(color.toJSON({model:"rgb"}), {r:102, g:255, b:170})
		}
	},
}
…
```

2. A few assertions will be passed as true only if every assertion has succeeded.

```
'Test color':{
	'Hex short: new G.Color("#6Fa")' : {			
		topic: function(){
			var c = new G.Color("#6fa")
			return c;
		},
		'test' : function(color){
			assert.equal(1,1)
			assert.equal(2,2)
			assert.equal(1,2)
			//will fail
		}
	},
}
```