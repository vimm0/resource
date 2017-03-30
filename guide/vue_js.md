Vue instance


Instance Methods/Events
``` 
1.vm.$on(event, callback)
2.vm.$once(event,callback)
3.vm.$off([event,callback])
4.vm.$emit(emit,[...args])
```
```
//html
<div id="counter-event-example">
  <p>{{ total }}</p>
  <button-counter v-on:increment="incrementTotal"></button-counter>
  <button-counter v-on:increment="incrementTotal"></button-counter>
</div>
//js
Vue.component('button-counter', {
  template: '<button v-on:click="increment">{{ counter }}</button>',
  data: function () {
    return {
      counter: 0
    }
  },
  methods: {
    increment: function () {
      this.counter += 1
      this.$emit('increment')
    }
  },
})
new Vue({
  el: '#counter-event-example',
  data: {
    total: 0
  },
  methods: {
    incrementTotal: function () {
      this.total += 1
    }
  }
})
```
```
//Not reactive avoid using $ref
<div id="parent">
  <user-profile ref="profile"></user-profile>
</div>
var parent = new Vue({ el: '#parent' })
// access child component instance
var child = parent.$refs.profile
```
