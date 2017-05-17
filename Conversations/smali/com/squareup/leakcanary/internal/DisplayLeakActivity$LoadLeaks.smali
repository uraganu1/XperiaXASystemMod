.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLeaks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    const-string/jumbo v0, "LoadLeaks"

    .line 410
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 431
    invoke-static {p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLeakDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 432
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 433
    return-void
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 419
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 423
    return-void

    .line 419
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .local v1, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    .line 420
    iput-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_0
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 413
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 414
    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 436
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v11, "leaks":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    move-object/from16 v16, v0

    new-instance v17, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual/range {v16 .. v17}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 443
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_0

    .line 478
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void

    .line 444
    :cond_0
    move-object v2, v5

    .local v2, "arr$":[Ljava/io/File;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-lt v9, v12, :cond_1

    .line 471
    new-instance v16, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 444
    :cond_1
    aget-object v15, v2, v9

    .local v15, "resultFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 447
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v13, Ljava/io/ObjectInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v13, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 449
    .local v13, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/leakcanary/HeapDump;

    .line 450
    .local v8, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/leakcanary/AnalysisResult;

    .line 451
    .local v14, "result":Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v16, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v14, v15}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 463
    if-nez v7, :cond_3

    move-object v6, v7

    .line 444
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .end local v14    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 465
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    move-object v6, v7

    .line 467
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    .line 466
    .local v10, "ignored":Ljava/io/IOException;
    goto :goto_3

    .line 467
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v10    # "ignored":Ljava/io/IOException;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .end local v14    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    .local v6, "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 455
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v3

    .line 456
    .local v3, "deleted":Z
    if-nez v3, :cond_4

    const-string/jumbo v16, "Could not read result file %s, could not delete it either."

    const/16 v17, 0x1

    .line 459
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 463
    :goto_5
    if-eqz v6, :cond_2

    .line 465
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 467
    :catch_2
    move-exception v10

    .line 466
    .restart local v10    # "ignored":Ljava/io/IOException;
    goto :goto_2

    .end local v10    # "ignored":Ljava/io/IOException;
    :cond_4
    :try_start_6
    const-string/jumbo v16, "Could not read result file %s, deleted it."

    const/16 v17, 0x1

    .line 457
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 467
    .end local v3    # "deleted":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 463
    :goto_6
    if-nez v6, :cond_5

    .line 467
    :goto_7
    throw v16

    .line 465
    :cond_5
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 467
    :catch_3
    move-exception v17

    goto :goto_7

    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v16

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method
