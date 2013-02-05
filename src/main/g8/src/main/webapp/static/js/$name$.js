/*global Object, $ */  // declare external dependencies for JSLint

/*!
 * $name$.js - objects and functions needed by all files in the library.
 */

if (!window.$name$) {
    /*
     * Create a single global namespace for $name$.
     * (This will eventually move out of this file)
     */
    $name$ = {

        /**
            A convenience function for parsing string namespaces and
            automatically generating nested namespaces

            @param {String} ns_string A namespace path
            @returns {Object} the namespace object at the end of the path

            @example
            // extend $name$ with a deeply nested namespace
            var mod = $name$.namespace("$name$.modules.module2");
        */
        namespace: function(ns_string) {
            var parts = ns_string.split("."),
                parent = $name$,
                pl;

            pl = parts.length;

            for ( var i = 0; i < pl; i++ ) {
                // create a property if it doesn't exist
                if ( typeof parent[parts[i]] === "undefined" ) {
                    parent[parts[i]] = {};
                }

                parent = parent[parts[i]];
            }

            return parent;
        }
    };
}


/*
 * To add a bit of "Class" like behavior, the library makes use of
 * the following simple and well-known code snippet written by the creator of jQuery.
 * http://ejohn.org/blog/simple-javascript-inheritance/
 *
 * The merits of adding class-like behavior to JavaScript is a subject of
 * endless debate. This minimal implementation was chosen for the concise
 * and readable "class" definitions, the "extend" idiom, the ability to defer initialization
 * (useful for "heavier" base classes/protoypes), and the fact that it doesn't
 * stray too far from the native prototypal behavior of JavaScript. (i.e. it wouldn't
 * be too hard to undo if we change our minds).
 */

// http://ejohn.org/blog/simple-javascript-inheritance/

/* Simple JavaScript Inheritance
 * By John Resig http://ejohn.org/
 * MIT Licensed.
 */
// Inspired by base2 and Prototype
(function(){
  var initializing = false, fnTest = /xyz/.test(function(){xyz;}) ? /\b_super\b/ : /.*/;
  // The base Class implementation (does nothing)
  this.Class = function(){};

  // Create a new Class that inherits from this class
  Class.extend = function(prop) {
    var _super = this.prototype;

    // Instantiate a base class (but only create the instance,
    // don't run the init constructor)
    initializing = true;
    var prototype = new this();
    initializing = false;

    // Copy the properties over onto the new prototype
    for (var name in prop) {
      // Check if we're overwriting an existing function
      prototype[name] = typeof prop[name] == "function" &&
        typeof _super[name] == "function" && fnTest.test(prop[name]) ?
        (function(name, fn){
          return function() {
            var tmp = this._super;

            // Add a new ._super() method that is the same method
            // but on the super-class
            this._super = _super[name];

            // The method only need to be bound temporarily, so we
            // remove it when we're done executing
            var ret = fn.apply(this, arguments);
            this._super = tmp;

            return ret;
          };
        })(name, prop[name]) :
        prop[name];
    }

    // The dummy class constructor
    function Class() {
      // All construction is actually done in the init method
      if ( !initializing && this.init )
        this.init.apply(this, arguments);
    }

    // Populate our constructed prototype object
    Class.prototype = prototype;

    // Enforce the constructor to be what we expect
    Class.prototype.constructor = Class;

    // And make this class extendable
    Class.extend = arguments.callee;

    return Class;
  };
})();


$name$.Base = Class.extend({
});

$name$.Service = $name$.Base.extend({
});

$name$.Page = $name$.Base.extend({
});

$name$.namespace('widgets');

$name$.widgets.Widget = $name$.Base.extend({

    //----------------------------------
    // Set up some basic event handling
    //----------------------------------

    // Make an event available to listeners.
    addEvent: function(eventName) {
        this._eventListeners = this._eventListeners || {};
        this._eventListeners[eventName] = [];
    },

    // Notify listeners.
    fireEvent: function(eventName /*[, args]*/) {
        var listeners = this._eventListeners[eventName],
            // copy all but the first argument
            args = Array.prototype.slice.call(arguments, 1),
            listener;

        if (listeners) {
            for (var i=0; i < listeners.length; i++) {
                listener = listeners[i];
                listener.handler.apply(listener.scope || this, args);
            }
        }
        else {
            throw new Error('no listeners for event: ' + eventName);
        }
    },

    // Listen for an event by registering a handler/callback.
    on: function(eventName, eventHandler, scope) {
        var listeners = this._eventListeners[eventName];
        if (!listeners) {
            throw new Error('event (' + eventName + ') is not available');
        }
        if (!(eventHandler instanceof Function)) {
            throw new TypeError('eventHandler for event ' + eventName + ' should be a function');
        }
        listeners.push({handler: eventHandler, 'scope': scope});
    },

    // Stop listening to an event
    un: function(eventName, eventHandler, scope) {
        var filteredListeners = [],
            listeners = this._eventListeners[eventName],
            listener,
            len,
            i;

        // filter out listeners with matching handler and scope
        for (i=0; i < listeners.length; i++) {
            listener = listeners[i];
            if (listener.handler !== eventHandler || listener.scope !== scope) {
                filteredListeners.push(listener);
            }
        }
        this._eventListeners[eventName] = filteredListeners;
    },

    clearEvents: function() {
        this._eventListeners = {};
    },

    init: function() {
        this.clearEvents();
    }
});

