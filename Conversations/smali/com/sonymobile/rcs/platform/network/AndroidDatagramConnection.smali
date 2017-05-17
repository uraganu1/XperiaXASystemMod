.class public Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;
.super Ljava/lang/Object;
.source "AndroidDatagramConnection.java"

# interfaces
.implements Lcom/sonymobile/rcs/platform/network/DatagramConnection;


# instance fields
.field private connection:Ljava/net/DatagramSocket;

.field private packet:Ljava/net/DatagramPacket;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const v2, 0x8000

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->packet:Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->timeout:I

    .line 56
    new-instance v0, Ljava/net/DatagramPacket;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->packet:Ljava/net/DatagramPacket;

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 99
    iput-object v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    goto :goto_0
.end method

.method public open(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->connection:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/sonymobile/rcs/platform/network/AndroidDatagramConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 89
    return-void
.end method
