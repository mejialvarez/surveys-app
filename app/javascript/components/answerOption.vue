<style scoped>
  .option {
    margin: 15px 0 0 15px;
    padding: 0 0 15px 0; 
    border-bottom: 2px solid #f5f5f5;;
  }
</style>

<template>
  <div class="option">
    <div class="field">
      <label :for="`survey_questions_attributes_${questionIndex}_answer_options`" class="label">
        Answer title
      </label>
      <div class="control">
        <input type="text" :name="`survey[questions_attributes][${questionIndex}][answer_options][]`" :id="`survey_questions_attributes_${questionIndex}_answer_options`" class="input" required v-model.trim="title">
      </div>
      <p class="help is-danger" v-if="!$v.title.required">
        Field is required
      </p>
      <p class="help is-danger" v-if="!$v.title.minLength">
        Title must have at least {{$v.title.$params.minLength.min}} letters.
      </p>
    </div>
  </div>
</template>

<script>
  import { required, minLength } from 'vuelidate/lib/validators'
  export default {
    props: ['questionIndex'],
    data() {
      return {
        title: ''
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