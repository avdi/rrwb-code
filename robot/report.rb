class Report
  def Report.report(out, machines, robot)
    out.print "FACTORY REPORT\n"
    report_machines(out, machines)
    report_robot(out, robot)
    out.print "========\n"
  end

  def self.report_robot(out, robot)
    out.print "Robot"
    if robot.location != nil
      out.print " location=#{robot.location.name}"
    end
    report_bin(out, robot)
    out.print "\n"
  end

  def self.report_machines(out, machines)
    machines.each do |machine|
      out.print "Machine #{machine.name}"
      report_bin(out, machine)
      out.print "\n"
    end
    out.print "\n"
  end

  def self.report_bin(out, device)
    out.print " bin=#{device.bin}" if device.bin != nil
  end
end
