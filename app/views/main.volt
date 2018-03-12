<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Created by Alex F for DTT</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{ stylesheet_link('/css/styling.css') }}
</head>
<body>
<div id="MainDiv">
    <a href="{{ url('/') }}">{{ image('/img/DTTlogo.png', "alt": "DTT Logo", 'style': 'width:230px;height:85px;margin-top:9px; margin-left:1%') }}</a>
    {% if session.has('auth') %}
        <div class="loggedIn">
            <hr id="skyblue-line">
            <h5 class="widgetNews">Widget news Admin</h5>
            <p>You are currently logged in as an Admin. {{ link_to('user/logout', 'Log out') }}</p>
            <hr id="skyblue-line">
        </div>
    {% endif %}
    {% block content %}{% endblock %}
    <p id="adminPage">
        DTT Multimedia &copy; 2015. All rights reserved. {{ link_to('post/index', 'Site Admin') }}
    </p>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>