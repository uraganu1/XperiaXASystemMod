.class public Ljavax2/sip/RequestEvent;
.super Ljava/util/EventObject;
.source "RequestEvent.java"


# instance fields
.field private mDialog:Ljavax2/sip/Dialog;

.field private mRequest:Ljavax2/sip/message/Request;

.field private mServerTransaction:Ljavax2/sip/ServerTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax2/sip/ServerTransaction;Ljavax2/sip/Dialog;Ljavax2/sip/message/Request;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "serverTransaction"    # Ljavax2/sip/ServerTransaction;
    .param p3, "dialog"    # Ljavax2/sip/Dialog;
    .param p4, "request"    # Ljavax2/sip/message/Request;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p3, p0, Ljavax2/sip/RequestEvent;->mDialog:Ljavax2/sip/Dialog;

    .line 19
    iput-object p4, p0, Ljavax2/sip/RequestEvent;->mRequest:Ljavax2/sip/message/Request;

    .line 20
    iput-object p2, p0, Ljavax2/sip/RequestEvent;->mServerTransaction:Ljavax2/sip/ServerTransaction;

    .line 21
    return-void
.end method


# virtual methods
.method public getDialog()Ljavax2/sip/Dialog;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ljavax2/sip/RequestEvent;->mDialog:Ljavax2/sip/Dialog;

    return-object v0
.end method

.method public getRequest()Ljavax2/sip/message/Request;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljavax2/sip/RequestEvent;->mRequest:Ljavax2/sip/message/Request;

    return-object v0
.end method

.method public getServerTransaction()Ljavax2/sip/ServerTransaction;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljavax2/sip/RequestEvent;->mServerTransaction:Ljavax2/sip/ServerTransaction;

    return-object v0
.end method
