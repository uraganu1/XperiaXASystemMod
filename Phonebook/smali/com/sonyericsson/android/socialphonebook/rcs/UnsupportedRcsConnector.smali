.class public Lcom/sonyericsson/android/socialphonebook/rcs/UnsupportedRcsConnector;
.super Ljava/lang/Object;
.source "UnsupportedRcsConnector.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public extractCapableNumbers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public requestCapabilitiesRefresh(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public varargs requestCapabilitiesRefresh([Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumbers"    # [Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method
