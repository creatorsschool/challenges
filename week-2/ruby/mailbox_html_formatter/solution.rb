class Email
  attr_reader :date, :from, :subject

  def initialize(subject, headers)
    @subject = subject
    @date = headers[:date]
    @from = headers[:from]
  end
end

class Mailbox
  attr_reader :emails, :name

  def initialize(name, emails)
    @name = name
    @emails = emails
  end
end

class MailboxHtmlFormatter
  def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    [
      "<html>",
      head,
      "<body>",
      title,
      table,
      "</body>",
      "</html>"
    ].join("\n")
  end

  def head
    "<head>
      <style>
        table {
          border-collapse: collapse;
        }
        td, th {
          border: 1px solid black;
          padding: 1em;
        }
      </style>
    </head>"
  end

  def title
    "<h1>#{@mailbox.name}</h1>"
  end

  def table
    [
      "<table>",
      table_header,
      "<tbody>",
      table_body,
      "</tbody>",
      "</table>"
    ].join("\n")
  end

  def table_header
    "<thead>
        <tr>
          <th>Date</th>
          <th>From</th>
          <th>Subject</th>
        </tr>
      </thead>"
  end

  def table_body
    @mailbox.emails.map do |email|
      "<tr>
        <td>#{email.date}</td>
        <td>#{email.from}</td>
        <td>#{email.subject}</td>
      </tr>"
    end.join("\n")
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("CS 2015", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format
