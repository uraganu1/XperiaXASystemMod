.class public Ljavax2/sip/IOExceptionEvent;
.super Ljava/util/EventObject;
.source "IOExceptionEvent.java"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPort:I

.field private mTransport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "transport"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p2, p0, Ljavax2/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    .line 16
    iput p3, p0, Ljavax2/sip/IOExceptionEvent;->mPort:I

    .line 17
    iput-object p4, p0, Ljavax2/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ljavax2/sip/IOExceptionEvent;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Ljavax2/sip/IOExceptionEvent;->mPort:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljavax2/sip/IOExceptionEvent;->mTransport:Ljava/lang/String;

    return-object v0
.end method