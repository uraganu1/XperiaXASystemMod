.class public Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;
.super Ljava/lang/Object;
.source "HandshakeCompletedListenerImpl.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field private handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

.field private tlsMessageChannel:Lgov2/nist/javax2/sip/stack/TLSMessageChannel;


# direct methods
.method public constructor <init>(Lgov2/nist/javax2/sip/stack/TLSMessageChannel;)V
    .locals 0
    .param p1, "tlsMessageChannel"    # Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;->tlsMessageChannel:Lgov2/nist/javax2/sip/stack/TLSMessageChannel;

    .line 33
    invoke-virtual {p1, p0}, Lgov2/nist/javax2/sip/stack/TLSMessageChannel;->setHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0
    .param p1, "handshakeCompletedEvent"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    .line 37
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/HandshakeCompletedListenerImpl;->handshakeCompletedEvent:Ljavax/net/ssl/HandshakeCompletedEvent;

    .line 41
    return-void
.end method
