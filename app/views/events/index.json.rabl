collection @events
attributes :id, :name, :phone, :mail, :budget, :description, :start, :finish, :status, :all_day

node(:title)     { |event| event.name                    }
node(:phone)     { |event| event.phone                   }
node(:mail )     { |event| event.mail                    }
node(:budget)    { |event| event.budget                  }
node(:start)     { |event| event.start.to_s(:rfc822)     }
node(:end)       { |event| event.finish.to_s(:rfc822)    }
node(:url)       { |event| edit_event_url(event)         }
node(:status)    { |event| event.status                  }
node(:allDay)    { |event| event.all_day                 }

node(:color) do |event|
  event.start - 1.day < Time.now ? '#920202' : '#00AEEF'
end

node(:update) { |event| event_url(event) }
