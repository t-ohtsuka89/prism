# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "atomic-sleep-1.0.0" = {
      name = "atomic-sleep";
      packageName = "atomic-sleep";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/atomic-sleep/-/atomic-sleep-1.0.0.tgz";
        sha512 = "kNOjDqAh7px0XWNI+4QbzoiR/nTkHAWNud2uvnJquD1/x5a7EQZMJT0AczqK0Qn67oY/TTQ1LbUKajZpp3I9tQ==";
      };
    };
    "fast-redact-3.5.0" = {
      name = "fast-redact";
      packageName = "fast-redact";
      version = "3.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-redact/-/fast-redact-3.5.0.tgz";
        sha512 = "dwsoQlS7h9hMeYUq1W++23NDcBLV4KqONnITDV9DjfS3q1SgDGVrBdvvTLUotWtPSD7asWDV9/CmsZPy8Hf70A==";
      };
    };
    "fast-safe-stringify-2.1.1" = {
      name = "fast-safe-stringify";
      packageName = "fast-safe-stringify";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-safe-stringify/-/fast-safe-stringify-2.1.1.tgz";
        sha512 = "W+KJc2dmILlPplD/H4K9l9LcAHAfPtP6BY84uVLXQ6Evcz9Lcg33Y2z1IVblT6xdY54PXYVHEv+0Wpq8Io6zkA==";
      };
    };
    "flatstr-1.0.12" = {
      name = "flatstr";
      packageName = "flatstr";
      version = "1.0.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/flatstr/-/flatstr-1.0.12.tgz";
        sha512 = "4zPxDyhCyiN2wIAtSLI6gc82/EjqZc1onI4Mz/l0pWrAlsSfYH/2ZIcU+e3oA2wDwbzIWNKwa23F8rh6+DRWkw==";
      };
    };
    "fp-ts-2.16.9" = {
      name = "fp-ts";
      packageName = "fp-ts";
      version = "2.16.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/fp-ts/-/fp-ts-2.16.9.tgz";
        sha512 = "+I2+FnVB+tVaxcYyQkHUq7ZdKScaBlX53A41mxQtpIccsfyv8PzdzP7fzp2AY832T4aoK6UZ5WRX/ebGd8uZuQ==";
      };
    };
    "lodash-4.17.21" = {
      name = "lodash";
      packageName = "lodash";
      version = "4.17.21";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
        sha512 = "v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg==";
      };
    };
    "pino-6.14.0" = {
      name = "pino";
      packageName = "pino";
      version = "6.14.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pino/-/pino-6.14.0.tgz";
        sha512 = "iuhEDel3Z3hF9Jfe44DPXR8l07bhjuFY3GMHIXbjnY9XcafbyDDwl2sN2vw2GjMPf5Nkoe+OFao7ffn9SXaKDg==";
      };
    };
    "pino-std-serializers-3.2.0" = {
      name = "pino-std-serializers";
      packageName = "pino-std-serializers";
      version = "3.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pino-std-serializers/-/pino-std-serializers-3.2.0.tgz";
        sha512 = "EqX4pwDPrt3MuOAAUBMU0Tk5kR/YcCM5fNPEzgCO2zJ5HfX0vbiH9HbJglnyeQsN96Kznae6MWD47pZB5avTrg==";
      };
    };
    "process-warning-1.0.0" = {
      name = "process-warning";
      packageName = "process-warning";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/process-warning/-/process-warning-1.0.0.tgz";
        sha512 = "du4wfLyj4yCZq1VupnVSZmRsPJsNuxoDQFdCFHLaYiEbFBD7QE0a+I4D7hOxrVnh78QE/YipFAj9lXHiXocV+Q==";
      };
    };
    "quick-format-unescaped-4.0.4" = {
      name = "quick-format-unescaped";
      packageName = "quick-format-unescaped";
      version = "4.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/quick-format-unescaped/-/quick-format-unescaped-4.0.4.tgz";
        sha512 = "tYC1Q1hgyRuHgloV/YXs2w15unPVh8qfu/qCTfhTYamaw7fyhumKa2yGpdSo87vY32rIclj+4fWYQXUMs9EHvg==";
      };
    };
    "sonic-boom-1.4.1" = {
      name = "sonic-boom";
      packageName = "sonic-boom";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/sonic-boom/-/sonic-boom-1.4.1.tgz";
        sha512 = "LRHh/A8tpW7ru89lrlkU4AszXt1dbwSjVWguGrmlxE7tawVmDBlI1PILMkXAxJTwqhgsEeTHzj36D5CmHgQmNg==";
      };
    };
    "tslib-2.8.1" = {
      name = "tslib";
      packageName = "tslib";
      version = "2.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tslib/-/tslib-2.8.1.tgz";
        sha512 = "oJFu94HQb+KVduSUQL7wnpmqnfmLsOA/nAh6b6EH0wCEoK0/mPeXU6c3wKDV83MkOuHPRHtSXKKU99IBazS/2w==";
      };
    };
  };
  args = {
    name = "_at_stoplight_slash_prism-core";
    packageName = "@stoplight/prism-core";
    version = "5.8.0";
    src = ./.;
    dependencies = [
      sources."atomic-sleep-1.0.0"
      sources."fast-redact-3.5.0"
      sources."fast-safe-stringify-2.1.1"
      sources."flatstr-1.0.12"
      sources."fp-ts-2.16.9"
      sources."lodash-4.17.21"
      sources."pino-6.14.0"
      sources."pino-std-serializers-3.2.0"
      sources."process-warning-1.0.0"
      sources."quick-format-unescaped-4.0.4"
      sources."sonic-boom-1.4.1"
      sources."tslib-2.8.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
