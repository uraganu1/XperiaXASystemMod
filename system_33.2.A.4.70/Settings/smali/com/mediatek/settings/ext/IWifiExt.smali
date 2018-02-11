.class public interface abstract Lcom/mediatek/settings/ext/IWifiExt;
.super Ljava/lang/Object;
.source "IWifiExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/ext/IWifiExt$Builder;
    }
.end annotation


# virtual methods
.method public abstract addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract getEapMethodbySpinnerPos(ILjava/lang/String;I)I
.end method

.method public abstract getPosByEapMethod(ILjava/lang/String;I)I
.end method

.method public abstract getPriority(I)I
.end method

.method public abstract hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V
.end method

.method public abstract initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract initNetworkInfoView(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract initPreference(Landroid/content/ContentResolver;)V
.end method

.method public abstract refreshNetworkInfoView()V
.end method

.method public abstract setAPNetworkId(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract setAPPriority(I)V
.end method

.method public abstract setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V
.end method

.method public abstract setPriorityView(Landroid/widget/LinearLayout;Landroid/net/wifi/WifiConfiguration;Z)V
.end method

.method public abstract setProxyText(Landroid/widget/TextView;)V
.end method

.method public abstract setSecurityText(Landroid/widget/TextView;)V
.end method

.method public abstract setSleepPolicyPreference(Landroid/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V
.end method
