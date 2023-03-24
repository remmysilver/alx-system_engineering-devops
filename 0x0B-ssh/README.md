<h1 class="gap">0x06. SSH</h1>


<h4 class="task">
    0. Use a private key
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Write a Bash script that uses <code>ssh</code> to connect to your server using the private key <code>~/.ssh/holberton</code> with the user <code>ubuntu</code>.</p><p>Requirements:</p><ul>
<li>Only use <code>ssh</code> single-character flags</li>
<li>You cannot use <code>-l</code></li>
<li>Do not need to handle the case of a private key protected by a passphrase</li>
</ul>


<h4 class="task">
    1. Create a SSH key pair
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Write a Bash script that creates a RSA key pair.</p><p>Requirements:</p><ul>
<li>Name of the created private key must be <code>holberton</code></li>
<li>Number of bits in the created key to be created 4096</li>
<li>The created key must be protected by a passphrase</li>
</ul><p>Example:</p>


<h4 class="task">
    2. Client configuration file
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Your Ubuntu Vagrant machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password.
Share your SSH client configuration in your answer file.</p><p>Requirements:</p><ul>
<li>Your SSH client configuration must be configured to use the private key <code>~/.ssh/holberton</code></li>
<li>Your SSH client configuration must be configured to refuse to authenticate using a password</li>
</ul><p>Example:</p>


<h4 class="task">
    3. Let me in!
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Now that you successfully connect to your server, we would also like to join the party.</p><p>Add the SSH public key bellow to your server so that we can connect using the <code>ubuntu</code> user.</p>

