.class final enum Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$2;
.super Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
.source "ClockPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;-><init>(Ljava/lang/String;ILcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    return-void
.end method


# virtual methods
.method public getModifiedScrollPosition(II)I
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "pageWidthPx"    # I

    .prologue
    .line 418
    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 419
    .local v0, "halfPagePx":I
    add-int v1, p1, v0

    return v1
.end method
