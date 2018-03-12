{% extends 'main.volt' %}

{% block content %}

    <hr id="skyblue-line">
    <article>
        <h1 id="Titel">
            <!--Get title from the post-->
            {{ post.title|e }}
        </h1>

        <h5><i id="summaryText">
                <!--Get summary from the post-->
                {{ post.summary }}
            </i></h5>
        <div id="textDiv" align="left">
            <!--content from the post-->
            {{ post.content }}
        </div>
        <p style="color: orange;">
            <!--Get date of the post-->
            Published on {{ post.created }}
        </p>
    </article>

    <p style="color: purple;">
        {{ link_to('index', 'Return to homepage') }}
    </p>

    {% if session.has('auth') %}
        <p style="color: purple;">
            {{ link_to('post/edit/' ~ post.id, 'Edit Post') }}
        </p>
    {% endif %}
{% endblock %}