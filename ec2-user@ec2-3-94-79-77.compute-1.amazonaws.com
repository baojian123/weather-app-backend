//{
//    "env": {
//        "browser": true,
//        "commonjs": true,
//        "es2021": true
//    },
//    "extends": [
//        "plugin:react/recommended",
//        "airbnb"
//    ],
//    "parserOptions": {
//        "ecmaFeatures": {
//            "jsx": true
//        },
//        "ecmaVersion": 12
//    },
//    "plugins": [
//        "react"
//    ],
//    "rules": {
//    }
//}
const koa = require('koa');
const loader = require('./src/loaders');
const bodyParser = require('koa-bodyparser');
const koaRequest = require('koa-http-request');
const cors = require('koa-cors');

const app = new koa();

app.use(cors({credentials: true, origin:"http://localhost:3000"}));
app.use(bodyParser());
app.use(koaRequest({
  json: true,
}))

loader.init(app);

module.exports = app;
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA3WF4IM7ac7l5IxPCdlCgeWwHIZViWcHr3nC6WfcftciNZeto
lfX1oa/nKyyeBsfnfCrD825DpjOsKOvBLN6rY4xGr420wqcnFopBUiMuXCbSQrul
6OxJx8w+jh3jSTJhR+kMRjLvkq64HDz2AtWbqbDYFpVsPSYVZuTOgHTdZD7HgbnS
pIw95qcySglOzLm2VtHId4ySr6VG04Qxr1Gli/rWY0FNEPo8VKE5MUIDa6S+TDRL
WVuWRv83dtO9enLAIK5XDuyj+7404IICnPcI/gFjtjWIp3Wt3N6AeIRMSx/izH7n
roXVVgdd+wAcZ0ILWJTWZbD+pHy7uSREOrMWaQIDAQABAoIBAFphZK3gRYdhfXc4
pfevyxRHalHnrxN9/FIAK9R289c/XZrylOxEUlgEfJg/yvRxwKwMuZs0tSGxjuPV
/DPZZJdruaAKdnXR0D9/ilOCUXcF0mm0OnPxo92SISfcQ+KqUtUM7BnsyapU8o10
xes6UibhMBdoQZxlY+9yEmyXSZuW0vDb/WrF+NyuQEjGmv+l5FO1vLo0GcA9HFr/
diAlKJtviVwHgl8Ai3mNe4U35lxU2XZxcYu6W7KzKqO2OUy3lvI/hd8augkufnFo
ETcdGmNtCas03+h3i4ESVQuEnTi0DIuqPvnz44ogHWyZc89WL1cRi9NJ3tXEl5nt
GtbjmAECgYEA/948+fPtLpM5NxAgvPau5OX9w8v7Uqwry7+U0M6Tlfk/OkYlN3VV
Khh7yvRGphem9sWj5wT1HyoGIRaO6hNYyJs1D2HV5ZsI/6K9cnedZDmskWutrN3O
2LILwa3SZHK2a5N29OynFI36GZ1k3/ywZLoNYA3u7H5hVXsW7rqvucECgYEA3X6u
Mf1mf2YJxs2cJKAIQRBwqRYbrfcV2obUKAxNdUFxM6yVE6udUQ6hw/Dw/zcuI0UX
ajZbmgHFylc6e5RA7kfBiTXnnsQiBKzilNKpMkCuju4x3sxfzO7VcTxFDbjJjeHl
0qU3JYgkKGuf5rfb311Ea7H8mz3q5VtwJPiy9qkCgYAMlUpcZIGak8Txj0p84IjT
Wvgy49o1Q6BXwdE4v6AEdSCF5iM4af3JNzEHVyIOUwV0B147I0RGxxNMF0bp/g+U
tgVS/1W8l/ZGVCOK+JT189wnvqro4HOmtoLbgIfjRrzv522nN+gzm5PcJKBsX4nx
OjEkMys32DNDN+11yhqQQQKBgQCHxNsqMVXeycE8Z1RK7v2gRF+Khc65uDdhGDx7
v+7K7S5iqmtG/28S/JET9mEDT+OsIvHTXTaRFH0VJprmnV2fscRkQvKTU04253KM
HwUvlI5rdn6DP2uJxux22KbLXnXNzqZ9lGBVVTo0vKPrXNAd/qGuEg/xaObPaFk5
kGjC4QKBgQCdpsch2Wkw+jziNL8eXDoTC2BEiitKe9YcTbC1y9YnyCahewJGf5ik
XJnIzFZl/doRZp7tUkBl5uZjUljFgyMVYiaon9LDOCehMR3OH8yVKHRNAREUa+2D
nt/tR12oqECDG3d4mcpnUB34o/3ncrmfSSRQCs7uy0zyoJusu+OaHA==
-----END RSA PRIVATE KEY-----ssh -i .\aws-ec2-key.pem  ec2-user@ec2-3-94-79-77.compute-1.amazonaws.com{
  "name": "backend",
  "version": "1.0.0",
  "lockfileVersion": 1,
  "requires": true,
  "dependencies": {
    "@babel/code-frame": {
      "version": "7.12.11",
      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.12.11.tgz",
      "integrity": "sha512-Zt1yodBx1UcyiePMSkWnU4hPqhwq7hGi2nFL1LeA3EUl+q2LQx16MISgJ0+z7dnmgvP9QtIleuETGOiOH1RcIw==",
      "dev": true,
      "requires": {
        "@babel/highlight": "^7.10.4"
      }
    },
    "@babel/helper-validator-identifier": {
      "version": "7.12.11",
      "resolved": "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.12.11.tgz",
      "integrity": "sha512-np/lG3uARFybkoHokJUmf1QfEvRVCPbmQeUQpKow5cQ3xWrV9i3rUHodKDJPQfTVX61qKi+UdYk8kik84n7XOw==",
      "dev": true
    },
    "@babel/highlight": {
      "version": "7.10.4",
      "resolved": "https://registry.npmjs.org/@babel/highlight/-/highlight-7.10.4.tgz",
      "integrity": "sha512-i6rgnR/YgPEQzZZnbTHHuZdlE8qyoBNalD6F+q4vAFlcMEcqmkoG+mPqJYJCo63qPf74+Y1UZsl3l6f7/RIkmA==",
      "dev": true,
      "requires": {
        "@babel/helper-validator-identifier": "^7.10.4",
        "chalk": "^2.0.0",
        "js-tokens": "^4.0.0"
      },
      "dependencies": {
        "chalk": {
          "version": "2.4.2",
          "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.4.2.tgz",
          "integrity": "sha512-Mti+f9lpJNcwF4tWV8/OrTTtF1gZi+f8FqlyAdouralcFWFQWF2+NgCHShjkCb+IFBLq9buZwE1xckQU4peSuQ==",
          "dev": true,
          "requires": {
            "ansi-styles": "^3.2.1",
            "escape-string-regexp": "^1.0.5",
            "supports-color": "^5.3.0"
          }
        }
      }
    },
    "@babel/runtime": {
      "version": "7.12.5",
      "resolved": "https://registry.npmjs.org/@babel/runtime/-/runtime-7.12.5.tgz",
      "integrity": "sha512-plcc+hbExy3McchJCEQG3knOsuh3HH+Prx1P6cLIkET/0dLuQDEnrT+s27Axgc9bqfsmNUNHfscgMUdBpC9xfg==",
      "dev": true,
      "requires": {
        "regenerator-runtime": "^0.13.4"
      }
    },
    "@babel/runtime-corejs3": {
      "version": "7.12.5",
      "resolved": "https://registry.npmjs.org/@babel/runtime-corejs3/-/runtime-corejs3-7.12.5.tgz",
      "integrity": "sha512-roGr54CsTmNPPzZoCP1AmDXuBoNao7tnSA83TXTwt+UK5QVyh1DIJnrgYRPWKCF2flqZQXwa7Yr8v7VmLzF0YQ==",
      "dev": true,
      "requires": {
        "core-js-pure": "^3.0.0",
        "regenerator-runtime": "^0.13.4"
      }
    },
    "@eslint/eslintrc": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/@eslint/eslintrc/-/eslintrc-0.3.0.tgz",
      "integrity": "sha512-1JTKgrOKAHVivSvOYw+sJOunkBjUOvjqWk1DPja7ZFhIS2mX/4EgTT8M7eTK9jrKhL/FvXXEbQwIs3pg1xp3dg==",
      "dev": true,
      "requires": {
        "ajv": "^6.12.4",
        "debug": "^4.1.1",
        "espree": "^7.3.0",
        "globals": "^12.1.0",
        "ignore": "^4.0.6",
        "import-fresh": "^3.2.1",
        "js-yaml": "^3.13.1",
        "lodash": "^4.17.20",
        "minimatch": "^3.0.4",
        "strip-json-comments": "^3.1.1"
      },
      "dependencies": {
        "debug": {
          "version": "4.3.1",
          "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.1.tgz",
          "integrity": "sha512-doEwdvm4PCeK4K3RQN2ZC2BYUBaxwLARCqZmMjtF8a51J2Rb0xpVloFRnCODwqjpwnAoao4pelN8l3RJdv3gRQ==",
          "dev": true,
          "requires": {
            "ms": "2.1.2"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "@koa/cors": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/@koa/cors/-/cors-3.1.0.tgz",
      "integrity": "sha512-7ulRC1da/rBa6kj6P4g2aJfnET3z8Uf3SWu60cjbtxTA5g8lxRdX/Bd2P92EagGwwAhANeNw8T8if99rJliR6Q==",
      "requires": {
        "vary": "^1.1.2"
      }
    },
    "@types/bson": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/@types/bson/-/bson-4.0.3.tgz",
      "integrity": "sha512-mVRvYnTOZJz3ccpxhr3wgxVmSeiYinW+zlzQz3SXWaJmD1DuL05Jeq7nKw3SnbKmbleW5qrLG5vdyWe/A9sXhw==",
      "requires": {
        "@types/node": "*"
      }
    },
    "@types/json5": {
      "version": "0.0.29",
      "resolved": "https://registry.npmjs.org/@types/json5/-/json5-0.0.29.tgz",
      "integrity": "sha1-7ihweulOEdK4J7y+UnC86n8+ce4=",
      "dev": true
    },
    "@types/mongodb": {
      "version": "3.6.3",
      "resolved": "https://registry.npmjs.org/@types/mongodb/-/mongodb-3.6.3.tgz",
      "integrity": "sha512-6YNqGP1hk5bjUFaim+QoFFuI61WjHiHE1BNeB41TA00Xd2K7zG4lcWyLLq/XtIp36uMavvS5hoAUJ+1u/GcX2Q==",
      "requires": {
        "@types/bson": "*",
        "@types/node": "*"
      }
    },
    "@types/node": {
      "version": "14.14.22",
      "resolved": "https://registry.npmjs.org/@types/node/-/node-14.14.22.tgz",
      "integrity": "sha512-g+f/qj/cNcqKkc3tFqlXOYjrmZA+jNBiDzbP3kH+B+otKFqAdPgVTGP1IeKRdMml/aE69as5S4FqtxAbl+LaMw=="
    },
    "accepts": {
      "version": "1.3.7",
      "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.7.tgz",
      "integrity": "sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0pU/fjRHyEp+PEfEPY0R3WCwAGVOtauxh1hOxNgIf5bv7dQpA==",
      "requires": {
        "mime-types": "~2.1.24",
        "negotiator": "0.6.2"
      }
    },
    "acorn": {
      "version": "7.4.1",
      "resolved": "https://registry.npmjs.org/acorn/-/acorn-7.4.1.tgz",
      "integrity": "sha512-nQyp0o1/mNdbTO1PO6kHkwSrmgZ0MT/jCCpNiwbUjGoRN4dlBhqJtoQuCnEOKzgTVwg0ZWiCoQy6SxMebQVh8A==",
      "dev": true
    },
    "acorn-jsx": {
      "version": "5.3.1",
      "resolved": "https://registry.npmjs.org/acorn-jsx/-/acorn-jsx-5.3.1.tgz",
      "integrity": "sha512-K0Ptm/47OKfQRpNQ2J/oIN/3QYiK6FwW+eJbILhsdxh2WTLdl+30o8aGdTbm5JbffpFFAg/g+zi1E+jvJha5ng==",
      "dev": true
    },
    "ajv": {
      "version": "6.12.6",
      "resolved": "https://registry.npmjs.org/ajv/-/ajv-6.12.6.tgz",
      "integrity": "sha512-j3fVLgvTo527anyYyJOGTYJbG+vnnQYvE0m5mmkc1TK+nxAppkCLMIL0aZ4dblVCNoGShhm+kzE4ZUykBoMg4g==",
      "dev": true,
      "requires": {
        "fast-deep-equal": "^3.1.1",
        "fast-json-stable-stringify": "^2.0.0",
        "json-schema-traverse": "^0.4.1",
        "uri-js": "^4.2.2"
      }
    },
    "ansi-colors": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/ansi-colors/-/ansi-colors-4.1.1.tgz",
      "integrity": "sha512-JoX0apGbHaUJBNl6yF+p6JAFYZ666/hhCGKN5t9QFjbJQKUU/g8MNbFDbvfrgKXvI1QpZplPOnwIo99lX/AAmA==",
      "dev": true
    },
    "ansi-regex": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.0.tgz",
      "integrity": "sha512-bY6fj56OUQ0hU1KjFNDQuJFezqKdrAyFdIevADiqrWHwSlbmBNMHp5ak2f40Pm8JTFyM2mqxkG6ngkHO11f/lg==",
      "dev": true
    },
    "ansi-styles": {
      "version": "3.2.1",
      "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.1.tgz",
      "integrity": "sha512-VT0ZI6kZRdTh8YyJw3SMbYm/u+NqfsAxEpWO0Pf9sq8/e94WxxOpPKx9FR1FlyCtOVDNOQ+8ntlqFxiRc+r5qA==",
      "dev": true,
      "requires": {
        "color-convert": "^1.9.0"
      }
    },
    "any-promise": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/any-promise/-/any-promise-1.3.0.tgz",
      "integrity": "sha1-q8av7tzqUugJzcA3au0845Y10X8="
    },
    "argparse": {
      "version": "1.0.10",
      "resolved": "https://registry.npmjs.org/argparse/-/argparse-1.0.10.tgz",
      "integrity": "sha512-o5Roy6tNG4SL/FOkCAN6RzjiakZS25RLYFrcMttJqbdd8BWrnA+fGz57iN5Pb06pvBGvl5gQ0B48dJlslXvoTg==",
      "dev": true,
      "requires": {
        "sprintf-js": "~1.0.2"
      }
    },
    "aria-query": {
      "version": "4.2.2",
      "resolved": "https://registry.npmjs.org/aria-query/-/aria-query-4.2.2.tgz",
      "integrity": "sha512-o/HelwhuKpTj/frsOsbNLNgnNGVIFsVP/SW2BSF14gVl7kAfMOJ6/8wUAUvG1R1NHKrfG+2sHZTu0yauT1qBrA==",
      "dev": true,
      "requires": {
        "@babel/runtime": "^7.10.2",
        "@babel/runtime-corejs3": "^7.10.2"
      }
    },
    "array-includes": {
      "version": "3.1.2",
      "resolved": "https://registry.npmjs.org/array-includes/-/array-includes-3.1.2.tgz",
      "integrity": "sha512-w2GspexNQpx+PutG3QpT437/BenZBj0M/MZGn5mzv/MofYqo0xmRHzn4lFsoDlWJ+THYsGJmFlW68WlDFx7VRw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "get-intrinsic": "^1.0.1",
        "is-string": "^1.0.5"
      }
    },
    "array.prototype.flat": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/array.prototype.flat/-/array.prototype.flat-1.2.4.tgz",
      "integrity": "sha512-4470Xi3GAPAjZqFcljX2xzckv1qeKPizoNkiS0+O4IoPR2ZNpcjE0pkhdihlDouK+x6QOast26B4Q/O9DJnwSg==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1"
      }
    },
    "array.prototype.flatmap": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/array.prototype.flatmap/-/array.prototype.flatmap-1.2.4.tgz",
      "integrity": "sha512-r9Z0zYoxqHz60vvQbWEdXIEtCwHF0yxaWfno9qzXeNHvfyl3BZqygmGzb84dsubyaXLH4husF+NFgMSdpZhk2Q==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "function-bind": "^1.1.1"
      }
    },
    "ast-types-flow": {
      "version": "0.0.7",
      "resolved": "https://registry.npmjs.org/ast-types-flow/-/ast-types-flow-0.0.7.tgz",
      "integrity": "sha1-9wtzXGvKGlycItmCw+Oef+ujva0=",
      "dev": true
    },
    "astral-regex": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/astral-regex/-/astral-regex-2.0.0.tgz",
      "integrity": "sha512-Z7tMw1ytTXt5jqMcOP+OQteU1VuNK9Y02uuJtKQ1Sv69jXQKKg5cibLwGJow8yzZP+eAc18EmLGPal0bp36rvQ==",
      "dev": true
    },
    "axe-core": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/axe-core/-/axe-core-4.1.1.tgz",
      "integrity": "sha512-5Kgy8Cz6LPC9DJcNb3yjAXTu3XihQgEdnIg50c//zOC/MyLP0Clg+Y8Sh9ZjjnvBrDZU4DgXS9C3T9r4/scGZQ==",
      "dev": true
    },
    "axios": {
      "version": "0.21.1",
      "resolved": "https://registry.npmjs.org/axios/-/axios-0.21.1.tgz",
      "integrity": "sha512-dKQiRHxGD9PPRIUNIWvZhPTPpl1rf/OxTYKsqKUDjBwYylTvV7SjSHJb9ratfyzM6wCdLCOYLzs73qpg5c4iGA==",
      "requires": {
        "follow-redirects": "^1.10.0"
      }
    },
    "axobject-query": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/axobject-query/-/axobject-query-2.2.0.tgz",
      "integrity": "sha512-Td525n+iPOOyUQIeBfcASuG6uJsDOITl7Mds5gFyerkWiX7qhUTdYUBlSgNMyVqtSJqwpt1kXGLdUt6SykLMRA==",
      "dev": true
    },
    "balanced-match": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz",
      "integrity": "sha1-ibTRmasr7kneFk6gK4nORi1xt2c=",
      "dev": true
    },
    "bl": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/bl/-/bl-2.2.1.tgz",
      "integrity": "sha512-6Pesp1w0DEX1N550i/uGV/TqucVL4AM/pgThFSN/Qq9si1/DF9aIHs1BxD8V/QU0HoeHO6cQRTAuYnLPKq1e4g==",
      "requires": {
        "readable-stream": "^2.3.5",
        "safe-buffer": "^5.1.1"
      }
    },
    "bluebird": {
      "version": "3.5.1",
      "resolved": "https://registry.npmjs.org/bluebird/-/bluebird-3.5.1.tgz",
      "integrity": "sha512-MKiLiV+I1AA596t9w1sQJ8jkiSr5+ZKi0WKrYGUn6d1Fx+Ij4tIj+m2WMQSGczs5jZVxV339chE8iwk6F64wjA=="
    },
    "brace-expansion": {
      "version": "1.1.11",
      "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz",
      "integrity": "sha512-iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==",
      "dev": true,
      "requires": {
        "balanced-match": "^1.0.0",
        "concat-map": "0.0.1"
      }
    },
    "bson": {
      "version": "1.1.5",
      "resolved": "https://registry.npmjs.org/bson/-/bson-1.1.5.tgz",
      "integrity": "sha512-kDuEzldR21lHciPQAIulLs1LZlCXdLziXI6Mb/TDkwXhb//UORJNPXgcRs2CuO4H0DcMkpfT3/ySsP3unoZjBg=="
    },
    "bytes": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.1.0.tgz",
      "integrity": "sha512-zauLjrfCG+xvoyaqLoV8bLVXXNGC4JqlxFCutSDWA6fJrTo2ZuvLYTqZ7aHBLZSMOopbzwv8f+wZcVzfVTI2Dg=="
    },
    "cache-content-type": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/cache-content-type/-/cache-content-type-1.0.1.tgz",
      "integrity": "sha512-IKufZ1o4Ut42YUrZSo8+qnMTrFuKkvyoLXUywKz9GJ5BrhOFGhLdkx9sG4KAnVvbY6kEcSFjLQul+DVmBm2bgA==",
      "requires": {
        "mime-types": "^2.1.18",
        "ylru": "^1.2.0"
      }
    },
    "call-bind": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/call-bind/-/call-bind-1.0.2.tgz",
      "integrity": "sha512-7O+FbCihrB5WGbFYesctwmTKae6rOiIzmz1icreWJ+0aA7LJfuqhEso2T9ncpcFtzMQtzXf2QGGueWJGTYsqrA==",
      "dev": true,
      "requires": {
        "function-bind": "^1.1.1",
        "get-intrinsic": "^1.0.2"
      }
    },
    "callsites": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/callsites/-/callsites-3.1.0.tgz",
      "integrity": "sha512-P8BjAsXvZS+VIDUI11hHCQEv74YT67YUi5JJFNWIqL235sBmjX4+qx9Muvls5ivyNENctx46xQLQ3aTuE7ssaQ==",
      "dev": true
    },
    "chalk": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/chalk/-/chalk-4.1.0.tgz",
      "integrity": "sha512-qwx12AxXe2Q5xQ43Ac//I6v5aXTipYrSESdOgzrN+9XjgEpyjpKuvSGaN4qE93f7TQTlerQQ8S+EQ0EyDoVL1A==",
      "dev": true,
      "requires": {
        "ansi-styles": "^4.1.0",
        "supports-color": "^7.1.0"
      },
      "dependencies": {
        "ansi-styles": {
          "version": "4.3.0",
          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz",
          "integrity": "sha512-zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==",
          "dev": true,
          "requires": {
            "color-convert": "^2.0.1"
          }
        },
        "color-convert": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz",
          "integrity": "sha512-RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==",
          "dev": true,
          "requires": {
            "color-name": "~1.1.4"
          }
        },
        "color-name": {
          "version": "1.1.4",
          "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz",
          "integrity": "sha512-dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==",
          "dev": true
        },
        "has-flag": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz",
          "integrity": "sha512-EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==",
          "dev": true
        },
        "supports-color": {
          "version": "7.2.0",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz",
          "integrity": "sha512-qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==",
          "dev": true,
          "requires": {
            "has-flag": "^4.0.0"
          }
        }
      }
    },
    "co": {
      "version": "4.6.0",
      "resolved": "https://registry.npmjs.org/co/-/co-4.6.0.tgz",
      "integrity": "sha1-bqa989hTrlTMuOR7+gvz+QMfsYQ="
    },
    "co-body": {
      "version": "6.1.0",
      "resolved": "https://registry.npmjs.org/co-body/-/co-body-6.1.0.tgz",
      "integrity": "sha512-m7pOT6CdLN7FuXUcpuz/8lfQ/L77x8SchHCF4G0RBTJO20Wzmhn5Sp4/5WsKy8OSpifBSUrmg83qEqaDHdyFuQ==",
      "requires": {
        "inflation": "^2.0.0",
        "qs": "^6.5.2",
        "raw-body": "^2.3.3",
        "type-is": "^1.6.16"
      }
    },
    "color-convert": {
      "version": "1.9.3",
      "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-1.9.3.tgz",
      "integrity": "sha512-QfAUtd+vFdAtFQcC8CCyYt1fYWxSqAiK2cSD6zDB8N3cpsEBAvRxp9zOGg6G/SHHJYAT88/az/IuDGALsNVbGg==",
      "dev": true,
      "requires": {
        "color-name": "1.1.3"
      }
    },
    "color-name": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.3.tgz",
      "integrity": "sha1-p9BVi9icQveV3UIyj3QIMcpTvCU=",
      "dev": true
    },
    "concat-map": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz",
      "integrity": "sha1-2Klr13/Wjfd5OnMDajug1UBdR3s=",
      "dev": true
    },
    "confusing-browser-globals": {
      "version": "1.0.10",
      "resolved": "https://registry.npmjs.org/confusing-browser-globals/-/confusing-browser-globals-1.0.10.tgz",
      "integrity": "sha512-gNld/3lySHwuhaVluJUKLePYirM3QNCKzVxqAdhJII9/WXKVX5PURzMVJspS1jTslSqjeuG4KMVTSouit5YPHA==",
      "dev": true
    },
    "contains-path": {
      "version": "0.1.0",
      "resolved": "https://registry.npmjs.org/contains-path/-/contains-path-0.1.0.tgz",
      "integrity": "sha1-/ozxhP9mcLa67wGp1IYaXL7EEgo=",
      "dev": true
    },
    "content-disposition": {
      "version": "0.5.3",
      "resolved": "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.3.tgz",
      "integrity": "sha512-ExO0774ikEObIAEV9kDo50o+79VCUdEB6n6lzKgGwupcVeRlhrj3qGAfwq8G6uBJjkqLrhT0qEYFcWng8z1z0g==",
      "requires": {
        "safe-buffer": "5.1.2"
      }
    },
    "content-type": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz",
      "integrity": "sha512-hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA=="
    },
    "cookies": {
      "version": "0.8.0",
      "resolved": "https://registry.npmjs.org/cookies/-/cookies-0.8.0.tgz",
      "integrity": "sha512-8aPsApQfebXnuI+537McwYsDtjVxGm8gTIzQI3FDW6t5t/DAhERxtnbEPN/8RX+uZthoz4eCOgloXaE5cYyNow==",
      "requires": {
        "depd": "~2.0.0",
        "keygrip": "~1.1.0"
      }
    },
    "copy-to": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/copy-to/-/copy-to-2.0.1.tgz",
      "integrity": "sha1-JoD7uAaKSNCGVrYJgJK9r8kG9KU="
    },
    "core-js-pure": {
      "version": "3.8.3",
      "resolved": "https://registry.npmjs.org/core-js-pure/-/core-js-pure-3.8.3.tgz",
      "integrity": "sha512-V5qQZVAr9K0xu7jXg1M7qTEwuxUgqr7dUOezGaNa7i+Xn9oXAU/d1fzqD9ObuwpVQOaorO5s70ckyi1woP9lVA==",
      "dev": true
    },
    "core-util-is": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz",
      "integrity": "sha1-tf1UIgqivFq1eqtxQMlAdUUDwac="
    },
    "cors": {
      "version": "2.8.5",
      "resolved": "https://registry.npmjs.org/cors/-/cors-2.8.5.tgz",
      "integrity": "sha512-KIHbLJqu73RGr/hnbrO9uBeixNGuvSQjul/jdFvS/KFSIH1hWVd1ng7zOHx+YrEfInLG7q4n6GHQ9cDtxv/P6g==",
      "requires": {
        "object-assign": "^4",
        "vary": "^1"
      }
    },
    "cross-spawn": {
      "version": "7.0.3",
      "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.3.tgz",
      "integrity": "sha512-iRDPJKUPVEND7dHPO8rkbOnPpyDygcDFtWjpeWNCgy8WP2rXcxXL8TskReQl6OrB2G7+UJrags1q15Fudc7G6w==",
      "dev": true,
      "requires": {
        "path-key": "^3.1.0",
        "shebang-command": "^2.0.0",
        "which": "^2.0.1"
      }
    },
    "damerau-levenshtein": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/damerau-levenshtein/-/damerau-levenshtein-1.0.6.tgz",
      "integrity": "sha512-JVrozIeElnj3QzfUIt8tB8YMluBJom4Vw9qTPpjGYQ9fYlB3D/rb6OordUxf3xeFB35LKWs0xqcO5U6ySvBtug==",
      "dev": true
    },
    "debug": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
      "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
      "requires": {
        "ms": "2.0.0"
      }
    },
    "deep-equal": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/deep-equal/-/deep-equal-1.0.1.tgz",
      "integrity": "sha1-9dJgKStmDghO/0zbyfCK0yR0SLU="
    },
    "deep-is": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/deep-is/-/deep-is-0.1.3.tgz",
      "integrity": "sha1-s2nW+128E+7PUk+RsHD+7cNXzzQ=",
      "dev": true
    },
    "define-properties": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/define-properties/-/define-properties-1.1.3.tgz",
      "integrity": "sha512-3MqfYKj2lLzdMSf8ZIZE/V+Zuy+BgD6f164e8K2w7dgnpKArBDerGYpM46IYYcjnkdPNMjPk9A6VFB8+3SKlXQ==",
      "dev": true,
      "requires": {
        "object-keys": "^1.0.12"
      }
    },
    "delegates": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz",
      "integrity": "sha1-hMbhWbgZBP3KWaDvRM2HDTElD5o="
    },
    "denque": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/denque/-/denque-1.5.0.tgz",
      "integrity": "sha512-CYiCSgIF1p6EUByQPlGkKnP1M9g0ZV3qMIrqMqZqdwazygIA/YP2vrbcyl1h/WppKJTdl1F85cXIle+394iDAQ=="
    },
    "depd": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz",
      "integrity": "sha512-g7nH6P6dyDioJogAAGprGpCtVImJhpPk/roCzdb3fIh61/s/nPsfR6onyMwkCAR/OlC3yBC0lESvUoQEAssIrw=="
    },
    "destroy": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz",
      "integrity": "sha1-l4hXRCxEdJ5CBmE+N5RiBYJqvYA="
    },
    "doctrine": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/doctrine/-/doctrine-3.0.0.tgz",
      "integrity": "sha512-yS+Q5i3hBf7GBkd4KG8a7eBNNWNGLTaEwwYWUijIYM7zrlYDM0BFXHjjPWlWZ1Rg7UaddZeIDmi9jF3HmqiQ2w==",
      "dev": true,
      "requires": {
        "esutils": "^2.0.2"
      }
    },
    "ee-first": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz",
      "integrity": "sha1-WQxhFWsK4vTwJVcyoViyZrxWsh0="
    },
    "emoji-regex": {
      "version": "8.0.0",
      "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz",
      "integrity": "sha512-MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==",
      "dev": true
    },
    "encodeurl": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz",
      "integrity": "sha1-rT/0yG7C0CkyL1oCw6mmBslbP1k="
    },
    "enquirer": {
      "version": "2.3.6",
      "resolved": "https://registry.npmjs.org/enquirer/-/enquirer-2.3.6.tgz",
      "integrity": "sha512-yjNnPr315/FjS4zIsUxYguYUPP2e1NK4d7E7ZOLiyYCcbFBiTMyID+2wvm2w6+pZ/odMA7cRkjhsPbltwBOrLg==",
      "dev": true,
      "requires": {
        "ansi-colors": "^4.1.1"
      }
    },
    "error-ex": {
      "version": "1.3.2",
      "resolved": "https://registry.npmjs.org/error-ex/-/error-ex-1.3.2.tgz",
      "integrity": "sha512-7dFHNmqeFSEt2ZBsCriorKnn3Z2pj+fd9kmI6QoWw4//DL+icEBfc0U7qJCisqrTsKTjw4fNFy2pW9OqStD84g==",
      "dev": true,
      "requires": {
        "is-arrayish": "^0.2.1"
      }
    },
    "es-abstract": {
      "version": "1.18.0-next.2",
      "resolved": "https://registry.npmjs.org/es-abstract/-/es-abstract-1.18.0-next.2.tgz",
      "integrity": "sha512-Ih4ZMFHEtZupnUh6497zEL4y2+w8+1ljnCyaTa+adcoafI1GOvMwFlDjBLfWR7y9VLfrjRJe9ocuHY1PSR9jjw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.2",
        "es-to-primitive": "^1.2.1",
        "function-bind": "^1.1.1",
        "get-intrinsic": "^1.0.2",
        "has": "^1.0.3",
        "has-symbols": "^1.0.1",
        "is-callable": "^1.2.2",
        "is-negative-zero": "^2.0.1",
        "is-regex": "^1.1.1",
        "object-inspect": "^1.9.0",
        "object-keys": "^1.1.1",
        "object.assign": "^4.1.2",
        "string.prototype.trimend": "^1.0.3",
        "string.prototype.trimstart": "^1.0.3"
      }
    },
    "es-to-primitive": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/es-to-primitive/-/es-to-primitive-1.2.1.tgz",
      "integrity": "sha512-QCOllgZJtaUo9miYBcLChTUaHNjJF3PYs1VidD7AwiEj1kYxKeQTctLAezAOH5ZKRH0g2IgPn6KwB4IT8iRpvA==",
      "dev": true,
      "requires": {
        "is-callable": "^1.1.4",
        "is-date-object": "^1.0.1",
        "is-symbol": "^1.0.2"
      }
    },
    "escape-html": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz",
      "integrity": "sha1-Aljq5NPQwJdN4cFpGI7wBR0dGYg="
    },
    "escape-string-regexp": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz",
      "integrity": "sha1-G2HAViGQqN/2rjuyzwIAyhMLhtQ=",
      "dev": true
    },
    "eslint": {
      "version": "7.18.0",
      "resolved": "https://registry.npmjs.org/eslint/-/eslint-7.18.0.tgz",
      "integrity": "sha512-fbgTiE8BfUJZuBeq2Yi7J3RB3WGUQ9PNuNbmgi6jt9Iv8qrkxfy19Ds3OpL1Pm7zg3BtTVhvcUZbIRQ0wmSjAQ==",
      "dev": true,
      "requires": {
        "@babel/code-frame": "^7.0.0",
        "@eslint/eslintrc": "^0.3.0",
        "ajv": "^6.10.0",
        "chalk": "^4.0.0",
        "cross-spawn": "^7.0.2",
        "debug": "^4.0.1",
        "doctrine": "^3.0.0",
        "enquirer": "^2.3.5",
        "eslint-scope": "^5.1.1",
        "eslint-utils": "^2.1.0",
        "eslint-visitor-keys": "^2.0.0",
        "espree": "^7.3.1",
        "esquery": "^1.2.0",
        "esutils": "^2.0.2",
        "file-entry-cache": "^6.0.0",
        "functional-red-black-tree": "^1.0.1",
        "glob-parent": "^5.0.0",
        "globals": "^12.1.0",
        "ignore": "^4.0.6",
        "import-fresh": "^3.0.0",
        "imurmurhash": "^0.1.4",
        "is-glob": "^4.0.0",
        "js-yaml": "^3.13.1",
        "json-stable-stringify-without-jsonify": "^1.0.1",
        "levn": "^0.4.1",
        "lodash": "^4.17.20",
        "minimatch": "^3.0.4",
        "natural-compare": "^1.4.0",
        "optionator": "^0.9.1",
        "progress": "^2.0.0",
        "regexpp": "^3.1.0",
        "semver": "^7.2.1",
        "strip-ansi": "^6.0.0",
        "strip-json-comments": "^3.1.0",
        "table": "^6.0.4",
        "text-table": "^0.2.0",
        "v8-compile-cache": "^2.0.3"
      },
      "dependencies": {
        "debug": {
          "version": "4.3.1",
          "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.1.tgz",
          "integrity": "sha512-doEwdvm4PCeK4K3RQN2ZC2BYUBaxwLARCqZmMjtF8a51J2Rb0xpVloFRnCODwqjpwnAoao4pelN8l3RJdv3gRQ==",
          "dev": true,
          "requires": {
            "ms": "2.1.2"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        },
        "semver": {
          "version": "7.3.4",
          "resolved": "https://registry.npmjs.org/semver/-/semver-7.3.4.tgz",
          "integrity": "sha512-tCfb2WLjqFAtXn4KEdxIhalnRtoKFN7nAwj0B3ZXCbQloV2tq5eDbcTmT68JJD3nRJq24/XgxtQKFIpQdtvmVw==",
          "dev": true,
          "requires": {
            "lru-cache": "^6.0.0"
          }
        }
      }
    },
    "eslint-config-airbnb": {
      "version": "18.2.1",
      "resolved": "https://registry.npmjs.org/eslint-config-airbnb/-/eslint-config-airbnb-18.2.1.tgz",
      "integrity": "sha512-glZNDEZ36VdlZWoxn/bUR1r/sdFKPd1mHPbqUtkctgNG4yT2DLLtJ3D+yCV+jzZCc2V1nBVkmdknOJBZ5Hc0fg==",
      "dev": true,
      "requires": {
        "eslint-config-airbnb-base": "^14.2.1",
        "object.assign": "^4.1.2",
        "object.entries": "^1.1.2"
      }
    },
    "eslint-config-airbnb-base": {
      "version": "14.2.1",
      "resolved": "https://registry.npmjs.org/eslint-config-airbnb-base/-/eslint-config-airbnb-base-14.2.1.tgz",
      "integrity": "sha512-GOrQyDtVEc1Xy20U7vsB2yAoB4nBlfH5HZJeatRXHleO+OS5Ot+MWij4Dpltw4/DyIkqUfqz1epfhVR5XWWQPA==",
      "dev": true,
      "requires": {
        "confusing-browser-globals": "^1.0.10",
        "object.assign": "^4.1.2",
        "object.entries": "^1.1.2"
      }
    },
    "eslint-import-resolver-node": {
      "version": "0.3.4",
      "resolved": "https://registry.npmjs.org/eslint-import-resolver-node/-/eslint-import-resolver-node-0.3.4.tgz",
      "integrity": "sha512-ogtf+5AB/O+nM6DIeBUNr2fuT7ot9Qg/1harBfBtaP13ekEWFQEEMP94BCB7zaNW3gyY+8SHYF00rnqYwXKWOA==",
      "dev": true,
      "requires": {
        "debug": "^2.6.9",
        "resolve": "^1.13.1"
      },
      "dependencies": {
        "debug": {
          "version": "2.6.9",
          "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",
          "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "eslint-module-utils": {
      "version": "2.6.0",
      "resolved": "https://registry.npmjs.org/eslint-module-utils/-/eslint-module-utils-2.6.0.tgz",
      "integrity": "sha512-6j9xxegbqe8/kZY8cYpcp0xhbK0EgJlg3g9mib3/miLaExuuwc3n5UEfSnU6hWMbT0FAYVvDbL9RrRgpUeQIvA==",
      "dev": true,
      "requires": {
        "debug": "^2.6.9",
        "pkg-dir": "^2.0.0"
      },
      "dependencies": {
        "debug": {
          "version": "2.6.9",
          "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",
          "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "eslint-plugin-import": {
      "version": "2.22.1",
      "resolved": "https://registry.npmjs.org/eslint-plugin-import/-/eslint-plugin-import-2.22.1.tgz",
      "integrity": "sha512-8K7JjINHOpH64ozkAhpT3sd+FswIZTfMZTjdx052pnWrgRCVfp8op9tbjpAk3DdUeI/Ba4C8OjdC0r90erHEOw==",
      "dev": true,
      "requires": {
        "array-includes": "^3.1.1",
        "array.prototype.flat": "^1.2.3",
        "contains-path": "^0.1.0",
        "debug": "^2.6.9",
        "doctrine": "1.5.0",
        "eslint-import-resolver-node": "^0.3.4",
        "eslint-module-utils": "^2.6.0",
        "has": "^1.0.3",
        "minimatch": "^3.0.4",
        "object.values": "^1.1.1",
        "read-pkg-up": "^2.0.0",
        "resolve": "^1.17.0",
        "tsconfig-paths": "^3.9.0"
      },
      "dependencies": {
        "debug": {
          "version": "2.6.9",
          "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",
          "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        },
        "doctrine": {
          "version": "1.5.0",
          "resolved": "https://registry.npmjs.org/doctrine/-/doctrine-1.5.0.tgz",
          "integrity": "sha1-N53Ocw9hZvds76TmcHoVmwLFpvo=",
          "dev": true,
          "requires": {
            "esutils": "^2.0.2",
            "isarray": "^1.0.0"
          }
        }
      }
    },
    "eslint-plugin-jsx-a11y": {
      "version": "6.4.1",
      "resolved": "https://registry.npmjs.org/eslint-plugin-jsx-a11y/-/eslint-plugin-jsx-a11y-6.4.1.tgz",
      "integrity": "sha512-0rGPJBbwHoGNPU73/QCLP/vveMlM1b1Z9PponxO87jfr6tuH5ligXbDT6nHSSzBC8ovX2Z+BQu7Bk5D/Xgq9zg==",
      "dev": true,
      "requires": {
        "@babel/runtime": "^7.11.2",
        "aria-query": "^4.2.2",
        "array-includes": "^3.1.1",
        "ast-types-flow": "^0.0.7",
        "axe-core": "^4.0.2",
        "axobject-query": "^2.2.0",
        "damerau-levenshtein": "^1.0.6",
        "emoji-regex": "^9.0.0",
        "has": "^1.0.3",
        "jsx-ast-utils": "^3.1.0",
        "language-tags": "^1.0.5"
      },
      "dependencies": {
        "emoji-regex": {
          "version": "9.2.0",
          "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-9.2.0.tgz",
          "integrity": "sha512-DNc3KFPK18bPdElMJnf/Pkv5TXhxFU3YFDEuGLDRtPmV4rkmCjBkCSEp22u6rBHdSN9Vlp/GK7k98prmE1Jgug==",
          "dev": true
        }
      }
    },
    "eslint-plugin-react": {
      "version": "7.22.0",
      "resolved": "https://registry.npmjs.org/eslint-plugin-react/-/eslint-plugin-react-7.22.0.tgz",
      "integrity": "sha512-p30tuX3VS+NWv9nQot9xIGAHBXR0+xJVaZriEsHoJrASGCJZDJ8JLNM0YqKqI0AKm6Uxaa1VUHoNEibxRCMQHA==",
      "dev": true,
      "requires": {
        "array-includes": "^3.1.1",
        "array.prototype.flatmap": "^1.2.3",
        "doctrine": "^2.1.0",
        "has": "^1.0.3",
        "jsx-ast-utils": "^2.4.1 || ^3.0.0",
        "object.entries": "^1.1.2",
        "object.fromentries": "^2.0.2",
        "object.values": "^1.1.1",
        "prop-types": "^15.7.2",
        "resolve": "^1.18.1",
        "string.prototype.matchall": "^4.0.2"
      },
      "dependencies": {
        "doctrine": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/doctrine/-/doctrine-2.1.0.tgz",
          "integrity": "sha512-35mSku4ZXK0vfCuHEDAwt55dg2jNajHZ1odvF+8SSr82EsZY4QmXfuWso8oEd8zRhVObSN18aM0CjSdoBX7zIw==",
          "dev": true,
          "requires": {
            "esutils": "^2.0.2"
          }
        }
      }
    },
    "eslint-plugin-react-hooks": {
      "version": "4.2.0",
      "resolved": "https://registry.npmjs.org/eslint-plugin-react-hooks/-/eslint-plugin-react-hooks-4.2.0.tgz",
      "integrity": "sha512-623WEiZJqxR7VdxFCKLI6d6LLpwJkGPYKODnkH3D7WpOG5KM8yWueBd8TLsNAetEJNF5iJmolaAKO3F8yzyVBQ==",
      "dev": true
    },
    "eslint-scope": {
      "version": "5.1.1",
      "resolved": "https://registry.npmjs.org/eslint-scope/-/eslint-scope-5.1.1.tgz",
      "integrity": "sha512-2NxwbF/hZ0KpepYN0cNbo+FN6XoK7GaHlQhgx/hIZl6Va0bF45RQOOwhLIy8lQDbuCiadSLCBnH2CFYquit5bw==",
      "dev": true,
      "requires": {
        "esrecurse": "^4.3.0",
        "estraverse": "^4.1.1"
      }
    },
    "eslint-utils": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/eslint-utils/-/eslint-utils-2.1.0.tgz",
      "integrity": "sha512-w94dQYoauyvlDc43XnGB8lU3Zt713vNChgt4EWwhXAP2XkBvndfxF0AgIqKOOasjPIPzj9JqgwkwbCYD0/V3Zg==",
      "dev": true,
      "requires": {
        "eslint-visitor-keys": "^1.1.0"
      },
      "dependencies": {
        "eslint-visitor-keys": {
          "version": "1.3.0",
          "resolved": "https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-1.3.0.tgz",
          "integrity": "sha512-6J72N8UNa462wa/KFODt/PJ3IU60SDpC3QXC1Hjc1BXXpfL2C9R5+AU7jhe0F6GREqVMh4Juu+NY7xn+6dipUQ==",
          "dev": true
        }
      }
    },
    "eslint-visitor-keys": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-2.0.0.tgz",
      "integrity": "sha512-QudtT6av5WXels9WjIM7qz1XD1cWGvX4gGXvp/zBn9nXG02D0utdU3Em2m/QjTnrsk6bBjmCygl3rmj118msQQ==",
      "dev": true
    },
    "espree": {
      "version": "7.3.1",
      "resolved": "https://registry.npmjs.org/espree/-/espree-7.3.1.tgz",
      "integrity": "sha512-v3JCNCE64umkFpmkFGqzVKsOT0tN1Zr+ueqLZfpV1Ob8e+CEgPWa+OxCoGH3tnhimMKIaBm4m/vaRpJ/krRz2g==",
      "dev": true,
      "requires": {
        "acorn": "^7.4.0",
        "acorn-jsx": "^5.3.1",
        "eslint-visitor-keys": "^1.3.0"
      },
      "dependencies": {
        "eslint-visitor-keys": {
          "version": "1.3.0",
          "resolved": "https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-1.3.0.tgz",
          "integrity": "sha512-6J72N8UNa462wa/KFODt/PJ3IU60SDpC3QXC1Hjc1BXXpfL2C9R5+AU7jhe0F6GREqVMh4Juu+NY7xn+6dipUQ==",
          "dev": true
        }
      }
    },
    "esprima": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/esprima/-/esprima-4.0.1.tgz",
      "integrity": "sha512-eGuFFw7Upda+g4p+QHvnW0RyTX/SVeJBDM/gCtMARO0cLuT2HcEKnTPvhjV6aGeqrCB/sbNop0Kszm0jsaWU4A==",
      "dev": true
    },
    "esquery": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/esquery/-/esquery-1.3.1.tgz",
      "integrity": "sha512-olpvt9QG0vniUBZspVRN6lwB7hOZoTRtT+jzR+tS4ffYx2mzbw+z0XCOk44aaLYKApNX5nMm+E+P6o25ip/DHQ==",
      "dev": true,
      "requires": {
        "estraverse": "^5.1.0"
      },
      "dependencies": {
        "estraverse": {
          "version": "5.2.0",
          "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-5.2.0.tgz",
          "integrity": "sha512-BxbNGGNm0RyRYvUdHpIwv9IWzeM9XClbOxwoATuFdOE7ZE6wHL+HQ5T8hoPM+zHvmKzzsEqhgy0GrQ5X13afiQ==",
          "dev": true
        }
      }
    },
    "esrecurse": {
      "version": "4.3.0",
      "resolved": "https://registry.npmjs.org/esrecurse/-/esrecurse-4.3.0.tgz",
      "integrity": "sha512-KmfKL3b6G+RXvP8N1vr3Tq1kL/oCFgn2NYXEtqP8/L3pKapUA4G8cFVaoF3SU323CD4XypR/ffioHmkti6/Tag==",
      "dev": true,
      "requires": {
        "estraverse": "^5.2.0"
      },
      "dependencies": {
        "estraverse": {
          "version": "5.2.0",
          "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-5.2.0.tgz",
          "integrity": "sha512-BxbNGGNm0RyRYvUdHpIwv9IWzeM9XClbOxwoATuFdOE7ZE6wHL+HQ5T8hoPM+zHvmKzzsEqhgy0GrQ5X13afiQ==",
          "dev": true
        }
      }
    },
    "estraverse": {
      "version": "4.3.0",
      "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-4.3.0.tgz",
      "integrity": "sha512-39nnKffWz8xN1BU/2c79n9nB9HDzo0niYUqx6xyqUnyoAnQyyWpOTdZEeiCch8BBu515t4wp9ZmgVfVhn9EBpw==",
      "dev": true
    },
    "esutils": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/esutils/-/esutils-2.0.3.tgz",
      "integrity": "sha512-kVscqXk4OCp68SZ0dkgEKVi6/8ij300KBWTJq32P/dYeWTSwK41WyTxalN1eRmA5Z9UU/LX9D7FWSmV9SAYx6g==",
      "dev": true
    },
    "fast-deep-equal": {
      "version": "3.1.3",
      "resolved": "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz",
      "integrity": "sha512-f3qQ9oQy9j2AhBe/H9VC91wLmKBCCU/gDOnKNAYG5hswO7BLKj09Hc5HYNz9cGI++xlpDCIgDaitVs03ATR84Q==",
      "dev": true
    },
    "fast-json-stable-stringify": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz",
      "integrity": "sha512-lhd/wF+Lk98HZoTCtlVraHtfh5XYijIjalXck7saUtuanSDyLMxnHhSXEDJqHxD7msR8D0uCmqlkwjCV8xvwHw==",
      "dev": true
    },
    "fast-levenshtein": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz",
      "integrity": "sha1-PYpcZog6FqMMqGQ+hR8Zuqd5eRc=",
      "dev": true
    },
    "file-entry-cache": {
      "version": "6.0.0",
      "resolved": "https://registry.npmjs.org/file-entry-cache/-/file-entry-cache-6.0.0.tgz",
      "integrity": "sha512-fqoO76jZ3ZnYrXLDRxBR1YvOvc0k844kcOg40bgsPrE25LAb/PDqTY+ho64Xh2c8ZXgIKldchCFHczG2UVRcWA==",
      "dev": true,
      "requires": {
        "flat-cache": "^3.0.4"
      }
    },
    "find-up": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/find-up/-/find-up-2.1.0.tgz",
      "integrity": "sha1-RdG35QbHF93UgndaK3eSCjwMV6c=",
      "dev": true,
      "requires": {
        "locate-path": "^2.0.0"
      }
    },
    "flat-cache": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/flat-cache/-/flat-cache-3.0.4.tgz",
      "integrity": "sha512-dm9s5Pw7Jc0GvMYbshN6zchCA9RgQlzzEZX3vylR9IqFfS8XciblUXOKfW6SiuJ0e13eDYZoZV5wdrev7P3Nwg==",
      "dev": true,
      "requires": {
        "flatted": "^3.1.0",
        "rimraf": "^3.0.2"
      }
    },
    "flatted": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/flatted/-/flatted-3.1.1.tgz",
      "integrity": "sha512-zAoAQiudy+r5SvnSw3KJy5os/oRJYHzrzja/tBDqrZtNhUw8bt6y8OBzMWcjWr+8liV8Eb6yOhw8WZ7VFZ5ZzA==",
      "dev": true
    },
    "follow-redirects": {
      "version": "1.13.2",
      "resolved": "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.13.2.tgz",
      "integrity": "sha512-6mPTgLxYm3r6Bkkg0vNM0HTjfGrOEtsfbhagQvbxDEsEkpNhw582upBaoRZylzen6krEmxXJgt9Ju6HiI4O7BA=="
    },
    "fresh": {
      "version": "0.5.2",
      "resolved": "https://registry.npmjs.org/fresh/-/fresh-0.5.2.tgz",
      "integrity": "sha1-PYyt2Q2XZWn6g1qx+OSyOhBWBac="
    },
    "fs.realpath": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz",
      "integrity": "sha1-FQStJSMVjKpA20onh8sBQRmU6k8=",
      "dev": true
    },
    "function-bind": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz",
      "integrity": "sha512-yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==",
      "dev": true
    },
    "functional-red-black-tree": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/functional-red-black-tree/-/functional-red-black-tree-1.0.1.tgz",
      "integrity": "sha1-GwqzvVU7Kg1jmdKcDj6gslIHgyc=",
      "dev": true
    },
    "get-intrinsic": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.0.2.tgz",
      "integrity": "sha512-aeX0vrFm21ILl3+JpFFRNe9aUvp6VFZb2/CTbgLb8j75kOhvoNYjt9d8KA/tJG4gSo8nzEDedRl0h7vDmBYRVg==",
      "dev": true,
      "requires": {
        "function-bind": "^1.1.1",
        "has": "^1.0.3",
        "has-symbols": "^1.0.1"
      }
    },
    "glob": {
      "version": "7.1.6",
      "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.6.tgz",
      "integrity": "sha512-LwaxwyZ72Lk7vZINtNNrywX0ZuLyStrdDtabefZKAY5ZGJhVtgdznluResxNmPitE0SAO+O26sWTHeKSI2wMBA==",
      "dev": true,
      "requires": {
        "fs.realpath": "^1.0.0",
        "inflight": "^1.0.4",
        "inherits": "2",
        "minimatch": "^3.0.4",
        "once": "^1.3.0",
        "path-is-absolute": "^1.0.0"
      }
    },
    "glob-parent": {
      "version": "5.1.1",
      "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.1.tgz",
      "integrity": "sha512-FnI+VGOpnlGHWZxthPGR+QhR78fuiK0sNLkHQv+bL9fQi57lNNdquIbna/WrfROrolq8GK5Ek6BiMwqL/voRYQ==",
      "dev": true,
      "requires": {
        "is-glob": "^4.0.1"
      }
    },
    "globals": {
      "version": "12.4.0",
      "resolved": "https://registry.npmjs.org/globals/-/globals-12.4.0.tgz",
      "integrity": "sha512-BWICuzzDvDoH54NHKCseDanAhE3CeDorgDL5MT6LMXXj2WCnd9UC2szdk4AWLfjdgNBCXLUanXYcpBBKOSWGwg==",
      "dev": true,
      "requires": {
        "type-fest": "^0.8.1"
      }
    },
    "graceful-fs": {
      "version": "4.2.4",
      "resolved": "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.4.tgz",
      "integrity": "sha512-WjKPNJF79dtJAVniUlGGWHYGz2jWxT6VhN/4m1NdkbZ2nOsEF+cI1Edgql5zCRhs/VsQYRvrXctxktVXZUkixw==",
      "dev": true
    },
    "has": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/has/-/has-1.0.3.tgz",
      "integrity": "sha512-f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==",
      "dev": true,
      "requires": {
        "function-bind": "^1.1.1"
      }
    },
    "has-flag": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/has-flag/-/has-flag-3.0.0.tgz",
      "integrity": "sha1-tdRU3CGZriJWmfNGfloH87lVuv0=",
      "dev": true
    },
    "has-symbols": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/has-symbols/-/has-symbols-1.0.1.tgz",
      "integrity": "sha512-PLcsoqu++dmEIZB+6totNFKq/7Do+Z0u4oT0zKOJNl3lYK6vGwwu2hjHs+68OEZbTjiUE9bgOABXbP/GvrS0Kg==",
      "dev": true
    },
    "hosted-git-info": {
      "version": "2.8.8",
      "resolved": "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.8.8.tgz",
      "integrity": "sha512-f/wzC2QaWBs7t9IYqB4T3sR1xviIViXJRJTWBlx2Gf3g0Xi5vI7Yy4koXQ1c9OYDGHN9sBy1DQ2AB8fqZBWhUg==",
      "dev": true
    },
    "http-assert": {
      "version": "1.4.1",
      "resolved": "https://registry.npmjs.org/http-assert/-/http-assert-1.4.1.tgz",
      "integrity": "sha512-rdw7q6GTlibqVVbXr0CKelfV5iY8G2HqEUkhSk297BMbSpSL8crXC+9rjKoMcZZEsksX30le6f/4ul4E28gegw==",
      "requires": {
        "deep-equal": "~1.0.1",
        "http-errors": "~1.7.2"
      },
      "dependencies": {
        "depd": {
          "version": "1.1.2",
          "resolved": "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz",
          "integrity": "sha1-m81S4UwJd2PnSbJ0xDRu0uVgtak="
        },
        "http-errors": {
          "version": "1.7.3",
          "resolved": "https://registry.npmjs.org/http-errors/-/http-errors-1.7.3.tgz",
          "integrity": "sha512-ZTTX0MWrsQ2ZAhA1cejAwDLycFsd7I7nVtnkT3Ol0aqodaKW+0CTZDQ1uBv5whptCnc8e8HeRRJxRs0kmm/Qfw==",
          "requires": {
            "depd": "~1.1.2",
            "inherits": "2.0.4",
            "setprototypeof": "1.1.1",
            "statuses": ">= 1.5.0 < 2",
            "toidentifier": "1.0.0"
          }
        }
      }
    },
    "http-errors": {
      "version": "1.8.0",
      "resolved": "https://registry.npmjs.org/http-errors/-/http-errors-1.8.0.tgz",
      "integrity": "sha512-4I8r0C5JDhT5VkvI47QktDW75rNlGVsUf/8hzjCC/wkWI/jdTRmBb9aI7erSG82r1bjKY3F6k28WnsVxB1C73A==",
      "requires": {
        "depd": "~1.1.2",
        "inherits": "2.0.4",
        "setprototypeof": "1.2.0",
        "statuses": ">= 1.5.0 < 2",
        "toidentifier": "1.0.0"
      },
      "dependencies": {
        "depd": {
          "version": "1.1.2",
          "resolved": "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz",
          "integrity": "sha1-m81S4UwJd2PnSbJ0xDRu0uVgtak="
        },
        "setprototypeof": {
          "version": "1.2.0",
          "resolved": "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.2.0.tgz",
          "integrity": "sha512-E5LDX7Wrp85Kil5bhZv46j8jOeboKq5JMmYM3gVGdGH8xFpPWXUMsNrlODCrkoxMEeNi/XZIwuRvY4XNwYMJpw=="
        }
      }
    },
    "iconv-lite": {
      "version": "0.4.24",
      "resolved": "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.24.tgz",
      "integrity": "sha512-v3MXnZAcvnywkTUEZomIActle7RXXeedOR31wwl7VlyoXO4Qi9arvSenNQWne1TcRwhCL1HwLI21bEqdpj8/rA==",
      "requires": {
        "safer-buffer": ">= 2.1.2 < 3"
      }
    },
    "ignore": {
      "version": "4.0.6",
      "resolved": "https://registry.npmjs.org/ignore/-/ignore-4.0.6.tgz",
      "integrity": "sha512-cyFDKrqc/YdcWFniJhzI42+AzS+gNwmUzOSFcRCQYwySuBBBy/KjuxWLZ/FHEH6Moq1NizMOBWyTcv8O4OZIMg==",
      "dev": true
    },
    "import-fresh": {
      "version": "3.3.0",
      "resolved": "https://registry.npmjs.org/import-fresh/-/import-fresh-3.3.0.tgz",
      "integrity": "sha512-veYYhQa+D1QBKznvhUHxb8faxlrwUnxseDAbAp457E0wLNio2bOSKnjYDhMj+YiAq61xrMGhQk9iXVk5FzgQMw==",
      "dev": true,
      "requires": {
        "parent-module": "^1.0.0",
        "resolve-from": "^4.0.0"
      },
      "dependencies": {
        "resolve-from": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/resolve-from/-/resolve-from-4.0.0.tgz",
          "integrity": "sha512-pb/MYmXstAkysRFx8piNI1tGFNQIFA3vkE3Gq4EuA1dF6gHp/+vgZqsCGJapvy8N3Q+4o7FwvquPJcnZ7RYy4g==",
          "dev": true
        }
      }
    },
    "imurmurhash": {
      "version": "0.1.4",
      "resolved": "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz",
      "integrity": "sha1-khi5srkoojixPcT7a21XbyMUU+o=",
      "dev": true
    },
    "inflation": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/inflation/-/inflation-2.0.0.tgz",
      "integrity": "sha1-i0F+R8KPklpFEz2RTKH9OJEH8w8="
    },
    "inflight": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",
      "integrity": "sha1-Sb1jMdfQLQwJvJEKEHW6gWW1bfk=",
      "dev": true,
      "requires": {
        "once": "^1.3.0",
        "wrappy": "1"
      }
    },
    "inherits": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz",
      "integrity": "sha512-k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ=="
    },
    "internal-slot": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/internal-slot/-/internal-slot-1.0.2.tgz",
      "integrity": "sha512-2cQNfwhAfJIkU4KZPkDI+Gj5yNNnbqi40W9Gge6dfnk4TocEVm00B3bdiL+JINrbGJil2TeHvM4rETGzk/f/0g==",
      "dev": true,
      "requires": {
        "es-abstract": "^1.17.0-next.1",
        "has": "^1.0.3",
        "side-channel": "^1.0.2"
      },
      "dependencies": {
        "es-abstract": {
          "version": "1.17.7",
          "resolved": "https://registry.npmjs.org/es-abstract/-/es-abstract-1.17.7.tgz",
          "integrity": "sha512-VBl/gnfcJ7OercKA9MVaegWsBHFjV492syMudcnQZvt/Dw8ezpcOHYZXa/J96O8vx+g4x65YKhxOwDUh63aS5g==",
          "dev": true,
          "requires": {
            "es-to-primitive": "^1.2.1",
            "function-bind": "^1.1.1",
            "has": "^1.0.3",
            "has-symbols": "^1.0.1",
            "is-callable": "^1.2.2",
            "is-regex": "^1.1.1",
            "object-inspect": "^1.8.0",
            "object-keys": "^1.1.1",
            "object.assign": "^4.1.1",
            "string.prototype.trimend": "^1.0.1",
            "string.prototype.trimstart": "^1.0.1"
          }
        }
      }
    },
    "is-arrayish": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz",
      "integrity": "sha1-d8mYQFJ6qOyxqLppe4BkWnqSap0=",
      "dev": true
    },
    "is-callable": {
      "version": "1.2.2",
      "resolved": "https://registry.npmjs.org/is-callable/-/is-callable-1.2.2.tgz",
      "integrity": "sha512-dnMqspv5nU3LoewK2N/y7KLtxtakvTuaCsU9FU50/QDmdbHNy/4/JuRtMHqRU22o3q+W89YQndQEeCVwK+3qrA==",
      "dev": true
    },
    "is-core-module": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/is-core-module/-/is-core-module-2.2.0.tgz",
      "integrity": "sha512-XRAfAdyyY5F5cOXn7hYQDqh2Xmii+DEfIcQGxK/uNwMHhIkPWO0g8msXcbzLe+MpGoR951MlqM/2iIlU4vKDdQ==",
      "dev": true,
      "requires": {
        "has": "^1.0.3"
      }
    },
    "is-date-object": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/is-date-object/-/is-date-object-1.0.2.tgz",
      "integrity": "sha512-USlDT524woQ08aoZFzh3/Z6ch9Y/EWXEHQ/AaRN0SkKq4t2Jw2R2339tSXmwuVoY7LLlBCbOIlx2myP/L5zk0g==",
      "dev": true
    },
    "is-extglob": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz",
      "integrity": "sha1-qIwCU1eR8C7TfHahueqXc8gz+MI=",
      "dev": true
    },
    "is-fullwidth-code-point": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz",
      "integrity": "sha512-zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==",
      "dev": true
    },
    "is-generator-function": {
      "version": "1.0.8",
      "resolved": "https://registry.npmjs.org/is-generator-function/-/is-generator-function-1.0.8.tgz",
      "integrity": "sha512-2Omr/twNtufVZFr1GhxjOMFPAj2sjc/dKaIqBhvo4qciXfJmITGH6ZGd8eZYNHza8t1y0e01AuqRhJwfWp26WQ=="
    },
    "is-glob": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-4.0.1.tgz",
      "integrity": "sha512-5G0tKtBTFImOqDnLB2hG6Bp2qcKEFduo4tZu9MT/H6NQv/ghhy30o55ufafxJ/LdH79LLs2Kfrn85TLKyA7BUg==",
      "dev": true,
      "requires": {
        "is-extglob": "^2.1.1"
      }
    },
    "is-negative-zero": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/is-negative-zero/-/is-negative-zero-2.0.1.tgz",
      "integrity": "sha512-2z6JzQvZRa9A2Y7xC6dQQm4FSTSTNWjKIYYTt4246eMTJmIo0Q+ZyOsU66X8lxK1AbB92dFeglPLrhwpeRKO6w==",
      "dev": true
    },
    "is-regex": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/is-regex/-/is-regex-1.1.1.tgz",
      "integrity": "sha512-1+QkEcxiLlB7VEyFtyBg94e08OAsvq7FUBgApTq/w2ymCLyKJgDPsybBENVtA7XCQEgEXxKPonG+mvYRxh/LIg==",
      "dev": true,
      "requires": {
        "has-symbols": "^1.0.1"
      }
    },
    "is-string": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/is-string/-/is-string-1.0.5.tgz",
      "integrity": "sha512-buY6VNRjhQMiF1qWDouloZlQbRhDPCebwxSjxMjxgemYT46YMd2NR0/H+fBhEfWX4A/w9TBJ+ol+okqJKFE6vQ==",
      "dev": true
    },
    "is-symbol": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/is-symbol/-/is-symbol-1.0.3.tgz",
      "integrity": "sha512-OwijhaRSgqvhm/0ZdAcXNZt9lYdKFpcRDT5ULUuYXPoT794UNOdU+gpT6Rzo7b4V2HUl/op6GqY894AZwv9faQ==",
      "dev": true,
      "requires": {
        "has-symbols": "^1.0.1"
      }
    },
    "isarray": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz",
      "integrity": "sha1-u5NdSFgsuhaMBoNJV6VKPgcSTxE="
    },
    "isexe": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz",
      "integrity": "sha1-6PvzdNxVb/iUehDcsFctYz8s+hA=",
      "dev": true
    },
    "js-tokens": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz",
      "integrity": "sha512-RdJUflcE3cUzKiMqQgsCu06FPu9UdIJO0beYbPhHN4k6apgJtifcoCtT9bcxOpYBtpD2kCM6Sbzg4CausW/PKQ==",
      "dev": true
    },
    "js-yaml": {
      "version": "3.14.1",
      "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-3.14.1.tgz",
      "integrity": "sha512-okMH7OXXJ7YrN9Ok3/SXrnu4iX9yOk+25nqX4imS2npuvTYDmo/QEZoqwZkYaIDk3jVvBOTOIEgEhaLOynBS9g==",
      "dev": true,
      "requires": {
        "argparse": "^1.0.7",
        "esprima": "^4.0.0"
      }
    },
    "json-schema-traverse": {
      "version": "0.4.1",
      "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz",
      "integrity": "sha512-xbbCH5dCYU5T8LcEhhuh7HJ88HXuW3qsI3Y0zOZFKfZEHcpWiHU/Jxzk629Brsab/mMiHQti9wMP+845RPe3Vg==",
      "dev": true
    },
    "json-stable-stringify-without-jsonify": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz",
      "integrity": "sha1-nbe1lJatPzz+8wp1FC0tkwrXJlE=",
      "dev": true
    },
    "json5": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/json5/-/json5-1.0.1.tgz",
      "integrity": "sha512-aKS4WQjPenRxiQsC93MNfjx+nbF4PAdYzmd/1JIj8HYzqfbu86beTuNgXDzPknWk0n0uARlyewZo4s++ES36Ow==",
      "dev": true,
      "requires": {
        "minimist": "^1.2.0"
      }
    },
    "jsx-ast-utils": {
      "version": "3.2.0",
      "resolved": "https://registry.npmjs.org/jsx-ast-utils/-/jsx-ast-utils-3.2.0.tgz",
      "integrity": "sha512-EIsmt3O3ljsU6sot/J4E1zDRxfBNrhjyf/OKjlydwgEimQuznlM4Wv7U+ueONJMyEn1WRE0K8dhi3dVAXYT24Q==",
      "dev": true,
      "requires": {
        "array-includes": "^3.1.2",
        "object.assign": "^4.1.2"
      }
    },
    "kareem": {
      "version": "2.3.2",
      "resolved": "https://registry.npmjs.org/kareem/-/kareem-2.3.2.tgz",
      "integrity": "sha512-STHz9P7X2L4Kwn72fA4rGyqyXdmrMSdxqHx9IXon/FXluXieaFA6KJ2upcHAHxQPQ0LeM/OjLrhFxifHewOALQ=="
    },
    "keygrip": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/keygrip/-/keygrip-1.1.0.tgz",
      "integrity": "sha512-iYSchDJ+liQ8iwbSI2QqsQOvqv58eJCEanyJPJi+Khyu8smkcKSFUCbPwzFcL7YVtZ6eONjqRX/38caJ7QjRAQ==",
      "requires": {
        "tsscmp": "1.0.6"
      }
    },
    "koa": {
      "version": "2.13.1",
      "resolved": "https://registry.npmjs.org/koa/-/koa-2.13.1.tgz",
      "integrity": "sha512-Lb2Dloc72auj5vK4X4qqL7B5jyDPQaZucc9sR/71byg7ryoD1NCaCm63CShk9ID9quQvDEi1bGR/iGjCG7As3w==",
      "requires": {
        "accepts": "^1.3.5",
        "cache-content-type": "^1.0.0",
        "content-disposition": "~0.5.2",
        "content-type": "^1.0.4",
        "cookies": "~0.8.0",
        "debug": "~3.1.0",
        "delegates": "^1.0.0",
        "depd": "^2.0.0",
        "destroy": "^1.0.4",
        "encodeurl": "^1.0.2",
        "escape-html": "^1.0.3",
        "fresh": "~0.5.2",
        "http-assert": "^1.3.0",
        "http-errors": "^1.6.3",
        "is-generator-function": "^1.0.7",
        "koa-compose": "^4.1.0",
        "koa-convert": "^1.2.0",
        "on-finished": "^2.3.0",
        "only": "~0.0.2",
        "parseurl": "^1.3.2",
        "statuses": "^1.5.0",
        "type-is": "^1.6.16",
        "vary": "^1.1.2"
      }
    },
    "koa-bodyparser": {
      "version": "4.3.0",
      "resolved": "https://registry.npmjs.org/koa-bodyparser/-/koa-bodyparser-4.3.0.tgz",
      "integrity": "sha512-uyV8G29KAGwZc4q/0WUAjH+Tsmuv9ImfBUF2oZVyZtaeo0husInagyn/JH85xMSxM0hEk/mbCII5ubLDuqW/Rw==",
      "requires": {
        "co-body": "^6.0.0",
        "copy-to": "^2.0.1"
      }
    },
    "koa-compose": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/koa-compose/-/koa-compose-4.1.0.tgz",
      "integrity": "sha512-8ODW8TrDuMYvXRwra/Kh7/rJo9BtOfPc6qO8eAfC80CnCvSjSl0bkRM24X6/XBBEyj0v1nRUQ1LyOy3dbqOWXw=="
    },
    "koa-convert": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/koa-convert/-/koa-convert-1.2.0.tgz",
      "integrity": "sha1-2kCHXfSd4FOQmNFwC1CCDOvNIdA=",
      "requires": {
        "co": "^4.6.0",
        "koa-compose": "^3.0.0"
      },
      "dependencies": {
        "koa-compose": {
          "version": "3.2.1",
          "resolved": "https://registry.npmjs.org/koa-compose/-/koa-compose-3.2.1.tgz",
          "integrity": "sha1-qFzLQLfZhtjlo0Wzoazo6rz1Tec=",
          "requires": {
            "any-promise": "^1.1.0"
          }
        }
      }
    },
    "koa-cors": {
      "version": "0.0.16",
      "resolved": "https://registry.npmjs.org/koa-cors/-/koa-cors-0.0.16.tgz",
      "integrity": "sha1-mBB5k6eQnjTAQphsXsYVbXfzQy4="
    },
    "koa-http-request": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/koa-http-request/-/koa-http-request-2.2.1.tgz",
      "integrity": "sha512-891i1Z3aepyjttEG6FlJtt9bFAMvprkFkd1ZsoR+bnNpmkZe2JdlMnjjh7qWZ55stZJ0P1tX5589q6CWjnbkog==",
      "requires": {
        "zenio": "0.0.7"
      }
    },
    "koa-router": {
      "version": "10.0.0",
      "resolved": "https://registry.npmjs.org/koa-router/-/koa-router-10.0.0.tgz",
      "integrity": "sha512-gAE5J1gBQTvfR8rMMtMUkE26+1MbO3DGpGmvfmM2pR9Z7w2VIb2Ecqeal98yVO7+4ltffby7gWOzpCmdNOQe0w==",
      "requires": {
        "debug": "^4.1.1",
        "http-errors": "^1.7.3",
        "koa-compose": "^4.1.0",
        "methods": "^1.1.2",
        "path-to-regexp": "^6.1.0"
      },
      "dependencies": {
        "debug": {
          "version": "4.3.1",
          "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.1.tgz",
          "integrity": "sha512-doEwdvm4PCeK4K3RQN2ZC2BYUBaxwLARCqZmMjtF8a51J2Rb0xpVloFRnCODwqjpwnAoao4pelN8l3RJdv3gRQ==",
          "requires": {
            "ms": "2.1.2"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w=="
        }
      }
    },
    "language-subtag-registry": {
      "version": "0.3.21",
      "resolved": "https://registry.npmjs.org/language-subtag-registry/-/language-subtag-registry-0.3.21.tgz",
      "integrity": "sha512-L0IqwlIXjilBVVYKFT37X9Ih11Um5NEl9cbJIuU/SwP/zEEAbBPOnEeeuxVMf45ydWQRDQN3Nqc96OgbH1K+Pg==",
      "dev": true
    },
    "language-tags": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/language-tags/-/language-tags-1.0.5.tgz",
      "integrity": "sha1-0yHbxNowuovzAk4ED6XBRmH5GTo=",
      "dev": true,
      "requires": {
        "language-subtag-registry": "~0.3.2"
      }
    },
    "levn": {
      "version": "0.4.1",
      "resolved": "https://registry.npmjs.org/levn/-/levn-0.4.1.tgz",
      "integrity": "sha512-+bT2uH4E5LGE7h/n3evcS/sQlJXCpIp6ym8OWJ5eV6+67Dsql/LaaT7qJBAt2rzfoa/5QBGBhxDix1dMt2kQKQ==",
      "dev": true,
      "requires": {
        "prelude-ls": "^1.2.1",
        "type-check": "~0.4.0"
      }
    },
    "load-json-file": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-2.0.0.tgz",
      "integrity": "sha1-eUfkIUmvgNaWy/eXvKq8/h/inKg=",
      "dev": true,
      "requires": {
        "graceful-fs": "^4.1.2",
        "parse-json": "^2.2.0",
        "pify": "^2.0.0",
        "strip-bom": "^3.0.0"
      }
    },
    "locate-path": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-2.0.0.tgz",
      "integrity": "sha1-K1aLJl7slExtnA3pw9u7ygNUzY4=",
      "dev": true,
      "requires": {
        "p-locate": "^2.0.0",
        "path-exists": "^3.0.0"
      }
    },
    "lodash": {
      "version": "4.17.20",
      "resolved": "https://registry.npmjs.org/lodash/-/lodash-4.17.20.tgz",
      "integrity": "sha512-PlhdFcillOINfeV7Ni6oF1TAEayyZBoZ8bcshTHqOYJYlrqzRK5hagpagky5o4HfCzzd1TRkXPMFq6cKk9rGmA==",
      "dev": true
    },
    "loose-envify": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",
      "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",
      "dev": true,
      "requires": {
        "js-tokens": "^3.0.0 || ^4.0.0"
      }
    },
    "lru-cache": {
      "version": "6.0.0",
      "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-6.0.0.tgz",
      "integrity": "sha512-Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==",
      "dev": true,
      "requires": {
        "yallist": "^4.0.0"
      }
    },
    "media-typer": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz",
      "integrity": "sha1-hxDXrwqmJvj/+hzgAWhUUmMlV0g="
    },
    "memory-pager": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/memory-pager/-/memory-pager-1.5.0.tgz",
      "integrity": "sha512-ZS4Bp4r/Zoeq6+NLJpP+0Zzm0pR8whtGPf1XExKLJBAczGMnSi3It14OiNCStjQjM6NU1okjQGSxgEZN8eBYKg==",
      "optional": true
    },
    "methods": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz",
      "integrity": "sha1-VSmk1nZUE07cxSZmVoNbD4Ua/O4="
    },
    "mime-db": {
      "version": "1.45.0",
      "resolved": "https://registry.npmjs.org/mime-db/-/mime-db-1.45.0.tgz",
      "integrity": "sha512-CkqLUxUk15hofLoLyljJSrukZi8mAtgd+yE5uO4tqRZsdsAJKv0O+rFMhVDRJgozy+yG6md5KwuXhD4ocIoP+w=="
    },
    "mime-types": {
      "version": "2.1.28",
      "resolved": "https://registry.npmjs.org/mime-types/-/mime-types-2.1.28.tgz",
      "integrity": "sha512-0TO2yJ5YHYr7M2zzT7gDU1tbwHxEUWBCLt0lscSNpcdAfFyJOVEpRYNS7EXVcTLNj/25QO8gulHC5JtTzSE2UQ==",
      "requires": {
        "mime-db": "1.45.0"
      }
    },
    "minimatch": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz",
      "integrity": "sha512-yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==",
      "dev": true,
      "requires": {
        "brace-expansion": "^1.1.7"
      }
    },
    "minimist": {
      "version": "1.2.5",
      "resolved": "https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz",
      "integrity": "sha512-FM9nNUYrRBAELZQT3xeZQ7fmMOBg6nWNmJKTcgsJeaLstP/UODVpGsr5OhXhhXg6f+qtJ8uiZ+PUxkDWcgIXLw==",
      "dev": true
    },
    "mongodb": {
      "version": "3.6.3",
      "resolved": "https://registry.npmjs.org/mongodb/-/mongodb-3.6.3.tgz",
      "integrity": "sha512-rOZuR0QkodZiM+UbQE5kDsJykBqWi0CL4Ec2i1nrGrUI3KO11r6Fbxskqmq3JK2NH7aW4dcccBuUujAP0ERl5w==",
      "requires": {
        "bl": "^2.2.1",
        "bson": "^1.1.4",
        "denque": "^1.4.1",
        "require_optional": "^1.0.1",
        "safe-buffer": "^5.1.2",
        "saslprep": "^1.0.0"
      }
    },
    "mongoose": {
      "version": "5.11.13",
      "resolved": "https://registry.npmjs.org/mongoose/-/mongoose-5.11.13.tgz",
      "integrity": "sha512-rXbaxSJfLnKKO2RTm8MKt65glrtfKDc4ATEb6vEbbzsVGCiLut753K5axdpyvE7KeTH7GOh4LzmuQLOvaaWOmA==",
      "requires": {
        "@types/mongodb": "^3.5.27",
        "bson": "^1.1.4",
        "kareem": "2.3.2",
        "mongodb": "3.6.3",
        "mongoose-legacy-pluralize": "1.0.2",
        "mpath": "0.8.3",
        "mquery": "3.2.3",
        "ms": "2.1.2",
        "regexp-clone": "1.0.0",
        "safe-buffer": "5.2.1",
        "sift": "7.0.1",
        "sliced": "1.0.1"
      },
      "dependencies": {
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w=="
        },
        "safe-buffer": {
          "version": "5.2.1",
          "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz",
          "integrity": "sha512-rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ=="
        }
      }
    },
    "mongoose-legacy-pluralize": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/mongoose-legacy-pluralize/-/mongoose-legacy-pluralize-1.0.2.tgz",
      "integrity": "sha512-Yo/7qQU4/EyIS8YDFSeenIvXxZN+ld7YdV9LqFVQJzTLye8unujAWPZ4NWKfFA+RNjh+wvTWKY9Z3E5XM6ZZiQ=="
    },
    "mpath": {
      "version": "0.8.3",
      "resolved": "https://registry.npmjs.org/mpath/-/mpath-0.8.3.tgz",
      "integrity": "sha512-eb9rRvhDltXVNL6Fxd2zM9D4vKBxjVVQNLNijlj7uoXUy19zNDsIif5zR+pWmPCWNKwAtqyo4JveQm4nfD5+eA=="
    },
    "mquery": {
      "version": "3.2.3",
      "resolved": "https://registry.npmjs.org/mquery/-/mquery-3.2.3.tgz",
      "integrity": "sha512-cIfbP4TyMYX+SkaQ2MntD+F2XbqaBHUYWk3j+kqdDztPWok3tgyssOZxMHMtzbV1w9DaSlvEea0Iocuro41A4g==",
      "requires": {
        "bluebird": "3.5.1",
        "debug": "3.1.0",
        "regexp-clone": "^1.0.0",
        "safe-buffer": "5.1.2",
        "sliced": "1.0.1"
      }
    },
    "ms": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz",
      "integrity": "sha1-VgiurfwAvmwpAd9fmGF4jeDVl8g="
    },
    "natural-compare": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/natural-compare/-/natural-compare-1.4.0.tgz",
      "integrity": "sha1-Sr6/7tdUHywnrPspvbvRXI1bpPc=",
      "dev": true
    },
    "negotiator": {
      "version": "0.6.2",
      "resolved": "https://registry.npmjs.org/negotiator/-/negotiator-0.6.2.tgz",
      "integrity": "sha512-hZXc7K2e+PgeI1eDBe/10Ard4ekbfrrqG8Ep+8Jmf4JID2bNg7NvCPOZN+kfF574pFQI7mum2AUqDidoKqcTOw=="
    },
    "normalize-package-data": {
      "version": "2.5.0",
      "resolved": "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.5.0.tgz",
      "integrity": "sha512-/5CMN3T0R4XTj4DcGaexo+roZSdSFW/0AOOTROrjxzCG1wrWXEsGbRKevjlIL+ZDE4sZlJr5ED4YW0yqmkK+eA==",
      "dev": true,
      "requires": {
        "hosted-git-info": "^2.1.4",
        "resolve": "^1.10.0",
        "semver": "2 || 3 || 4 || 5",
        "validate-npm-package-license": "^3.0.1"
      }
    },
    "object-assign": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz",
      "integrity": "sha1-IQmtx5ZYh8/AXLvUQsrIv7s2CGM="
    },
    "object-inspect": {
      "version": "1.9.0",
      "resolved": "https://registry.npmjs.org/object-inspect/-/object-inspect-1.9.0.tgz",
      "integrity": "sha512-i3Bp9iTqwhaLZBxGkRfo5ZbE07BQRT7MGu8+nNgwW9ItGp1TzCTw2DLEoWwjClxBjOFI/hWljTAmYGCEwmtnOw==",
      "dev": true
    },
    "object-keys": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/object-keys/-/object-keys-1.1.1.tgz",
      "integrity": "sha512-NuAESUOUMrlIXOfHKzD6bpPu3tYt3xvjNdRIQ+FeT0lNb4K8WR70CaDxhuNguS2XG+GjkyMwOzsN5ZktImfhLA==",
      "dev": true
    },
    "object.assign": {
      "version": "4.1.2",
      "resolved": "https://registry.npmjs.org/object.assign/-/object.assign-4.1.2.tgz",
      "integrity": "sha512-ixT2L5THXsApyiUPYKmW+2EHpXXe5Ii3M+f4e+aJFAHao5amFRW6J0OO6c/LU8Be47utCx2GL89hxGB6XSmKuQ==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "has-symbols": "^1.0.1",
        "object-keys": "^1.1.1"
      }
    },
    "object.entries": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/object.entries/-/object.entries-1.1.3.tgz",
      "integrity": "sha512-ym7h7OZebNS96hn5IJeyUmaWhaSM4SVtAPPfNLQEI2MYWCO2egsITb9nab2+i/Pwibx+R0mtn+ltKJXRSeTMGg==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "has": "^1.0.3"
      }
    },
    "object.fromentries": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/object.fromentries/-/object.fromentries-2.0.3.tgz",
      "integrity": "sha512-IDUSMXs6LOSJBWE++L0lzIbSqHl9KDCfff2x/JSEIDtEUavUnyMYC2ZGay/04Zq4UT8lvd4xNhU4/YHKibAOlw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "has": "^1.0.3"
      }
    },
    "object.values": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/object.values/-/object.values-1.1.2.tgz",
      "integrity": "sha512-MYC0jvJopr8EK6dPBiO8Nb9mvjdypOachO5REGk6MXzujbBrAisKo3HmdEI6kZDL6fC31Mwee/5YbtMebixeag==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "has": "^1.0.3"
      }
    },
    "on-finished": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz",
      "integrity": "sha1-IPEzZIGwg811M3mSoWlxqi2QaUc=",
      "requires": {
        "ee-first": "1.1.1"
      }
    },
    "once": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",
      "integrity": "sha1-WDsap3WWHUsROsF9nFC6753Xa9E=",
      "dev": true,
      "requires": {
        "wrappy": "1"
      }
    },
    "only": {
      "version": "0.0.2",
      "resolved": "https://registry.npmjs.org/only/-/only-0.0.2.tgz",
      "integrity": "sha1-Kv3oTQPlC5qO3EROMGEKcCle37Q="
    },
    "optionator": {
      "version": "0.9.1",
      "resolved": "https://registry.npmjs.org/optionator/-/optionator-0.9.1.tgz",
      "integrity": "sha512-74RlY5FCnhq4jRxVUPKDaRwrVNXMqsGsiW6AJw4XK8hmtm10wC0ypZBLw5IIp85NZMr91+qd1RvvENwg7jjRFw==",
      "dev": true,
      "requires": {
        "deep-is": "^0.1.3",
        "fast-levenshtein": "^2.0.6",
        "levn": "^0.4.1",
        "prelude-ls": "^1.2.1",
        "type-check": "^0.4.0",
        "word-wrap": "^1.2.3"
      }
    },
    "p-limit": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-1.3.0.tgz",
      "integrity": "sha512-vvcXsLAJ9Dr5rQOPk7toZQZJApBl2K4J6dANSsEuh6QI41JYcsS/qhTGa9ErIUUgK3WNQoJYvylxvjqmiqEA9Q==",
      "dev": true,
      "requires": {
        "p-try": "^1.0.0"
      }
    },
    "p-locate": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-2.0.0.tgz",
      "integrity": "sha1-IKAQOyIqcMj9OcwuWAaA893l7EM=",
      "dev": true,
      "requires": {
        "p-limit": "^1.1.0"
      }
    },
    "p-try": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/p-try/-/p-try-1.0.0.tgz",
      "integrity": "sha1-y8ec26+P1CKOE/Yh8rGiN8GyB7M=",
      "dev": true
    },
    "parent-module": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/parent-module/-/parent-module-1.0.1.tgz",
      "integrity": "sha512-GQ2EWRpQV8/o+Aw8YqtfZZPfNRWZYkbidE9k5rpl/hC3vtHHBfGm2Ifi6qWV+coDGkrUKZAxE3Lot5kcsRlh+g==",
      "dev": true,
      "requires": {
        "callsites": "^3.0.0"
      }
    },
    "parse-json": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz",
      "integrity": "sha1-9ID0BDTvgHQfhGkJn43qGPVaTck=",
      "dev": true,
      "requires": {
        "error-ex": "^1.2.0"
      }
    },
    "parseurl": {
      "version": "1.3.3",
      "resolved": "https://registry.npmjs.org/parseurl/-/parseurl-1.3.3.tgz",
      "integrity": "sha512-CiyeOxFT/JZyN5m0z9PfXw4SCBJ6Sygz1Dpl0wqjlhDEGGBP1GnsUVEL0p63hoG1fcj3fHynXi9NYO4nWOL+qQ=="
    },
    "path-exists": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-3.0.0.tgz",
      "integrity": "sha1-zg6+ql94yxiSXqfYENe1mwEP1RU=",
      "dev": true
    },
    "path-is-absolute": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz",
      "integrity": "sha1-F0uSaHNVNP+8es5r9TpanhtcX18=",
      "dev": true
    },
    "path-key": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz",
      "integrity": "sha512-ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==",
      "dev": true
    },
    "path-parse": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/path-parse/-/path-parse-1.0.6.tgz",
      "integrity": "sha512-GSmOT2EbHrINBf9SR7CDELwlJ8AENk3Qn7OikK4nFYAu3Ote2+JYNVvkpAEQm3/TLNEJFD/xZJjzyxg3KBWOzw==",
      "dev": true
    },
    "path-to-regexp": {
      "version": "6.2.0",
      "resolved": "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-6.2.0.tgz",
      "integrity": "sha512-f66KywYG6+43afgE/8j/GoiNyygk/bnoCbps++3ErRKsIYkGGupyv07R2Ok5m9i67Iqc+T2g1eAUGUPzWhYTyg=="
    },
    "path-type": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/path-type/-/path-type-2.0.0.tgz",
      "integrity": "sha1-8BLMuEFbcJb8LaoQVMPXI4lZTHM=",
      "dev": true,
      "requires": {
        "pify": "^2.0.0"
      }
    },
    "pify": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
      "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
      "dev": true
    },
    "pkg-dir": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-2.0.0.tgz",
      "integrity": "sha1-9tXREJ4Z1j7fQo4L1X4Sd3YVM0s=",
      "dev": true,
      "requires": {
        "find-up": "^2.1.0"
      }
    },
    "prelude-ls": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/prelude-ls/-/prelude-ls-1.2.1.tgz",
      "integrity": "sha512-vkcDPrRZo1QZLbn5RLGPpg/WmIQ65qoWWhcGKf/b5eplkkarX0m9z8ppCat4mlOqUsWpyNuYgO3VRyrYHSzX5g==",
      "dev": true
    },
    "process-nextick-args": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz",
      "integrity": "sha512-3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag=="
    },
    "progress": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/progress/-/progress-2.0.3.tgz",
      "integrity": "sha512-7PiHtLll5LdnKIMw100I+8xJXR5gW2QwWYkT6iJva0bXitZKa/XMrSbdmg3r2Xnaidz9Qumd0VPaMrZlF9V9sA==",
      "dev": true
    },
    "prop-types": {
      "version": "15.7.2",
      "resolved": "https://registry.npmjs.org/prop-types/-/prop-types-15.7.2.tgz",
      "integrity": "sha512-8QQikdH7//R2vurIJSutZ1smHYTcLpRWEOlHnzcWHmBYrOGUysKwSsrC89BCiFj3CbrfJ/nXFdJepOVrY1GCHQ==",
      "dev": true,
      "requires": {
        "loose-envify": "^1.4.0",
        "object-assign": "^4.1.1",
        "react-is": "^16.8.1"
      }
    },
    "punycode": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/punycode/-/punycode-2.1.1.tgz",
      "integrity": "sha512-XRsRjdf+j5ml+y/6GKHPZbrF/8p2Yga0JPtdqTIY2Xe5ohJPD9saDJJLPvp9+NSBprVvevdXZybnj2cv8OEd0A==",
      "dev": true
    },
    "qs": {
      "version": "6.9.6",
      "resolved": "https://registry.npmjs.org/qs/-/qs-6.9.6.tgz",
      "integrity": "sha512-TIRk4aqYLNoJUbd+g2lEdz5kLWIuTMRagAXxl78Q0RiVjAOugHmeKNGdd3cwo/ktpf9aL9epCfFqWDEKysUlLQ=="
    },
    "raw-body": {
      "version": "2.4.1",
      "resolved": "https://registry.npmjs.org/raw-body/-/raw-body-2.4.1.tgz",
      "integrity": "sha512-9WmIKF6mkvA0SLmA2Knm9+qj89e+j1zqgyn8aXGd7+nAduPoqgI9lO57SAZNn/Byzo5P7JhXTyg9PzaJbH73bA==",
      "requires": {
        "bytes": "3.1.0",
        "http-errors": "1.7.3",
        "iconv-lite": "0.4.24",
        "unpipe": "1.0.0"
      },
      "dependencies": {
        "depd": {
          "version": "1.1.2",
          "resolved": "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz",
          "integrity": "sha1-m81S4UwJd2PnSbJ0xDRu0uVgtak="
        },
        "http-errors": {
          "version": "1.7.3",
          "resolved": "https://registry.npmjs.org/http-errors/-/http-errors-1.7.3.tgz",
          "integrity": "sha512-ZTTX0MWrsQ2ZAhA1cejAwDLycFsd7I7nVtnkT3Ol0aqodaKW+0CTZDQ1uBv5whptCnc8e8HeRRJxRs0kmm/Qfw==",
          "requires": {
            "depd": "~1.1.2",
            "inherits": "2.0.4",
            "setprototypeof": "1.1.1",
            "statuses": ">= 1.5.0 < 2",
            "toidentifier": "1.0.0"
          }
        }
      }
    },
    "react-is": {
      "version": "16.13.1",
      "resolved": "https://registry.npmjs.org/react-is/-/react-is-16.13.1.tgz",
      "integrity": "sha512-24e6ynE2H+OKt4kqsOvNd8kBpV65zoxbA4BVsEOB3ARVWQki/DHzaUoC5KuON/BiccDaCCTZBuOcfZs70kR8bQ==",
      "dev": true
    },
    "read-pkg": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-2.0.0.tgz",
      "integrity": "sha1-jvHAYjxqbbDcZxPEv6xGMysjaPg=",
      "dev": true,
      "requires": {
        "load-json-file": "^2.0.0",
        "normalize-package-data": "^2.3.2",
        "path-type": "^2.0.0"
      }
    },
    "read-pkg-up": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-2.0.0.tgz",
      "integrity": "sha1-a3KoBImE4MQeeVEP1en6mbO1Sb4=",
      "dev": true,
      "requires": {
        "find-up": "^2.0.0",
        "read-pkg": "^2.0.0"
      }
    },
    "readable-stream": {
      "version": "2.3.7",
      "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz",
      "integrity": "sha512-Ebho8K4jIbHAxnuxi7o42OrZgF/ZTNcsZj6nRKyUmkhLFq8CHItp/fy6hQZuZmP/n3yZ9VBUbp4zz/mX8hmYPw==",
      "requires": {
        "core-util-is": "~1.0.0",
        "inherits": "~2.0.3",
        "isarray": "~1.0.0",
        "process-nextick-args": "~2.0.0",
        "safe-buffer": "~5.1.1",
        "string_decoder": "~1.1.1",
        "util-deprecate": "~1.0.1"
      }
    },
    "regenerator-runtime": {
      "version": "0.13.7",
      "resolved": "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.13.7.tgz",
      "integrity": "sha512-a54FxoJDIr27pgf7IgeQGxmqUNYrcV338lf/6gH456HZ/PhX+5BcwHXG9ajESmwe6WRO0tAzRUrRmNONWgkrew==",
      "dev": true
    },
    "regexp-clone": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/regexp-clone/-/regexp-clone-1.0.0.tgz",
      "integrity": "sha512-TuAasHQNamyyJ2hb97IuBEif4qBHGjPHBS64sZwytpLEqtBQ1gPJTnOaQ6qmpET16cK14kkjbazl6+p0RRv0yw=="
    },
    "regexp.prototype.flags": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/regexp.prototype.flags/-/regexp.prototype.flags-1.3.1.tgz",
      "integrity": "sha512-JiBdRBq91WlY7uRJ0ds7R+dU02i6LKi8r3BuQhNXn+kmeLN+EfHhfjqMRis1zJxnlu88hq/4dx0P2OP3APRTOA==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.2",
        "define-properties": "^1.1.3"
      }
    },
    "regexpp": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/regexpp/-/regexpp-3.1.0.tgz",
      "integrity": "sha512-ZOIzd8yVsQQA7j8GCSlPGXwg5PfmA1mrq0JP4nGhh54LaKN3xdai/vHUDu74pKwV8OxseMS65u2NImosQcSD0Q==",
      "dev": true
    },
    "require-from-string": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz",
      "integrity": "sha512-Xf0nWe6RseziFMu+Ap9biiUbmplq6S9/p+7w7YXP/JBHhrUDDUhwa+vANyubuqfZWTveU//DYVGsDG7RKL/vEw==",
      "dev": true
    },
    "require_optional": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/require_optional/-/require_optional-1.0.1.tgz",
      "integrity": "sha512-qhM/y57enGWHAe3v/NcwML6a3/vfESLe/sGM2dII+gEO0BpKRUkWZow/tyloNqJyN6kXSl3RyyM8Ll5D/sJP8g==",
      "requires": {
        "resolve-from": "^2.0.0",
        "semver": "^5.1.0"
      }
    },
    "resolve": {
      "version": "1.19.0",
      "resolved": "https://registry.npmjs.org/resolve/-/resolve-1.19.0.tgz",
      "integrity": "sha512-rArEXAgsBG4UgRGcynxWIWKFvh/XZCcS8UJdHhwy91zwAvCZIbcs+vAbflgBnNjYMs/i/i+/Ux6IZhML1yPvxg==",
      "dev": true,
      "requires": {
        "is-core-module": "^2.1.0",
        "path-parse": "^1.0.6"
      }
    },
    "resolve-from": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/resolve-from/-/resolve-from-2.0.0.tgz",
      "integrity": "sha1-lICrIOlP+h2egKgEx+oUdhGWa1c="
    },
    "rimraf": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/rimraf/-/rimraf-3.0.2.tgz",
      "integrity": "sha512-JZkJMZkAGFFPP2YqXZXPbMlMBgsxzE8ILs4lMIX/2o0L9UBw9O/Y3o6wFw/i9YLapcUJWwqbi3kdxIPdC62TIA==",
      "dev": true,
      "requires": {
        "glob": "^7.1.3"
      }
    },
    "safe-buffer": {
      "version": "5.1.2",
      "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",
      "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g=="
    },
    "safer-buffer": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz",
      "integrity": "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg=="
    },
    "saslprep": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/saslprep/-/saslprep-1.0.3.tgz",
      "integrity": "sha512-/MY/PEMbk2SuY5sScONwhUDsV2p77Znkb/q3nSVstq/yQzYJOH/Azh29p9oJLsl3LnQwSvZDKagDGBsBwSooag==",
      "optional": true,
      "requires": {
        "sparse-bitfield": "^3.0.3"
      }
    },
    "semver": {
      "version": "5.7.1",
      "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",
      "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ=="
    },
    "setprototypeof": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.1.1.tgz",
      "integrity": "sha512-JvdAWfbXeIGaZ9cILp38HntZSFSo3mWg6xGcJJsd+d4aRMOqauag1C63dJfDw7OaMYwEbHMOxEZ1lqVRYP2OAw=="
    },
    "shebang-command": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz",
      "integrity": "sha512-kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==",
      "dev": true,
      "requires": {
        "shebang-regex": "^3.0.0"
      }
    },
    "shebang-regex": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz",
      "integrity": "sha512-7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==",
      "dev": true
    },
    "side-channel": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/side-channel/-/side-channel-1.0.4.tgz",
      "integrity": "sha512-q5XPytqFEIKHkGdiMIrY10mvLRvnQh42/+GoBlFW3b2LXLE2xxJpZFdm94we0BaoV3RwJyGqg5wS7epxTv0Zvw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "get-intrinsic": "^1.0.2",
        "object-inspect": "^1.9.0"
      }
    },
    "sift": {
      "version": "7.0.1",
      "resolved": "https://registry.npmjs.org/sift/-/sift-7.0.1.tgz",
      "integrity": "sha512-oqD7PMJ+uO6jV9EQCl0LrRw1OwsiPsiFQR5AR30heR+4Dl7jBBbDLnNvWiak20tzZlSE1H7RB30SX/1j/YYT7g=="
    },
    "slice-ansi": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/slice-ansi/-/slice-ansi-4.0.0.tgz",
      "integrity": "sha512-qMCMfhY040cVHT43K9BFygqYbUPFZKHOg7K73mtTWJRb8pyP3fzf4Ixd5SzdEJQ6MRUg/WBnOLxghZtKKurENQ==",
      "dev": true,
      "requires": {
        "ansi-styles": "^4.0.0",
        "astral-regex": "^2.0.0",
        "is-fullwidth-code-point": "^3.0.0"
      },
      "dependencies": {
        "ansi-styles": {
          "version": "4.3.0",
          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz",
          "integrity": "sha512-zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==",
          "dev": true,
          "requires": {
            "color-convert": "^2.0.1"
          }
        },
        "color-convert": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz",
          "integrity": "sha512-RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==",
          "dev": true,
          "requires": {
            "color-name": "~1.1.4"
          }
        },
        "color-name": {
          "version": "1.1.4",
          "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz",
          "integrity": "sha512-dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==",
          "dev": true
        }
      }
    },
    "sliced": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/sliced/-/sliced-1.0.1.tgz",
      "integrity": "sha1-CzpmK10Ewxd7GSa+qCsD+Dei70E="
    },
    "sparse-bitfield": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/sparse-bitfield/-/sparse-bitfield-3.0.3.tgz",
      "integrity": "sha1-/0rm5oZWBWuks+eSqzM004JzyhE=",
      "optional": true,
      "requires": {
        "memory-pager": "^1.0.2"
      }
    },
    "spdx-correct": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/spdx-correct/-/spdx-correct-3.1.1.tgz",
      "integrity": "sha512-cOYcUWwhCuHCXi49RhFRCyJEK3iPj1Ziz9DpViV3tbZOwXD49QzIN3MpOLJNxh2qwq2lJJZaKMVw9qNi4jTC0w==",
      "dev": true,
      "requires": {
        "spdx-expression-parse": "^3.0.0",
        "spdx-license-ids": "^3.0.0"
      }
    },
    "spdx-exceptions": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-2.3.0.tgz",
      "integrity": "sha512-/tTrYOC7PPI1nUAgx34hUpqXuyJG+DTHJTnIULG4rDygi4xu/tfgmq1e1cIRwRzwZgo4NLySi+ricLkZkw4i5A==",
      "dev": true
    },
    "spdx-expression-parse": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-3.0.1.tgz",
      "integrity": "sha512-cbqHunsQWnJNE6KhVSMsMeH5H/L9EpymbzqTQ3uLwNCLZ1Q481oWaofqH7nO6V07xlXwY6PhQdQ2IedWx/ZK4Q==",
      "dev": true,
      "requires": {
        "spdx-exceptions": "^2.1.0",
        "spdx-license-ids": "^3.0.0"
      }
    },
    "spdx-license-ids": {
      "version": "3.0.7",
      "resolved": "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-3.0.7.tgz",
      "integrity": "sha512-U+MTEOO0AiDzxwFvoa4JVnMV6mZlJKk2sBLt90s7G0Gd0Mlknc7kxEn3nuDPNZRta7O2uy8oLcZLVT+4sqNZHQ==",
      "dev": true
    },
    "sprintf-js": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz",
      "integrity": "sha1-BOaSb2YolTVPPdAVIDYzuFcpfiw=",
      "dev": true
    },
    "statuses": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/statuses/-/statuses-1.5.0.tgz",
      "integrity": "sha1-Fhx9rBd2Wf2YEfQ3cfqZOBR4Yow="
    },
    "string-width": {
      "version": "4.2.0",
      "resolved": "https://registry.npmjs.org/string-width/-/string-width-4.2.0.tgz",
      "integrity": "sha512-zUz5JD+tgqtuDjMhwIg5uFVV3dtqZ9yQJlZVfq4I01/K5Paj5UHj7VyrQOJvzawSVlKpObApbfD0Ed6yJc+1eg==",
      "dev": true,
      "requires": {
        "emoji-regex": "^8.0.0",
        "is-fullwidth-code-point": "^3.0.0",
        "strip-ansi": "^6.0.0"
      }
    },
    "string.prototype.matchall": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/string.prototype.matchall/-/string.prototype.matchall-4.0.3.tgz",
      "integrity": "sha512-OBxYDA2ifZQ2e13cP82dWFMaCV9CGF8GzmN4fljBVw5O5wep0lu4gacm1OL6MjROoUnB8VbkWRThqkV2YFLNxw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3",
        "es-abstract": "^1.18.0-next.1",
        "has-symbols": "^1.0.1",
        "internal-slot": "^1.0.2",
        "regexp.prototype.flags": "^1.3.0",
        "side-channel": "^1.0.3"
      }
    },
    "string.prototype.trimend": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/string.prototype.trimend/-/string.prototype.trimend-1.0.3.tgz",
      "integrity": "sha512-ayH0pB+uf0U28CtjlLvL7NaohvR1amUvVZk+y3DYb0Ey2PUV5zPkkKy9+U1ndVEIXO8hNg18eIv9Jntbii+dKw==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3"
      }
    },
    "string.prototype.trimstart": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/string.prototype.trimstart/-/string.prototype.trimstart-1.0.3.tgz",
      "integrity": "sha512-oBIBUy5lea5tt0ovtOFiEQaBkoBBkyJhZXzJYrSmDo5IUUqbOPvVezuRs/agBIdZ2p2Eo1FD6bD9USyBLfl3xg==",
      "dev": true,
      "requires": {
        "call-bind": "^1.0.0",
        "define-properties": "^1.1.3"
      }
    },
    "string_decoder": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz",
      "integrity": "sha512-n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==",
      "requires": {
        "safe-buffer": "~5.1.0"
      }
    },
    "strip-ansi": {
      "version": "6.0.0",
      "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.0.tgz",
      "integrity": "sha512-AuvKTrTfQNYNIctbR1K/YGTR1756GycPsg7b9bdV9Duqur4gv6aKqHXah67Z8ImS7WEz5QVcOtlfW2rZEugt6w==",
      "dev": true,
      "requires": {
        "ansi-regex": "^5.0.0"
      }
    },
    "strip-bom": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz",
      "integrity": "sha1-IzTBjpx1n3vdVv3vfprj1YjmjtM=",
      "dev": true
    },
    "strip-json-comments": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-3.1.1.tgz",
      "integrity": "sha512-6fPc+R4ihwqP6N/aIv2f1gMH8lOVtWQHoqC4yK6oSDVVocumAsfCqjkXnqiYMhmMwS/mEHLp7Vehlt3ql6lEig==",
      "dev": true
    },
    "supports-color": {
      "version": "5.5.0",
      "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-5.5.0.tgz",
      "integrity": "sha512-QjVjwdXIt408MIiAqCX4oUKsgU2EqAGzs2Ppkm4aQYbjm+ZEWEcW4SfFNTr4uMNZma0ey4f5lgLrkB0aX0QMow==",
      "dev": true,
      "requires": {
        "has-flag": "^3.0.0"
      }
    },
    "table": {
      "version": "6.0.7",
      "resolved": "https://registry.npmjs.org/table/-/table-6.0.7.tgz",
      "integrity": "sha512-rxZevLGTUzWna/qBLObOe16kB2RTnnbhciwgPbMMlazz1yZGVEgnZK762xyVdVznhqxrfCeBMmMkgOOaPwjH7g==",
      "dev": true,
      "requires": {
        "ajv": "^7.0.2",
        "lodash": "^4.17.20",
        "slice-ansi": "^4.0.0",
        "string-width": "^4.2.0"
      },
      "dependencies": {
        "ajv": {
          "version": "7.0.3",
          "resolved": "https://registry.npmjs.org/ajv/-/ajv-7.0.3.tgz",
          "integrity": "sha512-R50QRlXSxqXcQP5SvKUrw8VZeypvo12i2IX0EeR5PiZ7bEKeHWgzgo264LDadUsCU42lTJVhFikTqJwNeH34gQ==",
          "dev": true,
          "requires": {
            "fast-deep-equal": "^3.1.1",
            "json-schema-traverse": "^1.0.0",
            "require-from-string": "^2.0.2",
            "uri-js": "^4.2.2"
          }
        },
        "json-schema-traverse": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-1.0.0.tgz",
          "integrity": "sha512-NM8/P9n3XjXhIZn1lLhkFaACTOURQXjWhV4BA/RnOv8xvgqtqpAX9IO4mRQxSx1Rlo4tqzeqb0sOlruaOy3dug==",
          "dev": true
        }
      }
    },
    "text-table": {
      "version": "0.2.0",
      "resolved": "https://registry.npmjs.org/text-table/-/text-table-0.2.0.tgz",
      "integrity": "sha1-f17oI66AUgfACvLfSoTsP8+lcLQ=",
      "dev": true
    },
    "toidentifier": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.0.tgz",
      "integrity": "sha512-yaOH/Pk/VEhBWWTlhI+qXxDFXlejDGcQipMlyxda9nthulaxLZUNcUqFxokp0vcYnvteJln5FNQDRrxj3YcbVw=="
    },
    "tsconfig-paths": {
      "version": "3.9.0",
      "resolved": "https://registry.npmjs.org/tsconfig-paths/-/tsconfig-paths-3.9.0.tgz",
      "integrity": "sha512-dRcuzokWhajtZWkQsDVKbWyY+jgcLC5sqJhg2PSgf4ZkH2aHPvaOY8YWGhmjb68b5qqTfasSsDO9k7RUiEmZAw==",
      "dev": true,
      "requires": {
        "@types/json5": "^0.0.29",
        "json5": "^1.0.1",
        "minimist": "^1.2.0",
        "strip-bom": "^3.0.0"
      }
    },
    "tsscmp": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/tsscmp/-/tsscmp-1.0.6.tgz",
      "integrity": "sha512-LxhtAkPDTkVCMQjt2h6eBVY28KCjikZqZfMcC15YBeNjkgUpdCfBu5HoiOTDu86v6smE8yOjyEktJ8hlbANHQA=="
    },
    "type-check": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/type-check/-/type-check-0.4.0.tgz",
      "integrity": "sha512-XleUoc9uwGXqjWwXaUTZAmzMcFZ5858QA2vvx1Ur5xIcixXIP+8LnFDgRplU30us6teqdlskFfu+ae4K79Ooew==",
      "dev": true,
      "requires": {
        "prelude-ls": "^1.2.1"
      }
    },
    "type-fest": {
      "version": "0.8.1",
      "resolved": "https://registry.npmjs.org/type-fest/-/type-fest-0.8.1.tgz",
      "integrity": "sha512-4dbzIzqvjtgiM5rw1k5rEHtBANKmdudhGyBEajN01fEyhaAIhsoKNy6y7+IN93IfpFtwY9iqi7kD+xwKhQsNJA==",
      "dev": true
    },
    "type-is": {
      "version": "1.6.18",
      "resolved": "https://registry.npmjs.org/type-is/-/type-is-1.6.18.tgz",
      "integrity": "sha512-TkRKr9sUTxEH8MdfuCSP7VizJyzRNMjj2J2do2Jr3Kym598JVdEksuzPQCnlFPW4ky9Q+iA+ma9BGm06XQBy8g==",
      "requires": {
        "media-typer": "0.3.0",
        "mime-types": "~2.1.24"
      }
    },
    "unpipe": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz",
      "integrity": "sha1-sr9O6FFKrmFltIF4KdIbLvSZBOw="
    },
    "uri-js": {
      "version": "4.4.1",
      "resolved": "https://registry.npmjs.org/uri-js/-/uri-js-4.4.1.tgz",
      "integrity": "sha512-7rKUyy33Q1yc98pQ1DAmLtwX109F7TIfWlW1Ydo8Wl1ii1SeHieeh0HHfPeL2fMXK6z0s8ecKs9frCuLJvndBg==",
      "dev": true,
      "requires": {
        "punycode": "^2.1.0"
      }
    },
    "util-deprecate": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz",
      "integrity": "sha1-RQ1Nyfpw3nMnYvvS1KKJgUGaDM8="
    },
    "v8-compile-cache": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/v8-compile-cache/-/v8-compile-cache-2.2.0.tgz",
      "integrity": "sha512-gTpR5XQNKFwOd4clxfnhaqvfqMpqEwr4tOtCyz4MtYZX2JYhfr1JvBFKdS+7K/9rfpZR3VLX+YWBbKoxCgS43Q==",
      "dev": true
    },
    "validate-npm-package-license": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz",
      "integrity": "sha512-DpKm2Ui/xN7/HQKCtpZxoRWBhZ9Z0kqtygG8XCgNQ8ZlDnxuQmWhj566j8fN4Cu3/JmbhsDo7fcAJq4s9h27Ew==",
      "dev": true,
      "requires": {
        "spdx-correct": "^3.0.0",
        "spdx-expression-parse": "^3.0.0"
      }
    },
    "vary": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz",
      "integrity": "sha1-IpnwLG3tMNSllhsLn3RSShj2NPw="
    },
    "which": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/which/-/which-2.0.2.tgz",
      "integrity": "sha512-BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==",
      "dev": true,
      "requires": {
        "isexe": "^2.0.0"
      }
    },
    "word-wrap": {
      "version": "1.2.3",
      "resolved": "https://registry.npmjs.org/word-wrap/-/word-wrap-1.2.3.tgz",
      "integrity": "sha512-Hz/mrNwitNRh/HUAtM/VT/5VH+ygD6DV7mYKZAtHOrbs8U7lvPS6xf7EJKMF0uW1KJCl0H701g3ZGus+muE5vQ==",
      "dev": true
    },
    "wrappy": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz",
      "integrity": "sha1-tSQ9jz7BqjXxNkYFvA0QNuMKtp8=",
      "dev": true
    },
    "yallist": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/yallist/-/yallist-4.0.0.tgz",
      "integrity": "sha512-3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==",
      "dev": true
    },
    "ylru": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/ylru/-/ylru-1.2.1.tgz",
      "integrity": "sha512-faQrqNMzcPCHGVC2aaOINk13K+aaBDUPjGWl0teOXywElLjyVAB6Oe2jj62jHYtwsU49jXhScYbvPENK+6zAvQ=="
    },
    "zenio": {
      "version": "0.0.7",
      "resolved": "https://registry.npmjs.org/zenio/-/zenio-0.0.7.tgz",
      "integrity": "sha512-qqBLvPeMVFU/ppIqbUHCjZeFpPaIO4XOLvjcx5xxm0FyPk0BvpeeJAZip8bPEoitalT+knBHCmp+WHTYzns3YQ==",
      "requires": {
        "iconv-lite": "^0.4.13"
      }
    }
  }
}
{
  "name": "backend",
  "version": "1.0.0",
  "description": "",
  "main": "app.js",
  "dependencies": {
    "@koa/cors": "^3.1.0",
    "axios": "^0.21.1",
    "cors": "^2.8.5",
    "koa": "^2.13.1",
    "koa-bodyparser": "^4.3.0",
    "koa-cors": "0.0.16",
    "koa-http-request": "^2.2.1",
    "koa-router": "^10.0.0",
    "mongoose": "^5.11.13"
  },
  "devDependencies": {
    "eslint": "^7.18.0",
    "eslint-config-airbnb": "^18.2.1",
    "eslint-plugin-import": "^2.22.1",
    "eslint-plugin-jsx-a11y": "^6.4.1",
    "eslint-plugin-react": "^7.22.0",
    "eslint-plugin-react-hooks": "^4.2.0"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}
echo %cd%
pause
