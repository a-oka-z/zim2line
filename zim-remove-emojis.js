

async function readAll(stream) {
  const chunks = [];
  for await (const chunk of stream) chunks.push(chunk);
  return Buffer.concat(chunks).toString('utf8');
}

async function exec() {
  const input = await readAll(process.stdin);
  const output = input.replace( /\p{Emoji}+/gu, '' );
  process.stdout.write( output );
  // process.stdout.write( input );
}


exec();
