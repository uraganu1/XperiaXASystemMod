.class Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;
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
    name = "DialogDeleteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov2/nist/javax2/sip/stack/SIPStackTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialog$DialogDeleteTask;->this$0:Lgov2/nist/javax2/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPDialog;->delete()V

    .line 497
    return-void
.end method
