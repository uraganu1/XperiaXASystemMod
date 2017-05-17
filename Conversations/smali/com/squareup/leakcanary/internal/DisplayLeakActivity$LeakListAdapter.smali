.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeakListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    if-eqz p2, :cond_0

    .line 364
    :goto_0
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 365
    .local v7, "titleView":Landroid/widget/TextView;
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_time:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 366
    .local v5, "timeView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 368
    .local v2, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v9, v9, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "index":Ljava/lang/String;
    iget-object v8, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v9, v9, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v9, v9, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->resultFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const/16 v9, 0x11

    invoke-static {v8, v10, v11, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "time":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    return-object p2

    .line 361
    .end local v1    # "index":Ljava/lang/String;
    .end local v2    # "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "timeView":Landroid/widget/TextView;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/squareup/leakcanary/R$layout;->leak_canary_leak_row:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 372
    .restart local v1    # "index":Ljava/lang/String;
    .restart local v2    # "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .restart local v5    # "timeView":Landroid/widget/TextView;
    .restart local v7    # "titleView":Landroid/widget/TextView;
    :cond_1
    iget-object v8, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "className":Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-wide v10, v9, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "size":Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    sget v9, Lcom/squareup/leakcanary/R$string;->leak_canary_class_has_leaked:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .restart local v6    # "title":Ljava/lang/String;
    iget-object v8, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-boolean v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-nez v8, :cond_2

    .line 378
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 376
    :cond_2
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    sget v9, Lcom/squareup/leakcanary/R$string;->leak_canary_excluded_row:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
