.class Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;
.super Landroid/os/AsyncTask;
.source "DraftPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveResizedFilesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 161
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get1(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 162
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 166
    :cond_1
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remove file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$RemoveResizedFilesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get1(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 171
    const/4 v3, 0x0

    return-object v3
.end method
