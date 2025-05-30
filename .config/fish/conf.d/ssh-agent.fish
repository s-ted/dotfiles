#if not set -Uq SSH_KEYS_TO_AUTOLOAD
  # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
  # To remove a key, set -U --erase SSH_KEYS_TO_AUTOLOAD[index_of_key]

  set -Ue SSH_KEYS_TO_AUTOLOAD

  set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/git.pem
  set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/id_rsa.github-perso.pem
  set -Ua SSH_KEYS_TO_AUTOLOAD ~/.ssh/perso.pem

  keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
#end
