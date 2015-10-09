var ProductList = React.createClass({

  resultCount(){
    if (this.props.products.length === 0){
      return "Sorry mate, no products found";
    } else {
      return "Here are " + this.props.products.length + " product(s)";
    }
  },

  render() {
    return   <div className="products">
      <p>{ this.resultCount() }</p>
      <div className=" row">



            {this.props.products.map(function(product){
              return <div className="product col-xs-3">
                <a href={"/products/" + product.id}>
                  <img src={'/images/' + product.img_file + '.jpg'} className='img-thumbnail'/>
                  {product.item}
                </a>
              </div>
            })}

        </div>
      </div>;
  }
});
