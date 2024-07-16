"use strict";var l=Object.defineProperty;var B=Object.getOwnPropertyDescriptor;var V=Object.getOwnPropertyNames;var K=Object.prototype.hasOwnProperty;var x=(r,e)=>{for(var t in e)l(r,t,{get:e[t],enumerable:!0})},L=(r,e,t,n)=>{if(e&&typeof e=="object"||typeof e=="function")for(let f of V(e))!K.call(r,f)&&f!==t&&l(r,f,{get:()=>e[f],enumerable:!(n=B(e,f))||n.enumerable});return r};var M=r=>L(l({},"__esModule",{value:!0}),r);var Z={};x(Z,{default:()=>T});module.exports=M(Z);var o=require("@raycast/api");var p={};x(p,{exclude:()=>X,extract:()=>h,parse:()=>F,parseUrl:()=>N,pick:()=>U,stringify:()=>I,stringifyUrl:()=>$});var w="%[a-f0-9]{2}",b=new RegExp("("+w+")|([^%]+?)","gi"),S=new RegExp("("+w+")+","gi");function m(r,e){try{return[decodeURIComponent(r.join(""))]}catch{}if(r.length===1)return r;e=e||1;let t=r.slice(0,e),n=r.slice(e);return Array.prototype.concat.call([],m(t),m(n))}function _(r){try{return decodeURIComponent(r)}catch{let e=r.match(b)||[];for(let t=1;t<e.length;t++)r=m(e,t).join(""),e=r.match(b)||[];return r}}function H(r){let e={"%FE%FF":"\uFFFD\uFFFD","%FF%FE":"\uFFFD\uFFFD"},t=S.exec(r);for(;t;){try{e[t[0]]=decodeURIComponent(t[0])}catch{let f=_(t[0]);f!==t[0]&&(e[t[0]]=f)}t=S.exec(r)}e["%C2"]="\uFFFD";let n=Object.keys(e);for(let f of n)r=r.replace(new RegExp(f,"g"),e[f]);return r}function g(r){if(typeof r!="string")throw new TypeError("Expected `encodedURI` to be of type `string`, got `"+typeof r+"`");try{return decodeURIComponent(r)}catch{return H(r)}}function u(r,e){if(!(typeof r=="string"&&typeof e=="string"))throw new TypeError("Expected the arguments to be of type `string`");if(r===""||e==="")return[];let t=r.indexOf(e);return t===-1?[]:[r.slice(0,t),r.slice(t+e.length)]}function C(r,e){let t={};if(Array.isArray(e))for(let n of e){let f=Object.getOwnPropertyDescriptor(r,n);f?.enumerable&&Object.defineProperty(t,n,f)}else for(let n of Reflect.ownKeys(r)){let f=Object.getOwnPropertyDescriptor(r,n);if(f.enumerable){let i=r[n];e(n,i,r)&&Object.defineProperty(t,n,f)}}return t}var z=r=>r==null,G=r=>encodeURIComponent(r).replace(/[!'()*]/g,e=>`%${e.charCodeAt(0).toString(16).toUpperCase()}`),y=Symbol("encodeFragmentIdentifier");function J(r){switch(r.arrayFormat){case"index":return e=>(t,n)=>{let f=t.length;return n===void 0||r.skipNull&&n===null||r.skipEmptyString&&n===""?t:n===null?[...t,[s(e,r),"[",f,"]"].join("")]:[...t,[s(e,r),"[",s(f,r),"]=",s(n,r)].join("")]};case"bracket":return e=>(t,n)=>n===void 0||r.skipNull&&n===null||r.skipEmptyString&&n===""?t:n===null?[...t,[s(e,r),"[]"].join("")]:[...t,[s(e,r),"[]=",s(n,r)].join("")];case"colon-list-separator":return e=>(t,n)=>n===void 0||r.skipNull&&n===null||r.skipEmptyString&&n===""?t:n===null?[...t,[s(e,r),":list="].join("")]:[...t,[s(e,r),":list=",s(n,r)].join("")];case"comma":case"separator":case"bracket-separator":{let e=r.arrayFormat==="bracket-separator"?"[]=":"=";return t=>(n,f)=>f===void 0||r.skipNull&&f===null||r.skipEmptyString&&f===""?n:(f=f===null?"":f,n.length===0?[[s(t,r),e,s(f,r)].join("")]:[[n,s(f,r)].join(r.arrayFormatSeparator)])}default:return e=>(t,n)=>n===void 0||r.skipNull&&n===null||r.skipEmptyString&&n===""?t:n===null?[...t,s(e,r)]:[...t,[s(e,r),"=",s(n,r)].join("")]}}function Q(r){let e;switch(r.arrayFormat){case"index":return(t,n,f)=>{if(e=/\[(\d*)]$/.exec(t),t=t.replace(/\[\d*]$/,""),!e){f[t]=n;return}f[t]===void 0&&(f[t]={}),f[t][e[1]]=n};case"bracket":return(t,n,f)=>{if(e=/(\[])$/.exec(t),t=t.replace(/\[]$/,""),!e){f[t]=n;return}if(f[t]===void 0){f[t]=[n];return}f[t]=[...f[t],n]};case"colon-list-separator":return(t,n,f)=>{if(e=/(:list)$/.exec(t),t=t.replace(/:list$/,""),!e){f[t]=n;return}if(f[t]===void 0){f[t]=[n];return}f[t]=[...f[t],n]};case"comma":case"separator":return(t,n,f)=>{let i=typeof n=="string"&&n.includes(r.arrayFormatSeparator),a=typeof n=="string"&&!i&&d(n,r).includes(r.arrayFormatSeparator);n=a?d(n,r):n;let c=i||a?n.split(r.arrayFormatSeparator).map(D=>d(D,r)):n===null?n:d(n,r);f[t]=c};case"bracket-separator":return(t,n,f)=>{let i=/(\[])$/.test(t);if(t=t.replace(/\[]$/,""),!i){f[t]=n&&d(n,r);return}let a=n===null?[]:n.split(r.arrayFormatSeparator).map(c=>d(c,r));if(f[t]===void 0){f[t]=a;return}f[t]=[...f[t],...a]};default:return(t,n,f)=>{if(f[t]===void 0){f[t]=n;return}f[t]=[...[f[t]].flat(),n]}}}function E(r){if(typeof r!="string"||r.length!==1)throw new TypeError("arrayFormatSeparator must be single character string")}function s(r,e){return e.encode?e.strict?G(r):encodeURIComponent(r):r}function d(r,e){return e.decode?g(r):r}function A(r){return Array.isArray(r)?r.sort():typeof r=="object"?A(Object.keys(r)).sort((e,t)=>Number(e)-Number(t)).map(e=>r[e]):r}function j(r){let e=r.indexOf("#");return e!==-1&&(r=r.slice(0,e)),r}function W(r){let e="",t=r.indexOf("#");return t!==-1&&(e=r.slice(t)),e}function O(r,e){return e.parseNumbers&&!Number.isNaN(Number(r))&&typeof r=="string"&&r.trim()!==""?r=Number(r):e.parseBooleans&&r!==null&&(r.toLowerCase()==="true"||r.toLowerCase()==="false")&&(r=r.toLowerCase()==="true"),r}function h(r){r=j(r);let e=r.indexOf("?");return e===-1?"":r.slice(e+1)}function F(r,e){e={decode:!0,sort:!0,arrayFormat:"none",arrayFormatSeparator:",",parseNumbers:!1,parseBooleans:!1,...e},E(e.arrayFormatSeparator);let t=Q(e),n=Object.create(null);if(typeof r!="string"||(r=r.trim().replace(/^[?#&]/,""),!r))return n;for(let f of r.split("&")){if(f==="")continue;let i=e.decode?f.replace(/\+/g," "):f,[a,c]=u(i,"=");a===void 0&&(a=i),c=c===void 0?null:["comma","separator","bracket-separator"].includes(e.arrayFormat)?c:d(c,e),t(d(a,e),c,n)}for(let[f,i]of Object.entries(n))if(typeof i=="object"&&i!==null)for(let[a,c]of Object.entries(i))i[a]=O(c,e);else n[f]=O(i,e);return e.sort===!1?n:(e.sort===!0?Object.keys(n).sort():Object.keys(n).sort(e.sort)).reduce((f,i)=>{let a=n[i];return a&&typeof a=="object"&&!Array.isArray(a)?f[i]=A(a):f[i]=a,f},Object.create(null))}function I(r,e){if(!r)return"";e={encode:!0,strict:!0,arrayFormat:"none",arrayFormatSeparator:",",...e},E(e.arrayFormatSeparator);let t=a=>e.skipNull&&z(r[a])||e.skipEmptyString&&r[a]==="",n=J(e),f={};for(let[a,c]of Object.entries(r))t(a)||(f[a]=c);let i=Object.keys(f);return e.sort!==!1&&i.sort(e.sort),i.map(a=>{let c=r[a];return c===void 0?"":c===null?s(a,e):Array.isArray(c)?c.length===0&&e.arrayFormat==="bracket-separator"?s(a,e)+"[]":c.reduce(n(a),[]).join("&"):s(a,e)+"="+s(c,e)}).filter(a=>a.length>0).join("&")}function N(r,e){e={decode:!0,...e};let[t,n]=u(r,"#");return t===void 0&&(t=r),{url:t?.split("?")?.[0]??"",query:F(h(r),e),...e&&e.parseFragmentIdentifier&&n?{fragmentIdentifier:d(n,e)}:{}}}function $(r,e){e={encode:!0,strict:!0,[y]:!0,...e};let t=j(r.url).split("?")[0]||"",n=h(r.url),f={...F(n,{sort:!1}),...r.query},i=I(f,e);i&&(i=`?${i}`);let a=W(r.url);if(r.fragmentIdentifier){let c=new URL(t);c.hash=r.fragmentIdentifier,a=e[y]?c.hash:`#${r.fragmentIdentifier}`}return`${t}${i}${a}`}function U(r,e,t){t={parseFragmentIdentifier:!0,[y]:!1,...t};let{url:n,query:f,fragmentIdentifier:i}=N(r,t);return $({url:n,query:C(f,e),fragmentIdentifier:i},t)}function X(r,e,t){let n=Array.isArray(e)?f=>!e.includes(f):(f,i)=>!e(f,i);return U(r,n,t)}var R=p;var P=async({recipe:r})=>{let e=await Y();if(e&&e.length>0){let t=Buffer.from(e).toString("base64"),n=R.stringify({recipe:r,input:t});(0,o.open)(`https://gchq.github.io/CyberChef/#${n}`),(0,o.popToRoot)({clearSearchBar:!0})}else(0,o.showToast)({style:o.Toast.Style.Failure,title:"Input not found"})},Y=async()=>(0,o.getSelectedText)().then(async r=>q(r)?await o.Clipboard.readText():r).catch(async()=>await o.Clipboard.readText()).then(r=>q(r)?"":r).catch(()=>""),q=r=>!(r!=null&&String(r).length>0);async function T(){await P({recipe:"Extract_domains(false,false,false)"})}
