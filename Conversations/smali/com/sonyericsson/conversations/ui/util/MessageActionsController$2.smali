.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;


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
    .line 1251
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessagesDeleteCancelled()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 1278
    return-void
.end method

.method public onMessagesDeleteFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1284
    const-string/jumbo v0, "Failed to delete message"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 1285
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    .line 1287
    const v1, 0x7f0b0089

    .line 1288
    const/4 v2, 0x0

    .line 1286
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1283
    return-void
.end method

.method public onMessagesDeleted(IZ)V
    .locals 3
    .param p1, "nbrOfDeletedMessages"    # I
    .param p2, "lastXmsInConversationDeleted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 1263
    if-ne p1, v1, :cond_2

    .line 1264
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1272
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get1(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get1(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;->onContentDeleted(Z)V

    .line 1261
    :cond_1
    return-void

    .line 1267
    :cond_2
    if-le p1, v1, :cond_0

    .line 1268
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public preMessagesDelete()V
    .locals 4

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    const-string/jumbo v1, ""

    .line 1256
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b008c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap8(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1254
    return-void
.end method
