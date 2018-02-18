require 'json'

  def read_contacts
    contacts_json = File.read("contacts.json")
    return JSON.parse(contacts_json, { symbolize_names: true })
  end

  contacts = [
    {
      "name": "Thomas Jefferson",
      "phone": "+1 206 310 1369",
      "email": "tjeff@us.gov"
    },
    {
      "name": "Charles Darwin",
      "phone": "+44 20 7123 4567",
      "email": "darles@evolve.org"
    },
    {
      "name": "Nikola Tesla",
      "phone": "+385 43 987 3355",
      "email": "nik@inductlabs.com"
    },
    {
      "name": "Genghis Khan",
      "phone": "+976 2 194 2222",
      "email": "contact@empire.com"
    },
    {
      "name": "Malcom X",
      "phone": "+1 310 155 8822",
      "email": "x@theroost.org"
    }
  ]

  show_contacts = contacts.map { |contact| {contact[:name] => contact[:phone] } }

  puts show_contacts
