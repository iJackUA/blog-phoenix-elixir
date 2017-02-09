import Vue from 'vuejs'
import PostsList from './PostsList'
import MultiSelect from 'vue-multiselect'
import MediumEditor from './v-medium-editor'

Vue.config.debug = process.env.NODE_ENV !== 'production';

//Vue.http.headers.common['X-CSRF-TOKEN'] = document.getElementById('token').getAttribute('value');
Vue.component("multi-select", MultiSelect);
Vue.component("medium-editor", MediumEditor);

new Vue({
  el: '#admin-app',
  components: {
    'posts-list': PostsList
  }
})
