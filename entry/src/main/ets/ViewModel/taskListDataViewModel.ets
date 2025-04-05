export  class ObjectData {

  id: number;
  task: string;
  status: boolean;

  constructor(id:number,task:string,status:boolean) {
    this.id = id;
    this.task = task;
    this.status = status;
  }
}

export class ListData {
  private lists: Array<ObjectData> = [
    new ObjectData(1,"老虎喝水",true),
    new ObjectData(2,"嘻嘻哈哈",false),
    new ObjectData(3,"漏斗",true),
  ];
  public getLists(): Array<ObjectData> {
    return this.lists;
  }
}


