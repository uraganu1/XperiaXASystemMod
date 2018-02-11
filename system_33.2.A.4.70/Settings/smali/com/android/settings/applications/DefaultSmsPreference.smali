.class public Lcom/android/settings/applications/DefaultSmsPreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultSmsPreference.java"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISmsPreferenceExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSmsPreferencePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultSmsPreference;->mExt:Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    .line 43
    iget-object v0, p0, Lcom/android/settings/applications/DefaultSmsPreference;->mExt:Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/mediatek/settings/ext/ISmsPreferenceExt;->createBroadcastReceiver(Landroid/content/Context;Landroid/preference/ListPreference;)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 39
    return-void
.end method

.method private getDefaultPackage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    return-object v3
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    return v1
.end method

.method private loadSmsApps()V
    .locals 8

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    .line 52
    .local v6, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v0

    .line 53
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 54
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "smsApplicationData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 56
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v7, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v7, v3, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 58
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/android/settings/applications/DefaultSmsPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/DefaultSmsPreference;->mExt:Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISmsPreferenceExt;->canSetSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/DefaultSmsPreference;->mExt:Lcom/mediatek/settings/ext/ISmsPreferenceExt;

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/mediatek/settings/ext/ISmsPreferenceExt;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
