// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//require("@rails/ujs").start()
require("turbolinks").start()
import '../stylesheets/application'
import TurbolinksAdapter from 'vue-turbolinks';
import Vuelidate from 'vuelidate';
import Vue from 'vue/dist/vue.esm';
import surveyForm from '../components/surveyForm.vue';
import questionField from '../components/questionField.vue';
import answerOption from '../components/answerOption.vue';

Vue.use(Vuelidate)
Vue.use(TurbolinksAdapter)

Vue.component('survey-form', surveyForm);
Vue.component('question-field', questionField);
Vue.component('answer-option', answerOption);

document.addEventListener('turbolinks:load', () => {
 const app = new Vue({
   el: '[data-behavior="vue"]'
 })
})
