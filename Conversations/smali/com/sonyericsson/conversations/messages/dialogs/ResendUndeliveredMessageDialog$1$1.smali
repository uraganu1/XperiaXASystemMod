.class Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ResendUndeliveredMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;

.field final synthetic val$apis:Lcom/sonyericsson/conversations/Apis;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;Lcom/sonyericsson/conversations/Apis;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;
    .param p2, "val$apis"    # Lcom/sonyericsson/conversations/Apis;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->this$1:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;

    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->val$apis:Lcom/sonyericsson/conversations/Apis;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->val$apis:Lcom/sonyericsson/conversations/Apis;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getXmsResendManager()Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->this$1:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;

    iget-object v2, v2, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    invoke-static {v2}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->-get0(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->handleUndeliveredMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v1, "Could not retrieve undelivered im messages "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
