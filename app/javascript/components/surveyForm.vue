<style scoped>
  .question-fields-box {
    margin: 10px 0;
  }
</style>

<template>
  <form :action="action" accept-charset="UTF-8" method="post">
    <input type="hidden" name="authenticity_token" :value="token">

    <div class="field">
      <label for="survey_title" class="label">
        Survey title
      </label>
      <div class="control">
        <input type="text" name="survey[title]" id="survey_title" class="input" v-model.trim="title" required>
      </div>
      <p class="help is-danger" v-if="!$v.title.required">
        Field is required
      </p>
      <p class="help is-danger" v-if="!$v.title.minLength">
        Title must have at least {{$v.title.$params.minLength.min}} letters.
      </p>
    </div>

    <div class="question-fields-box">
      <button v-on:click="addQuestion" class="button is-small">Add question</button>
      <question-field v-for="(question, index) in questions" :key="index" :index="index" />
    </div>

    <input type="submit" name="commit" value="Create" class="button is-success is-small is-pulled-right">
  </form>
</template>

<script>
  import { required, minLength } from 'vuelidate/lib/validators'
  export default {
    props: ['token', 'action'],
    data() {
      return {
        title: '',
        questions: [{title: ''}]
      }
    },
    methods: {
      addQuestion: function (event) {
        event.preventDefault()
        this.questions.push({title: ''})
      }
    },
    validations: {
      title: {
        required,
        minLength: minLength(4)
      }
    }
  }
</script>