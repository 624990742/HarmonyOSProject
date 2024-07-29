 import CommonConstants from '../common/constant/CommonConstants';

/**
 * 数据model
 */
export class ListPageDataModel {
  /**
   * 保存的数据
   */
  private tasks: Array<string> = CommonConstants.TODO_DATA;

  /**
   * @returns  tasks
   * 返回列表数据
   */
  getData(): Array<string> {
    return this.tasks;
  }
}
/**
 * 创建一个 ListPageDataModel 提供给外部使用
 */
 export default new ListPageDataModel();