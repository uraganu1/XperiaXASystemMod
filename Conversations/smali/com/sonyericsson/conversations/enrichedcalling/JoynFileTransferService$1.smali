.class Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService$1;
.super Ljava/lang/Object;
.source "JoynFileTransferService.java"

# interfaces
.implements Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->resizeMediaAndSendJoynMessage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartVideoResize(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "duration"    # J

    .prologue
    .line 210
    return-void
.end method

.method public onVideoResizeCompleted(Landroid/net/Uri;)V
    .locals 1
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService$1;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;->-wrap0(Lcom/sonyericsson/conversations/enrichedcalling/JoynFileTransferService;Landroid/net/Uri;)V

    .line 214
    return-void
.end method

.method public onVideoResizeElapsedTime(J)V
    .locals 0
    .param p1, "elapsedTime"    # J

    .prologue
    .line 206
    return-void
.end method

.method public onVideoResizeFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "videoUri"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Video resize failed for video uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 220
    return-void
.end method
