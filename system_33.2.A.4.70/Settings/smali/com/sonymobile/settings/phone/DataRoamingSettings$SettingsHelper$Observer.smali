.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    .line 851
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 848
    const-string/jumbo v0, "DataRoamingSettings.SettingsHelper.Observer"

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->TAG:Ljava/lang/String;

    .line 850
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 870
    const-string/jumbo v0, "DataRoamingSettings.SettingsHelper.Observer"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v1, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const-string/jumbo v2, "data_roaming"

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap14(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    .line 869
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 855
    const-string/jumbo v0, "data_roaming"

    .line 856
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v2, v2, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v3, v3, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    :cond_0
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 861
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v2, v2, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 854
    return-void
.end method

.method public unRegister()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 864
    return-void
.end method
