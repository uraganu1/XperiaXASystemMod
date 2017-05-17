.class public Lorg/w3c/dom/events/EventException;
.super Ljava/lang/RuntimeException;
.source "EventException.java"


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    iput-short p1, p0, Lorg/w3c/dom/events/EventException;->code:S

    .line 29
    return-void
.end method
