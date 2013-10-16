Facter.add("pqsql_percentage") do
  setcode do
    Facter::Util::Resolution.exec("df -P /opt/puppet/var/lib/pgsql | grep -v Filesystem | awk '{ print $5 }' | sed s/%//")
  end
end
