.class Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;
.super Ljava/util/TimerTask;
.source "TCPMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;Ljava/net/InetAddress;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;


# direct methods
.method constructor <init>(Lgov2/nist/javax2/sip/stack/TCPMessageChannel;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;->this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;->this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 243
    :goto_0
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v1

    return v1

    .line 237
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;->this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;->this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/TCPMessageChannel$1;->this$0:Lgov2/nist/javax2/sip/stack/TCPMessageChannel;

    iget-object v1, v1, Lgov2/nist/javax2/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
