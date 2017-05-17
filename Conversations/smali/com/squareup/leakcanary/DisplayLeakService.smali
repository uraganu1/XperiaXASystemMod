.class public Lcom/squareup/leakcanary/DisplayLeakService;
.super Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.source "DisplayLeakService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;-><init>()V

    return-void
.end method

.method private renameHeapdump(Lcom/squareup/leakcanary/HeapDump;)Lcom/squareup/leakcanary/HeapDump;
    .locals 19
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;

    .prologue
    .line 113
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd_HH-mm-ss_SSS\'.hprof\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 116
    .local v14, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v4, "newFile":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v17

    .line 118
    .local v17, "renamed":Z
    if-eqz v17, :cond_1

    .line 122
    :goto_0
    new-instance v3, Lcom/squareup/leakcanary/HeapDump;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    invoke-direct/range {v3 .. v13}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    .line 126
    .end local p1    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .local v3, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/leakcanary/DisplayLeakService;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 127
    .local v18, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/squareup/leakcanary/R$integer;->leak_canary_max_stored_leaks:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 129
    .local v16, "maxStoredHeapDumps":I
    iget-object v5, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/squareup/leakcanary/DisplayLeakService$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/squareup/leakcanary/DisplayLeakService$1;-><init>(Lcom/squareup/leakcanary/DisplayLeakService;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v15

    .line 135
    .local v15, "hprofFiles":[Ljava/io/File;
    array-length v5, v15

    move/from16 v0, v16

    if-gt v5, v0, :cond_2

    .line 147
    :cond_0
    :goto_1
    return-object v3

    .end local v3    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v15    # "hprofFiles":[Ljava/io/File;
    .end local v16    # "maxStoredHeapDumps":I
    .end local v18    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    :cond_1
    const-string/jumbo v5, "Could not rename heap dump file %s to %s"

    const/4 v6, 0x2

    .line 119
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    .end local p1    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v3    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v15    # "hprofFiles":[Ljava/io/File;
    .restart local v16    # "maxStoredHeapDumps":I
    .restart local v18    # "resources":Landroid/content/res/Resources;
    :cond_2
    new-instance v5, Lcom/squareup/leakcanary/DisplayLeakService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/squareup/leakcanary/DisplayLeakService$2;-><init>(Lcom/squareup/leakcanary/DisplayLeakService;)V

    invoke-static {v15, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    .line 142
    aget-object v5, v15, v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    .line 143
    .local v2, "deleted":Z
    if-nez v2, :cond_0

    const-string/jumbo v5, "Could not delete old hprof file %s"

    const/4 v6, 0x1

    .line 144
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v15, v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z
    .locals 10
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    const/4 v9, 0x0

    .line 90
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, "resultFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 94
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    if-nez v2, :cond_0

    .line 106
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 104
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v6, "Could not save leak analysis result to disk."

    const/4 v7, 0x0

    .line 100
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    if-nez v1, :cond_1

    .line 109
    :goto_2
    return v9

    .line 104
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 106
    :catch_2
    move-exception v3

    .line 105
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_2

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 102
    :goto_3
    if-nez v1, :cond_2

    .line 106
    :goto_4
    throw v6

    .line 104
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 106
    :catch_3
    move-exception v7

    goto :goto_4

    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;
    .param p3, "leakInfo"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method protected final onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .locals 13
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-static {p0, p1, p2, v9}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "leakInfo":Ljava/lang/String;
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v3, v10}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, "resultSaved":Z
    iget-boolean v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    if-eqz v10, :cond_1

    :cond_0
    move v6, v9

    .line 52
    .local v6, "shouldSaveResult":Z
    :goto_0
    if-nez v6, :cond_2

    .line 61
    .end local v5    # "resultSaved":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 65
    if-nez v5, :cond_4

    .line 81
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_could_not_save_title:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "contentTitle":Ljava/lang/String;
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_could_not_save_text:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "contentText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    :goto_2
    invoke-static {p0, v2, v1, v4}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 86
    invoke-virtual {p0, p1, p2, v3}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    .line 87
    return-void

    .line 51
    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v6    # "shouldSaveResult":Z
    .restart local v5    # "resultSaved":Z
    :cond_1
    iget-object v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    move v6, v8

    goto :goto_0

    .line 53
    .restart local v6    # "shouldSaveResult":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/DisplayLeakService;->renameHeapdump(Lcom/squareup/leakcanary/HeapDump;)Lcom/squareup/leakcanary/HeapDump;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/DisplayLeakService;->saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z

    move-result v5

    .local v5, "resultSaved":Z
    goto :goto_1

    .line 62
    .end local v5    # "resultSaved":Z
    :cond_3
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_no_leak_title:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .restart local v2    # "contentTitle":Ljava/lang/String;
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_no_leak_text:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 64
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 66
    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_4
    iget-object v10, p1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 68
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v10, :cond_5

    .line 77
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_analysis_failed:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "contentTitle":Ljava/lang/String;
    :goto_3
    sget v8, Lcom/squareup/leakcanary/R$string;->leak_canary_notification_message:I

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentText":Ljava/lang/String;
    goto :goto_2

    .line 69
    .end local v1    # "contentText":Ljava/lang/String;
    .end local v2    # "contentTitle":Ljava/lang/String;
    :cond_5
    iget-wide v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {p0, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "size":Ljava/lang/String;
    iget-object v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v10}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "className":Ljava/lang/String;
    iget-boolean v10, p2, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-nez v10, :cond_6

    .line 74
    sget v10, Lcom/squareup/leakcanary/R$string;->leak_canary_class_has_leaked:I

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v7, v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentTitle":Ljava/lang/String;
    goto :goto_3

    .line 72
    .end local v2    # "contentTitle":Ljava/lang/String;
    :cond_6
    sget v10, Lcom/squareup/leakcanary/R$string;->leak_canary_leak_excluded:I

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v7, v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "contentTitle":Ljava/lang/String;
    goto :goto_3
.end method
