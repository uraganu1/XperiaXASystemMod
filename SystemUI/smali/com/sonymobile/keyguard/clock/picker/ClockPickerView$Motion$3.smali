.class final enum Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$3;
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
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;-><init>(Ljava/lang/String;ILcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V

    return-void
.end method


# virtual methods
.method public getModifiedScrollPosition(II)I
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "pageWidthPx"    # I

    .prologue
    .line 428
    return p1
.end method
