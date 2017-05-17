.class Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;
.super Landroid/os/AsyncTask;
.source "XmsResendManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;->onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
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
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

.field final synthetic val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;
    .param p2, "val$imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener$1;->val$imOne2OneConversationId:Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->handleUndeliveredMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v1, "Could not retrieve undelivered im messages "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
