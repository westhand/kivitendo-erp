# This file has been auto-generated. Do not modify it; it will be overwritten
# by rose_auto_create_model.pl automatically.
package SL::DB::ValidityToken;

use strict;

use parent qw(SL::DB::Object);

__PACKAGE__->meta->table('validity_tokens');

__PACKAGE__->meta->columns(
  id          => { type => 'serial', not_null => 1 },
  itime       => { type => 'timestamp', default => 'now()', not_null => 1 },
  scope       => { type => 'text', not_null => 1 },
  token       => { type => 'text', not_null => 1 },
  valid_until => { type => 'timestamp', not_null => 1 },
);

__PACKAGE__->meta->primary_key_columns([ 'id' ]);

__PACKAGE__->meta->unique_keys([ 'scope', 'token' ]);

__PACKAGE__->meta->allow_inline_column_values(1);

1;
;
