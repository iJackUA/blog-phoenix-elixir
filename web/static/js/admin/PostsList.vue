<template>
<div>
  <div class="ui vertical menu">
    <div class="item">
      <div class="ui transparent icon input">
        <input type="text" placeholder="Search posts...">

      </div>
    </div>
    <a v-for="post in posts" class="teal item active">
      {{ post.title }}
      <div class="ui teal left label">Published</div>
    </a>
  </div>

  <multi-select v-model="mvalue" :options="moptions"></multi-select>

  <medium-editor :text='myText' v-on:edit='applyTextEdit'>

</div>

</template>

<script>
export default {
  data(){
    return {
      posts: [
        { id:1, title: 'Abc', url: '/posts/edit/1' },
        { id:2, title: 'Qwe', url: '/posts/edit/2' },
        { id:3, title: 'Asd', url: '/posts/edit/3' }
      ],
      mvalue: 'of',
      moptions: ['list', 'of', 'options'],
      myText: 'Hello Blog!'
    }
  },
  methods: {
    applyTextEdit(){
      console.log('Editor save');
    }
  }
}
</script>

<style lang="scss" scoped>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
.hey {
  font-size: 40px;
  .abc{
    color: red;
  }
}
</style>
