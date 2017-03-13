.class public Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;
.super Ljava/lang/Object;
.source "SomcLockscreenRuntimeThemeUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newThemeConfiguration(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 43
    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V

    .line 44
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateOwnerInfoTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 45
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 46
    invoke-static {p1, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 47
    invoke-static {p0, p2}, Lcom/sonymobile/systemui/lockscreen/theme/SomcLockscreenRuntimeThemeUpdater;->updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V

    .line 41
    return-void
.end method

.method private static updateAllLockscreenCarrierTextColor(Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    const v3, 0x7f10003d

    const v4, 0x7f100076

    filled-new-array {v3, v4}, [I

    move-result-object v1

    .line 71
    .local v1, "carrierContainerIds":[I
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget v0, v1, v3

    .line 72
    .local v0, "carrierContainerId":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 76
    check-cast v2, Lcom/android/keyguard/CarrierText;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/keyguard/CarrierText;->updateCarrierTextColor()V

    .line 71
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "carrierContainerId":I
    :cond_1
    return-void
.end method

.method private static updateDigitalClockColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 9
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v8, 0x7f100070

    const/4 v5, 0x0

    .line 83
    const v4, 0x7f100064

    const v6, 0x7f10007b

    const v7, 0x7f10006f

    .line 82
    filled-new-array {v4, v6, v7, v8}, [I

    move-result-object v0

    .line 85
    .local v0, "digitalClockIds":[I
    const v4, 0x7f0b005d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 87
    .local v1, "textColor":I
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget v3, v0, v4

    .line 88
    .local v3, "viewId":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    if-ne v3, v8, :cond_0

    .line 94
    const v7, 0x7f02017b

    .line 93
    invoke-virtual {v2, v7, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "viewId":I
    :cond_1
    return-void
.end method

.method private static updateKeyguardBottomAreaResources(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 102
    const v1, 0x7f100036

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 104
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateThemeResources()V

    .line 101
    :cond_0
    return-void
.end method

.method private static updateKeyguardIndicationTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 53
    const v2, 0x7f100037

    .line 52
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "indicationText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 55
    const v2, 0x7f0b0052

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 56
    .local v1, "textColor":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .end local v1    # "textColor":I
    :cond_0
    return-void
.end method

.method private static updateOwnerInfoTextColor(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 62
    const v2, 0x7f10007c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "ownerText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 64
    const v2, 0x7f0b0052

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 65
    .local v1, "textColor":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .end local v1    # "textColor":I
    :cond_0
    return-void
.end method

.method private static updateScrimColors(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    .line 110
    .local v0, "controller":Lcom/android/systemui/statusbar/phone/ScrimController;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColorFromResource(Landroid/content/res/Resources;)V

    .line 108
    :cond_0
    return-void
.end method
