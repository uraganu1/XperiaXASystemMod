.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setAudioAsRingtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    .line 1173
    const v1, 0x7f0b0099

    .line 1174
    const/4 v2, 0x0

    .line 1172
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1171
    return-void
.end method
