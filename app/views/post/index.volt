{% extends 'main.volt' %}

{% block content %}
    <!--this is a div for the class table, its scrollable if it has too many articles meaning it wont go below the page.) -->
    <h1 style="color: red;">All Articles</h1>
    <div id="tableInfo">
        <p>
        <table class="table">
            <tr style="background-color: orange; color: white;">
                <th>Publication Date</th>
                <th>Article</th>
                <th>Action</th>
            </tr>
            {% for post in posts %}
                <tr>
                    <!--uses foreach to get all posts and gets date and title of the posts, also button edit and delete is next to each post for easy access.) -->
                    <td>{{ post.created }}</td>
                    <td>{{ post.title|e }}</td>
                    <td>
                        {{ link_to('post/edit/' ~ post.id, 'Edit') }}
                        {{ link_to('post/delete/' ~ post.id, 'Delete') }}
                    </td>
                </tr>
            {% endfor %}
        </table>
        <!--count the articles-->
        <p>
            {{ posts|length }} Articles in total.
        </p>
    </div>
    <!--Links to create a new post-->
    {{ link_to('post/create/', 'Create a new Article') }}
    </p>
{% endblock %}