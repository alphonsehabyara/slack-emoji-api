(function() {
  "use strict";

  angular.module("app").controller("emojisCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v2/emojis.json").then(function(response) {
        $scope.emojis = response.data;
      });
    }    

    $scope.toggleBio = function(emoji) {
      emoji.bioVisible = !emoji.bioVisible;
    }

    $scope.addEmoji = function(people, nature, food_and_drink, celebration, activity, travel_and_places, objects_and_symbols, custom, emoji) {
      var emoji = {
        people: people,
        nature: nature,
        food_and_drink: food_and_drink, 
        celebration: celebration,
        activity: activity,
        travel_and_places: travel_and_places,
        objects_and_symbols: objects_and_symbols,
        custom: custom,
        emoji: emoji
      };
      $http.post("/api/v2/emojis.json", emoji).then(function(response) {
        $scope.emojis.push(response.data);
      });
    }

    $scope.updateEmoji = function(emoji) {
      $http.patch("/api/v2/emojis/" + emoji.id + ".json", emoji).then(function(response) {
        var index = $scope.emojis.indexOf(emoji);
        $scope.emojis[index] = response.data;
      });
    }

    $scope.deleteEmoji = function(emoji, index) {
      $http.delete("/api/v2/emojis/" + emoji.id + ".json").then(function(response){
        $scope.emojis.splice(index, 1);
      });
    }

    $scope.toggleOrder = function(attribute) {
      $scope.orderAttribute = attribute;
    }


    window.$scope = $scope;

  });
})();