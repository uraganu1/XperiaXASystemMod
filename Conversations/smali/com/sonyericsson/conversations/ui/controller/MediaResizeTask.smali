.class public Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;
.super Landroid/os/AsyncTask;
.source "MediaResizeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;,
        Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private final mFiles:Ljava/util/List;
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

.field private final mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

.field private mResizeTaskCompletedListener:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;

.field private mVideoResizeProgressListener:Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;
    .param p6, "resizeTaskCompletedListener"    # Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;
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
            "Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;",
            "Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)V

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mVideoResizeProgressListener:Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;

    .line 90
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    .line 92
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mFiles:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 94
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 95
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mResizeTaskCompletedListener:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;

    .line 89
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "nonResizables":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, "images":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v9, "videos":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mFiles:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 105
    .local v7, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "mimeType":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v4}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 109
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v12, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-interface {v10, v11, v12, v5}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 121
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 123
    .restart local v7    # "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 124
    .local v6, "resizedImage":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-interface {v10, v11, v6}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToResizeImageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToDecodeImageException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 125
    .end local v6    # "resizedImage":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Lcom/sonymobile/jms/file/UnableToResizeImageException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to resize image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 127
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeError(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v2    # "e":Lcom/sonymobile/jms/file/UnableToResizeImageException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToDecodeImageException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to decode image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 133
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeError(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v0    # "e":Lcom/sonymobile/jms/file/UnableToDecodeImageException;
    :catch_2
    move-exception v1

    .line 129
    .local v1, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to extract file info from image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 130
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onImageResizeError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .end local v1    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mVideoResizeProgressListener:Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;

    invoke-static {v10, v9, v11}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeVideo(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V

    .line 140
    const/4 v10, 0x0

    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->mResizeTaskCompletedListener:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;->onResizeTaskCompleted()V

    .line 144
    return-void
.end method
