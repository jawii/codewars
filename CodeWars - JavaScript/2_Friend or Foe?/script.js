
function friend(friends){
  let myFriends = friends.filter(friend => friend.length == 4);
  return myFriends
}

console.log(friend(["Jaakko", "Pekka", "Jere"]));




