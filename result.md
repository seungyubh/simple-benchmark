# Benchmark Result

Thelio Desktop
```
❯ docker run --rm kuangda/simple-benchmark
             expr     min       lq     mean   median       uq      max neval
1 test_function() 103.934 109.5001 119.2899 112.0375 129.3007 158.3141   100
```

MacBook with Apple Silicon
```
❯ docker run --rm  kuangda/simple-benchmark
WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
             expr      min       lq     mean  median       uq      max neval
1 test_function() 1348.919 1364.993 1380.693 1372.19 1388.345 1632.335   100
```

kimclust37
```
$ singularity exec simple-benchmark_latest.sif Rscript /benchmark.R
             expr     min       lq     mean   median       uq     max neval
1 test_function() 296.536 305.1491 322.0647 307.0868 351.2231 380.037   100
```
