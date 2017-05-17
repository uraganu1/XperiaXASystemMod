.class Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;
.super Landroid/os/AsyncTask;
.source "DraftPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeUrisTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mOriginalUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->mOriginalUris:Ljava/util/List;

    .line 116
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->mOriginalUris:Ljava/util/List;

    .line 123
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeAllImages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "resizedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resizedUri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 127
    .local v2, "resizedUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->mOriginalUris:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get1(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-boolean v5, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Keep resized URI to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 135
    .end local v2    # "resizedUri":Landroid/net/Uri;
    .end local v3    # "resizedUri$iterator":Ljava/util/Iterator;
    .end local v4    # "resizedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "Unexpected exception when resizing images."

    .line 136
    invoke-static {v5, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->mOriginalUris:Ljava/util/List;

    return-object v5

    .line 134
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "resizedUri$iterator":Ljava/util/Iterator;
    .restart local v4    # "resizedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_1
    return-object v4

    .line 139
    .end local v3    # "resizedUri$iterator":Ljava/util/Iterator;
    .end local v4    # "resizedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->mOriginalUris:Ljava/util/List;

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "urisToShow"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Ljava/util/List;

    .end local p1    # "urisToShow":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "urisToShow":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity$ResizeUrisTask;->this$0:Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-get0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;->-wrap0(Lcom/sonyericsson/conversations/ui/DraftPreviewActivity;Lcom/sonyericsson/conversations/draft/Draft;)V

    .line 145
    return-void
.end method
