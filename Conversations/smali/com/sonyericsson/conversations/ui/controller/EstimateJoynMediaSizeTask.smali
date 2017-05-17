.class public Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;
.super Landroid/os/AsyncTask;
.source "EstimateJoynMediaSizeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mFileUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private final mListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p4, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mFileUris:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 40
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 41
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;-><init>()V

    .line 50
    .local v0, "estimatedJoynMediaSizeResult":Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mFileUris:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 51
    .local v1, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    .line 52
    .local v2, "size":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 53
    iget-wide v6, v0, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;->originalSize:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;->originalSize:J

    goto :goto_0

    .line 55
    :cond_0
    return-object v0

    .line 61
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "size":J
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mFileUris:Ljava/util/List;

    .line 60
    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDefaultCompressionEstimate(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;->resizedSize:J

    .line 63
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;)V
    .locals 9
    .param p1, "estimatedJoynMediaSizeResult"    # Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 69
    iget-wide v4, p1, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;->originalSize:J

    .line 70
    iget-wide v6, p1, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;->resizedSize:J

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->mFileUris:Ljava/util/List;

    .line 68
    invoke-interface/range {v1 .. v8}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;->onEstimateDone(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V

    .line 67
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "estimatedJoynMediaSizeResult"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;

    .end local p1    # "estimatedJoynMediaSizeResult":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->onPostExecute(Lcom/sonyericsson/conversations/ui/controller/EstimatedJoynMediaSizeResult;)V

    return-void
.end method
