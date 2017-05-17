.class public Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;
.super Ljava/util/EventObject;
.source "SIPDialogErrorEvent.java"


# instance fields
.field private errorID:I


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/SIPDialog;I)V
    .locals 0
    .param p1, "sourceDialog"    # Lgov2/nist/javax2/sip/stack/SIPDialog;
    .param p2, "dialogErrorID"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 58
    iput p2, p0, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->errorID:I

    .line 60
    return-void
.end method


# virtual methods
.method public getErrorID()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lgov2/nist/javax2/sip/stack/SIPDialogErrorEvent;->errorID:I

    return v0
.end method
