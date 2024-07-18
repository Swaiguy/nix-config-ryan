{lib}: {
  username = "kry";
  userfullname = "The Individual Known As";
  useremail = "lastresortcode@gmail.com";
  networking = import ./networking.nix {inherit lib;};
  users.users.kry.initialHashedPassword = "123";
}
