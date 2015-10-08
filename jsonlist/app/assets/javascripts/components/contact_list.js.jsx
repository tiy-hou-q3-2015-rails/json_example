var ContactList = React.createClass({

  getInitialState(){
    return {
      contacts: this.props.contacts
    }
  },

  componentDidMount(){
    var component = this;
    fetch("/api/contacts").then(function(response){
      response.json().then(function(data){
        component.setState({contacts: data.contacts});
      });
    });
  },

  render() {
    return <div>
      {this.state.contacts.map(function(contact){
        return <div>
          <a href={contact.url}>
            <h5>{contact.full_name}</h5>
            <img src={contact.thumbnail_url}/>
          </a>
        </div>
      })}
    </div>;
  }
});
