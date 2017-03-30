### Difference between CommonJs, AMD and RequireJs

CommonJS is a project to define a common API and ecosystem for JavaScript. One part of CommonJS is the Module specification. Node.js and RingoJS are server-side JavaScript runtimes, and yes, both of them implement modules based on the CommonJS Module spec.

AMD (Asynchronous Module Definition) is another specification for modules. RequireJS is probably the most popular implementation of AMD. One major difference from CommonJS is that AMD specifies that modules are loaded asynchronously - that means modules are loaded in parallel, as opposed to blocking the execution by waiting for a load to finish.

AMD is generally more used in client-side (in-browser) JavaScript development due to this, and CommonJS Modules are generally used server-side. However, you can use either module spec in either environment - for example, `RequireJS offers directions for running in Node.js and browserify is a CommonJS Module implementation that can run in the browser`.

Actually, CommonJS is much more than an API declaration and only a part of it deals with that. AMD started as a draft specification for the module format on the CommonJS list, but full consensus wasn't reached and further development of the format moved to the amdjs group. Arguments around which format is better state that CommonJS attempts to cover a broader set of concerns and that it's better suited for server side development given its synchronous nature, and that AMD is better suited for client side (browser) development given its asynchronous nature and the fact that it has its roots in Dojo's module declaration implementation.

CommonJS and AMD are specifications (or formats) on how modules and their dependencies should be declared in javascript applications.

RequireJS is a script loader library that is AMD compliant, curljs being another example.

#### CommonJS compliant:

Taken from Addy Osmani's book.

```
// package/lib is a dependency we require
var lib = require( "package/lib" );

// behavior for our module
function foo(){
    lib.log( "hello world!" );
}

// export (expose) foo to other modules as foobar
exports.foobar = foo;
```
#### AMD compliant:

```
// package/lib is a dependency we require
define(["package/lib"], function (lib) {

    // behavior for our module
    function foo() {
        lib.log( "hello world!" );
    }

    // export (expose) foo to other modules as foobar
    return {
        foobar: foo
    }
});
```
#### Somewhere else the module can be used with:

```
require(["package/myModule"], function(myModule) {
    myModule.foobar();
});
```

#### AMD:
- One browser-first approach
- Opting for asynchronous behavior and simplified backwards compatibility
- It doesn't have any concept of File I/O.
- It supports objects, functions, constructors, strings, JSON and many other types of modules.

#### CommonJS:
- One server-first approach
- Assuming synchronous behavior
- Cover a broader set of concerns such as I/O, File system, Promises and more.
- Supports unwrapped modules, it can feel a little more close to the ES.next/Harmony specifications, freeing you of the define() wrapper that AMD enforces.
- Only support objects as modules.
