.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method
