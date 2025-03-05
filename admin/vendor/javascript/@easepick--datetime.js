// @easepick/datetime@1.2.1 downloaded from https://ga.jspm.io/npm:@easepick/datetime@1.2.1/dist/index.esm.js

class t extends Date{static parseDateTime(e,s="YYYY-MM-DD",n="en-US"){if(!e)return new Date((new Date).setHours(0,0,0,0));if(e instanceof t)return e.toJSDate();if(e instanceof Date)return e;if(/^-?\d{10,}$/.test(String(e)))return new Date(Number(e));if("string"==typeof e){const r=[];let a=null;for(;null!=(a=t.regex.exec(s));)"\\"!==a[1]&&r.push(a);if(r.length){const s={year:null,month:null,shortMonth:null,longMonth:null,day:null,hour:0,minute:0,second:0,ampm:null,value:""};r[0].index>0&&(s.value+=".*?");for(const[e,a]of Object.entries(r)){const r=Number(e),{group:i,pattern:h}=t.formatPatterns(a[0],n);s[i]=r+1,s.value+=h,s.value+=".*?"}const a=new RegExp(`^${s.value}$`);if(a.test(e)){const r=a.exec(e),i=Number(r[s.year]);let h=null;s.month?h=Number(r[s.month])-1:s.shortMonth?h=t.shortMonths(n).indexOf(r[s.shortMonth]):s.longMonth&&(h=t.longMonths(n).indexOf(r[s.longMonth]));const g=Number(r[s.day])||1,o=Number(r[s.hour]);let u=Number.isNaN(o)?0:o;const c=Number(r[s.minute]),l=Number.isNaN(c)?0:c,m=Number(r[s.second]),d=Number.isNaN(m)?0:m,M=r[s.ampm];return M&&"PM"===M&&(u+=12,24===u&&(u=0)),new Date(i,h,g,u,l,d,0)}}}return new Date((new Date).setHours(0,0,0,0))}static regex=/(\\)?(Y{2,4}|M{1,4}|D{1,2}|H{1,2}|h{1,2}|m{1,2}|s{1,2}|A|a)/g;static MONTH_JS=[0,1,2,3,4,5,6,7,8,9,10,11];static shortMonths(e){return t.MONTH_JS.map((s=>new Date(2019,s).toLocaleString(e,{month:"short"})))}static longMonths(e){return t.MONTH_JS.map((s=>new Date(2019,s).toLocaleString(e,{month:"long"})))}static formatPatterns(e,s){switch(e){case"YY":case"YYYY":return{group:"year",pattern:`(\\d{${e.length}})`};case"M":return{group:"month",pattern:"(\\d{1,2})"};case"MM":return{group:"month",pattern:"(\\d{2})"};case"MMM":return{group:"shortMonth",pattern:`(${t.shortMonths(s).join("|")})`};case"MMMM":return{group:"longMonth",pattern:`(${t.longMonths(s).join("|")})`};case"D":return{group:"day",pattern:"(\\d{1,2})"};case"DD":return{group:"day",pattern:"(\\d{2})"};case"h":case"H":return{group:"hour",pattern:"(\\d{1,2})"};case"hh":case"HH":return{group:"hour",pattern:"(\\d{2})"};case"m":return{group:"minute",pattern:"(\\d{1,2})"};case"mm":return{group:"minute",pattern:"(\\d{2})"};case"s":return{group:"second",pattern:"(\\d{1,2})"};case"ss":return{group:"second",pattern:"(\\d{2})"};case"a":case"A":return{group:"ampm",pattern:"(AM|PM|am|pm)"}}}lang;constructor(e=null,s="YYYY-MM-DD",n="en-US"){super(t.parseDateTime(e,s,n)),this.lang=n}getWeek(e){const s=new Date(this.midnight_ts(this)),n=(this.getDay()+(7-e))%7;s.setDate(s.getDate()-n);const r=s.getTime();return s.setMonth(0,1),s.getDay()!==e&&s.setMonth(0,1+(4-s.getDay()+7)%7),1+Math.ceil((r-s.getTime())/6048e5)}clone(){return new t(this)}toJSDate(){return new Date(this)}inArray(e,s="[]"){return e.some((e=>e instanceof Array?this.isBetween(e[0],e[1],s):this.isSame(e,"day")))}isBetween(e,s,n="()"){switch(n){default:case"()":return this.midnight_ts(this)>this.midnight_ts(e)&&this.midnight_ts(this)<this.midnight_ts(s);case"[)":return this.midnight_ts(this)>=this.midnight_ts(e)&&this.midnight_ts(this)<this.midnight_ts(s);case"(]":return this.midnight_ts(this)>this.midnight_ts(e)&&this.midnight_ts(this)<=this.midnight_ts(s);case"[]":return this.midnight_ts()>=this.midnight_ts(e)&&this.midnight_ts()<=this.midnight_ts(s)}}isBefore(e,s="days"){switch(s){case"day":case"days":return new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime()>new Date(this.getFullYear(),this.getMonth(),this.getDate()).getTime();case"month":case"months":return new Date(e.getFullYear(),e.getMonth(),1).getTime()>new Date(this.getFullYear(),this.getMonth(),1).getTime();case"year":case"years":return e.getFullYear()>this.getFullYear()}throw new Error("isBefore: Invalid unit!")}isSameOrBefore(e,s="days"){switch(s){case"day":case"days":return new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime()>=new Date(this.getFullYear(),this.getMonth(),this.getDate()).getTime();case"month":case"months":return new Date(e.getFullYear(),e.getMonth(),1).getTime()>=new Date(this.getFullYear(),this.getMonth(),1).getTime()}throw new Error("isSameOrBefore: Invalid unit!")}isAfter(e,s="days"){switch(s){case"day":case"days":return new Date(this.getFullYear(),this.getMonth(),this.getDate()).getTime()>new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime();case"month":case"months":return new Date(this.getFullYear(),this.getMonth(),1).getTime()>new Date(e.getFullYear(),e.getMonth(),1).getTime();case"year":case"years":return this.getFullYear()>e.getFullYear()}throw new Error("isAfter: Invalid unit!")}isSameOrAfter(e,s="days"){switch(s){case"day":case"days":return new Date(this.getFullYear(),this.getMonth(),this.getDate()).getTime()>=new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime();case"month":case"months":return new Date(this.getFullYear(),this.getMonth(),1).getTime()>=new Date(e.getFullYear(),e.getMonth(),1).getTime()}throw new Error("isSameOrAfter: Invalid unit!")}isSame(e,s="days"){switch(s){case"day":case"days":return new Date(this.getFullYear(),this.getMonth(),this.getDate()).getTime()===new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime();case"month":case"months":return new Date(this.getFullYear(),this.getMonth(),1).getTime()===new Date(e.getFullYear(),e.getMonth(),1).getTime()}throw new Error("isSame: Invalid unit!")}add(e,s="days"){switch(s){case"day":case"days":this.setDate(this.getDate()+e);break;case"month":case"months":this.setMonth(this.getMonth()+e)}return this}subtract(e,s="days"){switch(s){case"day":case"days":this.setDate(this.getDate()-e);break;case"month":case"months":this.setMonth(this.getMonth()-e)}return this}diff(e,s="days"){switch(s){default:case"day":case"days":return Math.round((this.midnight_ts()-this.midnight_ts(e))/864e5);case"month":case"months":let s=12*(e.getFullYear()-this.getFullYear());return s-=e.getMonth(),s+=this.getMonth(),s}}format(e,s="en-US"){let n="";const r=[];let a=null;for(;null!=(a=t.regex.exec(e));)"\\"!==a[1]&&r.push(a);if(r.length){r[0].index>0&&(n+=e.substring(0,r[0].index));for(const[a,i]of Object.entries(r)){const h=Number(a);n+=this.formatTokens(i[0],s),r[h+1]&&(n+=e.substring(i.index+i[0].length,r[h+1].index)),h===r.length-1&&(n+=e.substring(i.index+i[0].length))}}return n.replace(/\\/g,"")}midnight_ts(e){return e?new Date(e.getFullYear(),e.getMonth(),e.getDate(),0,0,0,0).getTime():new Date(this.getFullYear(),this.getMonth(),this.getDate(),0,0,0,0).getTime()}formatTokens(e,s){switch(e){case"YY":return String(this.getFullYear()).slice(-2);case"YYYY":return String(this.getFullYear());case"M":return String(this.getMonth()+1);case"MM":return`0${this.getMonth()+1}`.slice(-2);case"MMM":return t.shortMonths(s)[this.getMonth()];case"MMMM":return t.longMonths(s)[this.getMonth()];case"D":return String(this.getDate());case"DD":return`0${this.getDate()}`.slice(-2);case"H":return String(this.getHours());case"HH":return`0${this.getHours()}`.slice(-2);case"h":return String(this.getHours()%12||12);case"hh":return`0${this.getHours()%12||12}`.slice(-2);case"m":return String(this.getMinutes());case"mm":return`0${this.getMinutes()}`.slice(-2);case"s":return String(this.getSeconds());case"ss":return`0${this.getSeconds()}`.slice(-2);case"a":return this.getHours()<12||24===this.getHours()?"am":"pm";case"A":return this.getHours()<12||24===this.getHours()?"AM":"PM";default:return""}}}export{t as DateTime};

