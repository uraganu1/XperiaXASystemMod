.class public Lcom/sonymobile/systemui/qs/QSEditActivity;
.super Landroid/app/Activity;
.source "QSEditActivity.java"


# instance fields
.field private mHadFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    .line 13
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 36
    const v0, 0x7f0500ac

    const v1, 0x7f0500ad

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/qs/QSEditActivity;->overridePendingTransition(II)V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0500ac

    const v1, 0x7f0500ad

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/qs/QSEditActivity;->overridePendingTransition(II)V

    .line 21
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->setContentView(I)V

    .line 18
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 27
    iget-boolean v0, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/systemui/qs/QSEditActivity;->mHadFocus:Z

    .line 25
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/QSEditActivity;->finish()V

    goto :goto_0
.end method
