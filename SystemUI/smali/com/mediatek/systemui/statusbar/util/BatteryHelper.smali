.class public Lcom/mediatek/systemui/statusbar/util/BatteryHelper;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBatteryFull(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 15
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryProtection(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 23
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 24
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isPlugForProtection(II)Z
    .locals 3
    .param p0, "status"    # I
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "plugged":Z
    packed-switch p0, :pswitch_data_0

    .line 39
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mediatek/systemui/statusbar/util/BatteryHelper;->isBatteryFull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    .line 36
    :pswitch_1
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/mediatek/systemui/statusbar/util/BatteryHelper;->isBatteryProtection(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isWirelessCharging(I)Z
    .locals 1
    .param p0, "mPlugType"    # I

    .prologue
    .line 19
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
