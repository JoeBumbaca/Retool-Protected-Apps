const delay = ms => new Promise(res => setTimeout(res,ms))

await query6.trigger()
var isComplete = query6.body.test === "100"
var isNotStarted = query6.body.test2 === "0"

console.log({isComplete, isNotStarted})

while (!isComplete && !isNotStarted) {
  await delay(10000)
  await query6.trigger()
  console.log({timestamp: query6.timestamp})
  isComplete = query6.body.test === "100"
  isNotStarted = query6.body.test2 === "0"
}