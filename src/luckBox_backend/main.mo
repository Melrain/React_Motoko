import TrieMap "mo:base/TrieMap";
import Principal "mo:base/Principal";
import List "mo:base/List";
import Text "mo:base/Text";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";
import Result "mo:base/Result";
import Int "mo:base/Int";
import Iter "mo:base/Iter";

actor {

  var taskList = HashMap.HashMap<Int, TaskType>(0, Int.equal, Int.hash);

  type TaskType = {
    id : Nat;
    task : Text;
  };

  public shared func WriteTask(id : Int, task : TaskType) : async Result.Result<(), Text> {
    if (task.task == "") return #err("内容为空");

    taskList.put(id, task);

    return #ok();

  };

  public shared func GetTaskList() : async [TaskType] {
    var list = List.nil<TaskType>();
    for (task in taskList.vals()) {
      list := List.push(task, list);
    };

    return List.toArray(list);

  };

};
