{
  "name": "StackAdapt Tracking Tag",
  "version": "1.0",
  "permissions": [
    {
      "type": "script",
      "url": "https://tags.srv.stackadapt.com/events.js"
    }
  ],
  "fields": [
    {
      "type": "text",
      "name": "advertiserId",
      "displayName": "Advertiser ID",
      "default": "iD_6QdGxwhCTU0_Cg5kvVg"
    }
  ],
  "code": "\nconst setSaq = () => {\n  if (window.saq) return;\n\n  const n = function () {\n    n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments);\n  };\n\n  if (!window._saq) window._saq = n;\n  n.push = n;\n  n.loaded = true;\n  n.version = '1.0';\n  n.queue = [];\n\n  window.saq = n;\n};\n\nsetSaq();\nwindow.saq('ts', data.advertiserId);\n"
}