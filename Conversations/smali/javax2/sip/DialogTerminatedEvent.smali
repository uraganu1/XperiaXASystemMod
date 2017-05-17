.class public Ljavax2/sip/DialogTerminatedEvent;
.super Ljava/util/EventObject;
.source "DialogTerminatedEvent.java"


# instance fields
.field private mDialog:Ljavax2/sip/Dialog;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/Dialog;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "dialog"    # Ljavax2/sip/Dialog;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p2, p0, Ljavax2/sip/DialogTerminatedEvent;->mDialog:Ljavax2/sip/Dialog;

    .line 12
    return-void
.end method
