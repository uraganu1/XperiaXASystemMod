.class public Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;
.super Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.source "SomcBluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;
    }
.end annotation


# instance fields
.field private mAlreadyHasSummary:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;

.field private mShowBackground:Z

.field private mSummary:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mAlreadyHasSummary:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mShowBackground:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 44
    new-instance v0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;-><init>(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mHandler:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;

    .line 48
    iput-object p1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mShowBackground:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onBindView(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mView:Landroid/view/View;

    .line 56
    iget-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mShowBackground:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mView:Landroid/view/View;

    const v2, 0x7f020147

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mAlreadyHasSummary:Z

    .line 60
    iget-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mAlreadyHasSummary:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    const v3, 0x7f0e0065

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0c5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mHandler:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method removeCallbacksFromHandlers()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mHandler:Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method resetBackground()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mAlreadyHasSummary:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->mShowBackground:Z

    .line 71
    :cond_1
    return-void
.end method
