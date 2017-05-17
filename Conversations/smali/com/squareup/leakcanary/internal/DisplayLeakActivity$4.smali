.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 272
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-virtual {v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v4

    .line 273
    .local v4, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v5, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v1, v5, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 274
    .local v1, "heapDumpFile":Ljava/io/File;
    iget-object v3, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->resultFile:Ljava/io/File;

    .line 275
    .local v3, "resultFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 276
    .local v2, "resultDeleted":Z
    if-eqz v2, :cond_0

    .line 279
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 280
    .local v0, "heapDumpDeleted":Z
    if-eqz v0, :cond_1

    .line 283
    :goto_1
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 284
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v5, v5, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-virtual {v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 286
    return-void

    .end local v0    # "heapDumpDeleted":Z
    :cond_0
    const-string/jumbo v5, "Could not delete result file %s"

    .line 277
    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .restart local v0    # "heapDumpDeleted":Z
    :cond_1
    const-string/jumbo v5, "Could not delete heap dump file %s"

    .line 281
    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
