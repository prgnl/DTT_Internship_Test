{% extends 'main.volt' %}

{% block content %}
    <hr id="skyblue-line">
    <h1 id="archiveTitle">Article Archive</h1>
    <!-- foreach to get all posts-->
    {% for post in posts %}
        <article>
        <table>
            <tr>
                <td>
                    <p class="created">
                        <!-- date-->
                        {{ post.created }}
                </td>
                <td>
                    <!--title of post -->
                    <h4 class="title">
                        {{ post.title|e }}
                    </h4>
                    <br/>
                </td>
            </tr>
        </table>
        <p>
            <!-- summary of post -->
            {{ post.summary }}
            <br/>
        </p>
        <p>
            {{ link_to('index/show/' ~ post.id, 'Details') }}
            {% if session.has('auth')  %}
                - {{ link_to('post/edit/' ~ post.id, 'Edit Post') }}
            {% endif %}
        </p>
    {% endfor %}
    <p>
        <!-- counts all posts that are in db -->
        {{ posts|length }} Articles in total.
    </p>
    <p>
        {{ link_to( 'index', 'Return to homepage') }}
    </p>
    </article>
{% endblock %}
