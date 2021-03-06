window.OpinioDev.controller 'ideaCtrl', ["$scope", "$rootScope", "$http", "Idea", ($scope, $rootScope, $http, Idea) ->
  #init variables
  $scope.idea = {_id: $('#idea').val(), votes: $('#idea_votes').val()}

  console.log $scope.idea

  $scope.like = ()->
    new Idea({vote: 'upvote', id: $scope.idea._id}).update().then((data)=>
      if data.success == true
        $scope.idea.votes = parseInt($scope.idea.votes) + 1
    )

  $scope.dislike = ()->
    new Idea({vote: 'downvote', id: $scope.idea._id}).update().then((data)=>
      if data.success == true
        $scope.idea.votes = parseInt($scope.idea.votes) - 1
    )
]

