{% extends 'main.volt' %}

{% block content %}
    <div id="form">
        {{ form('session/login', 'class': 'form', 'autocomplete': 'off') }}
        <br/>
        {{ flashSession.output() }}<br/>
        <div class="form-group">
            <label class="control-label" for="login">Username</label>
            {{ text_field('login', 'size': 120, 'placeholder': 'Your admin username', 'class': 'form-control') }}
        </div>
        <div class="form-group">
            <label class="control-label" for="password">Password</label>
            {{ password_field('password', 'size': 150, 'placeholder': 'Your admin Password', 'class': 'form-control') }}
        </div>
        <div class="form-group">
            {{ submit_button('Login', 'class': 'btn btn-primary btn-large') }}
        </div>
        {{ end_form() }}
    </div>
{% endblock %}