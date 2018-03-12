{% extends 'main.volt' %}

{% block content %}
    <h2 style="color: red;">Edit an article</h2>
    <div style="background-color: #ffa50052;
    -webkit-box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
    box-shadow: 0px 2px 13px 3px rgba(0,0,0,0.75);
    padding: 20px;">
        <!--this is a form to edit an article.-->
        {{ form('post/save/' ~ id, 'class': 'form', 'autocomplete': 'off') }}
        <div class="form-group">
            <br/>
            <label for="Title">Article Title</label>
            {{ text_field('title', 'size': "100", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="summary">Article Summary</label>
            {{ text_area('summary', 'rows': "5", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="content">Article Content</label>
            {{ text_area('content', 'cols': '100', 'rows': "10", "class": "form-control") }}
        </div>
        <div class="form-group">
            <label for="created">Publication Date</label>
            {{ date_field('created', 'size': '100', "class": "form-control") }}
        </div>
        <div class="form-group">
            {{ hidden_field("id") }}
            {{ submit_button('Save', 'class': 'btn btn-primary btn-large') }}
            {{ link_to('post/index','Cancel') }}
        </div>
        {{ end_form() }}
    </div><br/>
{% endblock %}