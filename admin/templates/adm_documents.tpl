{% comment %}

# Copyright 2011, hast. All rights reserved.
#
# This program is free software: you can redistribute it and/or modify it 
# under the terms of the GNU Affero General Public License as published by 
# the Free Software Foundation, either version 3 of the License, or (at 
# your option) any later version.

{% endcomment %}
<script type="text/javascript">

function remove(id) {
	Gload('{% url document_remove "'+id" %}, function() {Iload('{% url admin_documents %}');});
}

</script>

<h1>Documents</h1>

<table class="thread_list">
<tr><th>#id</th><th>course</th><th>document</th><th>owner</th><th>actions</th></tr>
{% for d in object_list %}
<tr><td>{{ d.id }}</td><td>{{ d.refer.slug }}</td><td><a href="{% url view_file d.id %}" onclick="return Iload('{% url view_file d.id %}');">{{ d.name }}</a></td>
    <td>{{ d.owner.username }}</td><td><span class="action_link" onclick="remove({{d.id}});">rm</span></td></tr>
{% endfor %}
</table>
