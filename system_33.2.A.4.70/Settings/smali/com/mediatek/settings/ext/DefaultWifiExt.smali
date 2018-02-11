.class public Lcom/mediatek/settings/ext/DefaultWifiExt;
.super Ljava/lang/Object;
.source "DefaultWifiExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "edit"    # Z
    .param p3, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p4, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 36
    return-void
.end method

.method public getEapMethodbySpinnerPos(ILjava/lang/String;I)I
    .locals 0
    .param p1, "spinnerPos"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 65
    return p1
.end method

.method public getPosByEapMethod(ILjava/lang/String;I)I
    .locals 0
    .param p1, "spinnerPos"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 69
    return p1
.end method

.method public getPriority(I)I
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 39
    return p1
.end method

.method public hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V
    .locals 0
    .param p1, "builder"    # Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    return-void
.end method

.method public initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 44
    return-void
.end method

.method public initNetworkInfoView(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 47
    return-void
.end method

.method public initPreference(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 51
    return-void
.end method

.method public refreshNetworkInfoView()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public setAPNetworkId(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 26
    return-void
.end method

.method public setAPPriority(I)V
    .locals 0
    .param p1, "apPriority"    # I

    .prologue
    .line 28
    return-void
.end method

.method public setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 60
    return-void
.end method

.method public setPriorityView(Landroid/widget/LinearLayout;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0
    .param p1, "priorityLayout"    # Landroid/widget/LinearLayout;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "isEdit"    # Z

    .prologue
    .line 31
    return-void
.end method

.method public setProxyText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 41
    return-void
.end method

.method public setSecurityText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 33
    return-void
.end method

.method public setSleepPolicyPreference(Landroid/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepPolicyPref"    # Landroid/preference/ListPreference;
    .param p2, "sleepPolicyEntries"    # [Ljava/lang/String;
    .param p3, "sleepPolicyValues"    # [Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method
