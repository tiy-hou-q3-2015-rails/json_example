taytay = Room.create! name: "TayTay"
trains = Room.create! name: "#trains"

jwo = User.create! username: "jwo"
dorton = User.create! username: "dorton"
neal = User.create! username: "neal"
caroline = User.create! username: "caroline"

Message.create! room: taytay, user: jwo, body: "omg did you see the new video?"
Message.create! room: taytay, user: caroline, body: "soooooo good"
Message.create! room: taytay, user: neal, body: "rite!?!"

Message.create! room: trains, user: dorton, body: "Just saw a diesel go SO FAST yall"
Message.create! room: trains, user: dorton, body: "yall?"
Message.create! room: trains, user: dorton, body: "😓"
