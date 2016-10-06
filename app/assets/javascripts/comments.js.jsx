var ListComments = React.createClass({
	getInitialState: function(){
	 return this.props.comments
	},

	render: function(){
		var commentNodes = this.props.comments.list.map(function(comment){
			return <div><p>{comment.author}</p><p>{comment.body}</p><hr/></div>

		})

	 return (
	 	<div>
	 		{commentNodes}
	 	</div>
	 );
	}
});