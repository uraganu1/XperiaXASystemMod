.class public Lcom/sonymobile/settings/nfc/AdditionalPreferences;
.super Ljava/lang/Object;
.source "AdditionalPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/nfc/AdditionalPreferences$InitListener;
    }
.end annotation


# instance fields
.field private mPayment:Landroid/preference/Preference;

.field private mShouldInitPreferences:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->mShouldInitPreferences:Z

    .line 30
    return-void
.end method

.method public static addNonIndexableKeys(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->shouldRemovePayment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "payment_settings"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method private initPreferences(Landroid/content/Context;Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceFragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 51
    const-string/jumbo v2, "payment_settings"

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 52
    .local v1, "payment":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 53
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->shouldRemovePayment(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_1
    :goto_0
    return-void

    .line 57
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_2
    iput-object v1, p0, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->mPayment:Landroid/preference/Preference;

    goto :goto_0
.end method

.method private static shouldRemovePayment(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, "shouldRemove":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.nfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 77
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    const-string/jumbo v3, "android.hardware.nfc.hce"

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPayment()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->mPayment:Landroid/preference/Preference;

    return-object v0
.end method

.method public onResume(Landroid/preference/PreferenceFragment;Lcom/sonymobile/settings/nfc/AdditionalPreferences$InitListener;)V
    .locals 2
    .param p1, "preferenceFragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "listener"    # Lcom/sonymobile/settings/nfc/AdditionalPreferences$InitListener;

    .prologue
    .line 34
    iget-boolean v1, p0, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->mShouldInitPreferences:Z

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->mShouldInitPreferences:Z

    .line 36
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->initPreferences(Landroid/content/Context;Landroid/preference/PreferenceFragment;)V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-interface {p2}, Lcom/sonymobile/settings/nfc/AdditionalPreferences$InitListener;->onInit()V

    .line 33
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
