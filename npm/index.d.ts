declare module '@apiverve/counter' {
  export interface counterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface counterResponse {
    status: string;
    error: string | null;
    data: CloudCounterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CloudCounterData {
      created:        Date | null;
      id:             null | string;
      lastAction:     null | string;
      lastRead:       Date | null;
      lastUpdated:    Date | null;
      numberOfDigits: number | null;
      ordinal:        null | string;
      value:          number | null;
      words:          null | string;
      isEven:         boolean | null;
      isNegative:     boolean | null;
      isZero:         boolean | null;
      isPrime:        boolean | null;
  }

  export default class counterWrapper {
    constructor(options: counterOptions);

    execute(callback: (error: any, data: counterResponse | null) => void): Promise<counterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: counterResponse | null) => void): Promise<counterResponse>;
    execute(query?: Record<string, any>): Promise<counterResponse>;
  }
}
