#!/usr/bin/perl
use MIME::Entity;

$message = MIME::Entity->build(
  Type    => "multipart/mixed",
  From    => "wdi\@ga.co",
  To      => "mike.hopper\@ga.co",
  Subject => "Report attached" );

$message->attach(Data=>"Here is the report, as promised.");

$message->attach(
  Path     => "/Users/drmikeh/.wdi/install-fest.log",
  Type     => "text/plain");

open MAIL, "| /usr/sbin/sendmail -t -oi";
$message->print(\*MAIL);
close MAIL;
