.class public Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
.super Ljava/lang/RuntimeException;
.source "SessionDoesNotHoldRcsSessionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
