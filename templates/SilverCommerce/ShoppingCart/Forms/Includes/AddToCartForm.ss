<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
	<% if $Message %>
	<p id="{$FormName}_error" class="message $MessageType">$Message</p>
	<% else %>
	<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
	<% end_if %>

	<fieldset>
		<% if $Legend %><legend>$Legend</legend><% end_if %>
		<% loop $Fields %>
            <% if $Name != "Quantity" %>
			    $FieldHolder
            <% end_if %>
		<% end_loop %>
		<div class="clear"><!-- --></div>
	</fieldset>

	<% if $Actions %>
	<div class="btn-toolbar">
        <% loop $Fields %>
            <% if $Name == "Quantity" %>
			    $FieldHolder
            <% end_if %>
		<% end_loop %>
		<% loop $Actions %>
			$Field
		<% end_loop %>
	</div>
	<% end_if %>
<% if $IncludeFormTag %>
</form>
<% end_if %>
