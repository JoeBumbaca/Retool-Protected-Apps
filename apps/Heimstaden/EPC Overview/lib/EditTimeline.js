function formatDates(array) {
  return array.map(item => {
    const date = new Date(item.created_at);
//    const formatDate = date.format('D.MM.YYYY');
    const formattedDate = date.toUTCString();
    return {
      ...item,
      created_at: formattedDate
    };
  });
}

const exampleData = {{EPCchangeLogSelect.data}}
return formatDataAsObject(formatDates(exampleData))


//console.log(
//    (function (frm, d) { return [d.toDateString(), d.toTimeString().split(' ')[0], (d.getMonth() + 101), d.getMilliseconds()].join(' ').replace(/(\S{3}) (\S{3}) (\d{1,2}) (\d{4}) (\d{2}):(\d{2}):(\d{2}) 1(\d{2}) (\d{1,3})/, frm); })
//    ('$4/$8/$3 $5:$6 ($1)', new Date())
//);