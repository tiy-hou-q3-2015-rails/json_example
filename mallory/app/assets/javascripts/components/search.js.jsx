var Search = React.createClass({

  getInitialState(){
    return {
      products: this.props.products
    }
  },

  handleButtonClick(){
    var component = this;

    // Get what we're searching for
    var searchText = this.refs.searchText.getDOMNode().value;

    // search for it
    fetch("/api/products?search_text=" + searchText).then(function(response){
      response.json().then(function(data){
        // update state with the results
        component.setState({products: data.products});
      });
    });


      // make sure Product List gets new state (as its new props)

  },
  render() {
    return <div class="product_search">

      <div className="search row">
        <div className="col-xs-9">
          <input placeholder="Search" ref="searchText" className="form-control"></input>
        </div>
        <div className="col-xs-3">
          <button onClick={this.handleButtonClick} className="btn btn-success">Search</button>
        </div>
      </div>

      <ProductList products={this.state.products}></ProductList>


    </div>
;
  }
});
