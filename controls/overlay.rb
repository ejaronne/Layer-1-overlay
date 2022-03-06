# encoding: utf-8

include_controls "redhat-enterprise-linux-7-stig-baseline" do
  
  control "V-71933" do
    impact 0.0
    desc 'caveat', 'This is Not Applicable for the project since we have an approved risk-based decision on 10/1/2021 allowing reuse of old passwords'
    describe 'This is Not Applicable for the project since we have an approved risk-based decision on 10/1/2021 allowing reuse of old passwords' do
      skip 'This is Not Applicable for the project since we have an approved risk-based decision on 10/1/2021 allowing reuse of old passwords'
    end
  end 
  
	 control "V-71935" do
			title "The Red Hat Enterprise Linux operating system must be configured so
		that passwords are a minimum of 19 characters in length."
			desc 'caveat', 'The project1 requires more secure password length of 19 characters as approved on 12/12/2021'
			desc  "check", "
				Verify the operating system enforces a minimum 19-character password
		length. The \"minlen\" option sets the minimum number of characters in a new
		password.
				Check for the value of the \"minlen\" option in
		\"/etc/security/pwquality.conf\" with the following command:
				# grep minlen /etc/security/pwquality.conf
				minlen = 19
				If the command does not return a \"minlen\" value of 19 or greater, this is
		a finding.
			"
			desc  "fix", "
				Configure operating system to enforce a minimum 19-character password
		length.
				Add the following line to \"/etc/security/pwquality.conf\" (or modify the
		line to have the required value):
				minlen = 19
			"
	end
	
      
end
