.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;
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
    .line 312
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 314
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLeakDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 315
    .local v5, "leakDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 316
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 324
    :cond_0
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 325
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-virtual {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 326
    return-void

    .line 317
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 318
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 319
    .local v1, "deleted":Z
    if-eqz v1, :cond_2

    .line 317
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "Could not delete file %s"

    const/4 v8, 0x1

    .line 320
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
