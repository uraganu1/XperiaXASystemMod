.class public Lgov2/nist/javax2/sip/DialogTimeoutEvent;
.super Ljava/util/EventObject;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22e385bc1cf941b5L


# instance fields
.field private m_dialog:Ljavax2/sip/Dialog;

.field private m_reason:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/Dialog;Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "dialog"    # Ljavax2/sip/Dialog;
    .param p3, "reason"    # Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 73
    iput-object v0, p0, Lgov2/nist/javax2/sip/DialogTimeoutEvent;->m_dialog:Ljavax2/sip/Dialog;

    .line 75
    iput-object v0, p0, Lgov2/nist/javax2/sip/DialogTimeoutEvent;->m_reason:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    .line 45
    iput-object p2, p0, Lgov2/nist/javax2/sip/DialogTimeoutEvent;->m_dialog:Ljavax2/sip/Dialog;

    .line 46
    iput-object p3, p0, Lgov2/nist/javax2/sip/DialogTimeoutEvent;->m_reason:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    .line 48
    return-void
.end method
