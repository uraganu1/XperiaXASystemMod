.class public Ljavax2/sip/ResponseEvent;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# instance fields
.field private mClientTransaction:Ljavax2/sip/ClientTransaction;

.field private mDialog:Ljavax2/sip/Dialog;

.field private mResponse:Ljavax2/sip/message/Response;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ClientTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Response;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax2/sip/ClientTransaction;
    .param p3, "dialog"    # Ljavax2/sip/Dialog;
    .param p4, "response"    # Ljavax2/sip/message/Response;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p3, p0, Ljavax2/sip/ResponseEvent;->mDialog:Ljavax2/sip/Dialog;

    .line 19
    iput-object p4, p0, Ljavax2/sip/ResponseEvent;->mResponse:Ljavax2/sip/message/Response;

    .line 20
    iput-object p2, p0, Ljavax2/sip/ResponseEvent;->mClientTransaction:Ljavax2/sip/ClientTransaction;

    .line 21
    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax2/sip/ClientTransaction;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljavax2/sip/ResponseEvent;->mClientTransaction:Ljavax2/sip/ClientTransaction;

    return-object v0
.end method

.method public getDialog()Ljavax2/sip/Dialog;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ljavax2/sip/ResponseEvent;->mDialog:Ljavax2/sip/Dialog;

    return-object v0
.end method

.method public getResponse()Ljavax2/sip/message/Response;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljavax2/sip/ResponseEvent;->mResponse:Ljavax2/sip/message/Response;

    return-object v0
.end method
