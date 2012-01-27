package RT::Extension::ReminderImproved;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.03';

1;

__END__

=head1 NAME

RT::Extension::ReminderImproved - Improvements to the build in reminder function

=head1 DESCRIPTION

This plugin improve the build in reminder function of RT 3.8 with this features:

	* 'RT at a glance' page shows only overdue reminders
	* new page unter Tools/Reminder to show new/open reminders for current user
	* better reminder layout on 'RT at a glance' page
	* better reminder layout on ticket page
	* bugfix: reminder date don't respect user timezone
	* bugfix: don't record two transactions (AddLink and AddReminder) on reminder create
	* bugfix: don't show to many user in owner list at edit reminder
	* bugfix: only record ticket transaction on success

The changes in this extension are already included in RT 4.0.

=head1 TODO

The following features are on the TODO list:

	* email about overdue reminder
	* show 'nearly' overdue reminder on the 'RT at a glance' page
	* use collection to show reminder lists

=head1 INSTALLATION

Installation instructions for RT-Extension-ReminderImproved:

	1. perl Makefile.PL
	2. make
	3. remove old Extension: rm -rf /opt/rt3/local/plugins/RT-Extension-ReminderImproved
	4. make install
	5. Add 'RT::Extension::ReminderImproved' to @Plugins in /opt/rt3/etc/RT_SiteConfig.pm
	6. Clear mason cache: rm -rf /opt/rt3/var/mason_data/obj
	7. Restart webserver

=head1 AUTHOR

Christian Loos <cloos@netcologne.de>

=head1 COPYRIGHT AND LICENCE

Copyright (C) 2010-2011, NetCologne GmbH.
This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
