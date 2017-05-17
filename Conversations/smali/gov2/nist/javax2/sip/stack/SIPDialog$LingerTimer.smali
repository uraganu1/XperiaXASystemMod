.class Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;
.super Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LingerTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    .line 395
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    .line 399
    .local v0, "dialog":Lgov2/nist/javax2/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;
    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$400(Lgov2/nist/javax2/sip/stack/SIPDialog;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 402
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # setter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v1, v2}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$502(Lgov2/nist/javax2/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 403
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$000(Lgov2/nist/javax2/sip/stack/SIPDialog;)Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->removeDialog(Lgov2/nist/javax2/sip/stack/SIPDialog;)V

    .line 404
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    # getter for: Lgov2/nist/javax2/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;
    invoke-static {v1}, Lgov2/nist/javax2/sip/stack/SIPDialog;->access$400(Lgov2/nist/javax2/sip/stack/SIPDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method
