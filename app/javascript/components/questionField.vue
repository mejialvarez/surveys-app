<template>
  <div class="box">
    <div class="field">
      <label :for="`survey_questions_attributes_${index}_title`" class="label">
        Question title {{ index }}
      </label>
      <div class="control">
        <input type="text" :name="`survey[questions_attributes][${index}][title]`" :id="`survey_questions_attributes_${index}_title`" class="input" required v-model.trim="title">
      </div>
      <p class="help is-danger" v-if="!$v.title.required">
        Field is required
      </p>
      <p class="help is-danger" v-if="!$v.title.minLength">
        Title must have at least {{$v.title.$params.minLength.min}} letters.
      </p>
    </div>

    <button v-on:click="addAnswer" class="button is-small">Add answer</button>
    <div class="options">
      <answer-option v-for="answerOption in answerOptions" :key="answerOption.id" :questionIndex="index"/>
    </div>
  </div>
</template>

<script>
  import { required, minLength } from 'vuelidate/lib/validators'
  export default {
    props: ['index'],
    data() {
      return {
        title: '',
        answerOptions: [{title: ''}]
      }
    },
    methods: {
      addAnswer: function (event) {
        event.preventDefault()
        this.answerOptions.push({title: ''})
      }
    },
    validations: {
      title: {
        required,
        minLength: minLength(4)
      }
    }
  };
</script>