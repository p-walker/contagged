{include file="header.tpl"}

<div id="help">
<h2>Adding LDAP-Access to your Mailclient</h2>

<h3>Public Addressbook</h3>

<p>Use these settings to connect to the public addressbook:</p>
<dl>
  <dt>LDAP-Server</dt>
  <dd><code>{$conf.ldapserver}</code></dd>

  <dt>Bind-DN</dt>
  <dd><code>leave empty</code> (anonymous bind)</dd>

  <dt>Bind-Password</dt>
  <dd><code>leave empty</code> (anonymous bind)</dd>

  <dt>Base/Search-DN</dt>
  <dd><code>{$conf.publicbook}</code></dd>
</dl>

<h3>Private Addressbook</h3>

{if $binddn && $conf.privatebook}
<p>To access your personal address data use these settings:</p>
<dl>
  <dt>LDAP-Server</dt>
  <dd><code>{$conf.ldapserver}</code></dd>

  <dt>Bind-DN</dt>
  <dd><code>{$binddn}</code></dd>

  <dt>Bind-Password</dt>
  <dd><code>your password</code> (The one you used to login here)</dd>

  <dt>Base/Search-DN</dt>
  <dd><code>{$conf.privatebook},{$binddn}</code></dd>
</dl>
{else}
<p>Login to see this data</p>
{/if}

</div>

{include file="footer.tpl"}
