{% extends 'main.volt' %}

{% block content %}
    <hr id="skyblue-line">
    {{ flashSession.output() }}<br/>
    <!-- foreach to get all posts-->
    {% for post in posts %}
        <p>
            <table>
                <tr>
                    <td>
                        <p class="created">
                            <!--date created of post-->
                            {{ post.created }}
                        </p>
                    </td>
                    <td>
                        <!-- title of post-->
                        <h4 class="title">
                            {{ post.title|e }}
                        </h4>
                        <br/>
                    </td>
                </tr>
            </table>
            <!-- summary of post-->
            {{ post.summary }}
            <br/>
            <p>
                {{ link_to( 'index/show/' ~ post.id,'Details') }}
                {% if session.has('auth') %}
                    - {{ link_to('post/edit/' ~ post.id, 'Edit Post') }}
                {% endif %}
            </p>
        </p>
    {% endfor %} <br/>
    {{ link_to('index/archive/', 'Article Archive') }}
{% endblock %}



