{% extends 'main.volt' %}

{% block content %}
    <div style="background-color: #ffa50052;
    -webkit-box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
      -moz-box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
      box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
    padding: 20px;">

        <!--below is a form to create an article -->

        {{ form('post/Success', 'class': 'form', 'autocomplete': 'off') }}
        <div class="form-group">
            <br/>
            <label class="control-label" for="title">Title</label>
            {{ text_field("title", 'size': "128", "width": "100%", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="summary">Summary</label>
            {{ text_area("summary", 'rows': "5", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="content">Content</label>
            {{ text_area("content", 'rows': "4",  'cols': "6", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="date">Date</label>
            {{ date_field("created", "12-16-2017", "class": "form-control") }}
        </div>
        <div class="form-group">
            {{ submit_button("Publish Article", 'class': 'btn btn-primary btn-large') }}
            {{ link_to('post/index','Cancel') }}
        </div>
        {{ end_form() }}
    </div>
{% endblock %}