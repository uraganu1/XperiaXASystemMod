.class public final Lcom/squareup/leakcanary/internal/HeapAnalyzerService;
.super Landroid/app/IntentService;
.source "HeapAnalyzerService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-class v0, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const-string/jumbo v4, "listener_class_extra"

    .line 53
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "listenerClassName":Ljava/lang/String;
    const-string/jumbo v4, "heapdump_extra"

    .line 54
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/HeapDump;

    .line 56
    .local v1, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    new-instance v0, Lcom/squareup/leakcanary/HeapAnalyzer;

    iget-object v4, v1, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v0, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 58
    .local v0, "heapAnalyzer":Lcom/squareup/leakcanary/HeapAnalyzer;
    iget-object v4, v1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    iget-object v5, v1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v3

    .line 59
    .local v3, "result":Lcom/squareup/leakcanary/AnalysisResult;
    invoke-static {p0, v2, v1, v3}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;->sendResultToListener(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    .line 60
    return-void

    .end local v0    # "heapAnalyzer":Lcom/squareup/leakcanary/HeapAnalyzer;
    .end local v1    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v2    # "listenerClassName":Ljava/lang/String;
    .end local v3    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_0
    const-string/jumbo v4, "HeapAnalyzerService received a null intent, ignoring."

    const/4 v5, 0x0

    .line 50
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
