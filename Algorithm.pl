 #!/usr/bin/perl

      sub part {
        my ($n, $b, $min) = @_;
        $min = 0 unless defined $min;

        # base case
        if ($b == 0) {
          if ($n == 0) { return ( [] ) }
          else         { return ()     }
        }

        my @partitions;
        for my $first ($min .. $n) {
          my @sub_partitions = part($n - $first, $b-1, $first);
          for my $p ( part(131, 3) ) {
            print "@$p\n";
	    push @partitions, [$first, @$sp];
          }
        }
        return @partitions;
      }