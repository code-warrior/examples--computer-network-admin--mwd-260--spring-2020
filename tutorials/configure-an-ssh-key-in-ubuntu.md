# Configure an SSH Key in Ubuntu
1. Launch The Terminal and navigate to your home folder:
    ```bash
    cd
    ```
2. You should have a `.ssh` folder in your home folder. Descend into it:
    ```bash
    cd .ssh
    ```
3. Generate an RSA-type SSH key with your email as a comment:
    ```bash
    ssh-keygen -t rsa -C "YOUR_EMAIL_HERE@YOUR_DOMAIN"
    ```
    Of course, replace `YOUR_EMAIL_HERE@YOUR_DOMAIN` with your email.
4. You’ll be prompted to save the file in `~/.ssh/id_rsa`. Do so by typing the `enter` key.
5. You’ll now be asked to enter a passphrase, which is a string of text — including spaces — that is longer than a simple password. If you type `enter`, no passphrase will be associated with the key. Although acceptable, *this is not advisable*.
6. You should see a private key (`id_rsa`) and a public key (`id_rsa.pub`) in the `.ssh` folder.
7. Load the SSH key into the authentication agent:
    ```bash
    ssh-add
    ```
    If you added a password in step 5, you’ll be prompted for it in this step.
8. With your private key ready and loaded onto your local computer, the public key must now be setup with the remote host in order to carry out the authentication handshake.
9. Copy the entire contents of `id_rsa.pub` into your clipboard. You may do this using the traditional method using a text editor. Or, if you set up your environment with the files in the enclosed `environment` folder, then you can mimic macOS’s `pbcopy` as follows:
    ```bash
    pbcopy < ~/.ssh/id_rsa.pub
    ```
10. Visit [this link](http://www.essential-html.com/generating-an-ssh-key-for-mac-os-x-with-github-or-bitbucket/) and pick up at step 10.
