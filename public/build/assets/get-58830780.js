import{a as s}from"./format-money-89cf90df.js";let t=class{list(a){return s.get("/api/v2/subscriptions",{params:a})}paid(a){return s.get("/api/v2/subscriptions/sum/paid",{params:a})}unpaid(a){return s.get("/api/v2/subscriptions/sum/unpaid",{params:a})}};class e{list(a){return s.get("/api/v2/piggy-banks",{params:a})}}export{t as G,e as a};
