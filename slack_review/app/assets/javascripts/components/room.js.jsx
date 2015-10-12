var Room = React.createClass({

  getInitialState(){
    return {
      room: {
        name: "...loading...",
        id: this.props.room.id,
        messages: []
      }
    }
  },

  fetchMessages(){
    var component = this;
    fetch("/api/rooms/" + this.state.room.id + ".json").then(function(response){
      response.json().then(function(json){
        component.setState({room: json.room});
      })
    })
  },

  componentDidMount(){
    this.fetchMessages();
    this.messageInterval = setInterval(this.fetchMessages, 3000);
  },

  componentWillUnmount(){
    clearInterval(messageInterval);
  },


  render: function() {
    return <div>
      {this.state.room.name} ({this.state.room.messages.length})

      <div className="messages">
        {this.state.room.messages.map(function(message){
          return <Message message={message}></Message>
        })}
      </div>

      <MessageForm room={this.state.room}></MessageForm>

    </div>;
  }
});
