// server.js
export default {
    port: Number(process.env.PORT ?? 3000),
    fetch(request) {
      return new Response(
        `
        <html>
          <main>
            <h1>Benchmark Railway + Bun</h1>
            <h4>Rendered at: ${new Date().toISOString()}</h4>
            <h2><span>Full request to render time: <span id="overrideme" />ms</span></h2>
            <script>
              const currentTime = new Date();
              const fullTime = currentTime - window.performance.timing.requestStart;
              document.getElementById('overrideme').innerHTML = fullTime.toString();
            </script>
          </main>
        </html>`,
        {
          headers: {
            "Content-Type": "text/html",
          },
        }
      );
    },
  };