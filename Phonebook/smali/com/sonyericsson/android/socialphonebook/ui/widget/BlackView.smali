.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;
.super Landroid/view/View;
.source "BlackView.java"


# instance fields
.field private mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->setBackgroundColor(I)V

    .line 28
    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->setSystemUiVisibility(I)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->setClickable(Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    .line 38
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;->volumeUp()V

    .line 49
    return v1

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/BlackView;->mImmersiveModeVolumeController:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ImmersiveModeVolumeController;->volumeDown()V

    .line 55
    return v1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
