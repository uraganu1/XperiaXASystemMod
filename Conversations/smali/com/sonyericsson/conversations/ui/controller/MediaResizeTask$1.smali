.class Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;
.super Ljava/lang/Object;
.source "MediaResizeTask.java"

# interfaces
.implements Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentVideo:Landroid/net/Uri;

.field private mDuration:J

.field private mLastUpdate:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mLastUpdate:I

    .line 43
    return-void
.end method


# virtual methods
.method public onStartVideoResize(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "duration"    # J

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mCurrentVideo:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mLastUpdate:I

    .line 61
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mDuration:J

    .line 58
    return-void
.end method

.method public onVideoResizeCompleted(Landroid/net/Uri;)V
    .locals 5
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x64

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mCurrentVideo:Landroid/net/Uri;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get1(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-interface {v0, v1, v4, p1}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get1(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    .line 65
    return-void
.end method

.method public onVideoResizeElapsedTime(J)V
    .locals 7
    .param p1, "elapsedTime"    # J

    .prologue
    .line 50
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mDuration:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 51
    .local v0, "percentage":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mLastUpdate:I

    if-le v0, v1, :cond_0

    .line 52
    iput v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mLastUpdate:I

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get1(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mLastUpdate:I

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->mCurrentVideo:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeProgress(Lcom/sonyericsson/conversations/conversation/Conversation;ILandroid/net/Uri;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onVideoResizeFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "videoUri"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get1(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->-get0(Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;->onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V

    .line 72
    return-void
.end method
