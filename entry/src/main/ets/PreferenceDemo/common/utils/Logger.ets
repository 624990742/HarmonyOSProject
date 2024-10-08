import { hilog } from  '@kit.PerformanceAnalysisKit';


/**
 * A utility class for printing logs.
 *
 * @param prefix The prefix of Logger.
 */
class Logger {
  private domain: number;
  private prefix: string;
  private format: string = '%{public}s, %{public}s';

  constructor(prefix: string) {
    this.prefix = prefix;
    this.domain = 0xFF00;
  }

  /**
   * Outputs debug-level logs.
   *
   * @param args Indicates the log parameters.
   */
  debug(...args: string[]) {
    hilog.debug(this.domain, this.prefix, this.format, args);
  }

  /**
   * Outputs info-level logs.
   *
   * @param args Indicates the log parameters.
   */
  info(...args: string[]) {
    hilog.info(this.domain, this.prefix, this.format, args);
  }

  /**
   * Outputs warning-level logs.
   *
   * @param args Indicates the log parameters.
   */
  warn(...args: string[]) {
    hilog.warn(this.domain, this.prefix, this.format, args);
  }

  /**
   * Outputs error-level logs.
   *
   * @param args Indicates the log parameters.
   */
  error(...args: string[]) {
    hilog.error(this.domain, this.prefix, this.format, args);
  }
}

export default new Logger('[Preferences]');
