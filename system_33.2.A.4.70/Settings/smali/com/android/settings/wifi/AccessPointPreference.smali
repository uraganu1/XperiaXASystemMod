.class public Lcom/android/settings/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;,
        Lcom/android/settings/wifi/AccessPointPreference$1;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mForSavedNetworks:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [I

    .line 38
    const v1, 0x7f010016

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 40
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 42
    new-array v0, v3, [I

    const v1, 0x7f01005b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 56
    const v0, 0x7f0b003d

    .line 57
    const v1, 0x7f0b003e

    .line 58
    const v2, 0x7f0b003f

    .line 59
    const v3, 0x7f0b0040

    .line 55
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 201
    new-instance v0, Lcom/android/settings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 65
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 66
    iput v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 67
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 201
    new-instance v0, Lcom/android/settings/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 73
    iput-object p3, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 75
    iput-boolean p4, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mLevel:I

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/android/settings/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0c0097

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgePadding:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->refresh()V

    .line 71
    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 182
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 101
    iget v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointPreference;->updateHighlight(Landroid/view/View;)V

    .line 104
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 191
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 161
    .local v1, "level":I
    iget v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mLevel:I

    if-eq v1, v2, :cond_0

    .line 162
    iput v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mLevel:I

    .line 163
    iget v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->notifyChanged()V

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 168
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 175
    :cond_1
    if-ltz v1, :cond_2

    sget-object v2, Lcom/android/settings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 176
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/settings/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 152
    :cond_2
    return-void

    .line 156
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 141
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/android/settings/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 139
    :cond_0
    return-void
.end method

.method protected updateHighlight(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    sget-object v1, Lcom/android/settings/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 125
    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 128
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_3

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v1, Lcom/android/settings/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_1

    .line 132
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
