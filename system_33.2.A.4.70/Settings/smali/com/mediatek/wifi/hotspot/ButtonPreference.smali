.class public Lcom/mediatek/wifi/hotspot/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

.field private mHotspotClient:Landroid/net/wifi/HotspotClient;

.field private mMacAddress:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hotspotClient"    # Landroid/net/wifi/HotspotClient;
    .param p3, "listner"    # Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    .line 56
    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    .line 57
    iput-object p3, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    .line 53
    return-void
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    iget-boolean v0, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    const v0, 0x7f13012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 66
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;->onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V

    .line 70
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->notifyChanged()V

    .line 80
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
