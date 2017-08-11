.class public Lcom/android/incallui/Call$State;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnectingOrConnected(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 88
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDialing(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 95
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 99
    packed-switch p0, :pswitch_data_0

    .line 129
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 101
    :pswitch_0
    const-string/jumbo v0, "INVALID"

    return-object v0

    .line 103
    :pswitch_1
    const-string/jumbo v0, "NEW"

    return-object v0

    .line 105
    :pswitch_2
    const-string/jumbo v0, "IDLE"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 109
    :pswitch_4
    const-string/jumbo v0, "INCOMING"

    return-object v0

    .line 111
    :pswitch_5
    const-string/jumbo v0, "CALL_WAITING"

    return-object v0

    .line 113
    :pswitch_6
    const-string/jumbo v0, "DIALING"

    return-object v0

    .line 115
    :pswitch_7
    const-string/jumbo v0, "REDIALING"

    return-object v0

    .line 117
    :pswitch_8
    const-string/jumbo v0, "ONHOLD"

    return-object v0

    .line 119
    :pswitch_9
    const-string/jumbo v0, "DISCONNECTING"

    return-object v0

    .line 121
    :pswitch_a
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    .line 123
    :pswitch_b
    const-string/jumbo v0, "CONFERENCED"

    return-object v0

    .line 125
    :pswitch_c
    const-string/jumbo v0, "SELECT_PHONE_ACCOUNT"

    return-object v0

    .line 127
    :pswitch_d
    const-string/jumbo v0, "CONNECTING"

    return-object v0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
