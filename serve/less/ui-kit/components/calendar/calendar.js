var Calendar = function(){
	this.create();
}

extend(Calendar.prototype, {
	"class": "calendar",
	"attributes": {

	},

	//Options
	options:{
		selected: null //which item is selected, may be an array?
	},

	//Data is an object that represents model of component that should be rendered in some way by render method.
	//Differs from options by persistency, so, options may change, but data represents domain-area things, business-model.
	data: {

	}

	create: function () {
		var self = this, o = self.options;

		return self;
	},

	render: function(data, options){
		//TODO:should return rendered template with passed data and options
	}
})