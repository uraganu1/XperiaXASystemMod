.class public Lcom/sonymobile/settings/nfc/HceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;,
        Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;,
        Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;,
        Lcom/sonymobile/settings/nfc/HceSettings$1;
    }
.end annotation


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

.field private final mHandler:Landroid/os/Handler;

.field private mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMainHandler:Landroid/os/Handler;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSettingsObserver:Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mUsedMemText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/nfc/HceSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/nfc/HceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Lcom/sonymobile/settings/nfc/HceSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mMainHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/nfc/HceSettings$1;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 89
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 90
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->updateServices()V

    .line 92
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getNonDefaultRouteServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 94
    .local v1, "service":Landroid/content/ComponentName;
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1, p0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V

    .line 95
    .local v0, "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 98
    .end local v0    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 100
    .restart local v1    # "service":Landroid/content/ComponentName;
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3, v1, p0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V

    .line 101
    .restart local v0    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 104
    .end local v0    # "preference":Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/nfc/HceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 105
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->updateDisplay()V

    .line 88
    return-void
.end method

.method private updateDisplay()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const v6, -0x262627

    const v5, -0xdabf9f

    .line 160
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->updateSimulator()V

    .line 161
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getSumRatio()F

    move-result v2

    .line 162
    .local v2, "sumRatio":F
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getPaymentRatio()F

    move-result v1

    .line 163
    .local v1, "paymentRatio":F
    sub-float v0, v2, v1

    .line 167
    .local v0, "otherRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    .line 170
    const/high16 v4, -0x10000

    .line 168
    invoke-virtual {v3, v5, v4, v6}, Lcom/sonymobile/settings/nfc/HceColorBar;->setColors(III)V

    .line 172
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    invoke-virtual {v3, v1, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setRatios(FF)V

    .line 173
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mUsedMemText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 184
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0b0c94

    .line 183
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    .line 177
    const v4, -0x714b1d

    .line 175
    invoke-virtual {v3, v5, v4, v6}, Lcom/sonymobile/settings/nfc/HceColorBar;->setColors(III)V

    .line 179
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    invoke-virtual {v3, v1, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setRatios(FF)V

    .line 180
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x46

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 147
    .local v1, "service":Landroid/content/ComponentName;
    const v2, 0x7f1300b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 148
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 149
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->setCheckBoxState(Landroid/content/ComponentName;Z)V

    .line 150
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->updateDisplay()V

    .line 144
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130112

    if-ne v2, v3, :cond_2

    .line 152
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v2}, Lcom/sonymobile/settings/nfc/HceBackend;->applyCurrentSettings()V

    .line 153
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->finish()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130111

    if-ne v2, v3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->setRetainInstance(Z)V

    .line 80
    new-instance v0, Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    .line 81
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 85
    new-instance v0, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;-><init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsObserver:Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 112
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f13010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/nfc/HceColorBar;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mColorBar:Lcom/sonymobile/settings/nfc/HceColorBar;

    .line 115
    const v1, 0x7f130110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mUsedMemText:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f130112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    .line 118
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f130111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonNegative:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsObserver:Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "nfc_default_route"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mSettingsObserver:Lcom/sonymobile/settings/nfc/HceSettings$SettingsObserver;

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-static {}, Lcom/sonymobile/settings/nfc/HceReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;->applyNewIntent(Landroid/content/Intent;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceSettings;->mHceBackend:Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->updateDefaultRoute()V

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceSettings;->refresh()V

    .line 126
    return-void
.end method
