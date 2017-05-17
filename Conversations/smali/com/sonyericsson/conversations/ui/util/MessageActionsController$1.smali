.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
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
    .line 214
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageContentSaveException(Lcom/sonyericsson/conversations/model/Message;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    const v1, 0x7f0b00a5

    const/4 v2, 0x1

    .line 237
    instance-of v0, p2, Lcom/google/android/mms/MmsException;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mms exception"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    instance-of v0, p2, Ljava/security/InvalidParameterException;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_2
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_3
    instance-of v0, p2, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onMessageContentSaved(Lcom/sonyericsson/conversations/model/Message;Ljava/io/File;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    .line 225
    const v1, 0x7f0b00a4

    .line 223
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    .line 229
    const v1, 0x7f0b00a3

    .line 228
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
