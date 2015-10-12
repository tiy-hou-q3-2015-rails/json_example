var MessageForm = React.createClass({

  handleButtonClick(){
    var component = this;
    var theText = this.refs.body.getDOMNode().value;

    var messageJSON = {
      message: {
        body: theText
      }
    }

    $.post("/api/rooms/" + this.props.room.id + "/messages.json", messageJSON).then(function(json){
      component.refs.body.getDOMNode().value = "";
    });
  },

  render: function() {
    return <div className="message_form">
      <input type="text" ref="body"></input>
      <button onClick={this.handleButtonClick}>Submit</button>
    </div>;
  }
});
