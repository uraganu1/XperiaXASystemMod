.class Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
    }
.end annotation


# instance fields
.field public mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    .line 809
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method


# virtual methods
.method public getDataRoaming()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 817
    const-string/jumbo v1, "data_roaming"

    .line 818
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "DataRoamingSettings.SettingsHelper"

    const-string/jumbo v4, "getDataRoaming"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    return v2
.end method

.method public setDataRoaming(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 832
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 833
    .local v1, "phoneId":I
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 836
    .local v2, "state":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v5}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 836
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 839
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 841
    .local v0, "defDataPhoneId":I
    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    :goto_1
    return-void

    .line 833
    .end local v0    # "defDataPhoneId":I
    .end local v2    # "state":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "state":I
    goto :goto_0

    .line 843
    .restart local v0    # "defDataPhoneId":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "data_roaming"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
