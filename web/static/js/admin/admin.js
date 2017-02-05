import Vue from 'vuejs'
import PostsList from './PostsList'

Vue.config.debug = process.env.NODE_ENV !== 'production';

new Vue({
  el: '#admin-app',
  components: {
    'posts-list': PostsList
  }
})
