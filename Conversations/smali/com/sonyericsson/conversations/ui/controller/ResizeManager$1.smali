.class Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;
.super Ljava/lang/Object;
.source "ResizeManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ResizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "image"    # Landroid/net/Uri;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 73
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    goto :goto_0

    .line 75
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;->onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    .line 71
    :cond_1
    return-void
.end method

.method public onImageResizeError(Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 83
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeError(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;->onImageResizeError(Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method

.method public onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 62
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    goto :goto_0

    .line 64
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;->onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 60
    :cond_1
    return-void
.end method

.method public onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 33
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 34
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    goto :goto_0

    .line 36
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;->onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    .line 32
    :cond_1
    return-void
.end method

.method public onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 44
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;->onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V

    .line 42
    :cond_1
    return-void
.end method

.method public onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "percentage"    # I
    .param p3, "video"    # Landroid/net/Uri;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->-get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 54
    .local v0, "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V

    goto :goto_0

    .line 52
    .end local v0    # "listener":Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    :cond_0
    return-void
.end method
