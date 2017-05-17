.class public Lcom/sonymobile/rcs/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/sonymobile/rcs/utils/DeviceUtils;->uuid:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPreferences(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v2, "IMSI"

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, "imsi":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    .local v1, "imsiEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    return-void
.end method

.method public static enableRcsProv(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 225
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "rcsprovisionComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 229
    return-void
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v1, "IMEI"

    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "deviceDetails":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IMEI"

    const/4 v2, 0x0

    .line 294
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceUUID(Landroid/content/Context;)Ljava/util/UUID;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-eqz p0, :cond_1

    .line 78
    sget-object v1, Lcom/sonymobile/rcs/utils/DeviceUtils;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_2

    .line 88
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/utils/DeviceUtils;->uuid:Ljava/util/UUID;

    return-object v1

    .line 76
    :cond_1
    return-object v1

    .line 79
    :cond_2
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getFormattedDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 84
    :goto_1
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/utils/DeviceUtils;->uuid:Ljava/util/UUID;

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getFormattedDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "IMEI"

    .line 301
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "deviceDetails":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "IMEI_FORMATTED"

    .line 302
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "formatedDeviceID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    return-object v1

    :cond_0
    const-string/jumbo v2, "IMEI"

    .line 304
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 187
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 200
    .local v1, "instanceId":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getFormattedDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getServerAssignedUUID()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "uuid_Value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 216
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    .end local v1    # "instanceId":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 188
    .end local v0    # "imei":Ljava/lang/String;
    .end local v3    # "uuid_Value":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 202
    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "instanceId":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\"<urn:gsma:imei:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "instanceId":Ljava/lang/String;
    return-object v1

    .line 211
    .local v1, "instanceId":Ljava/lang/String;
    .restart local v3    # "uuid_Value":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->getDeviceUUID(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v2

    .line 212
    .local v2, "uuid":Ljava/util/UUID;
    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 217
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\"<urn:uuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "instanceId":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 101
    return-object v0

    .line 99
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubscriberID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v1, "IMSI"

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "deviceDetails":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "IMSI"

    const/4 v2, 0x0

    .line 314
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setDeviceID(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v5, "phone"

    .line 256
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 258
    .local v4, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .local v1, "deviceID":Ljava/lang/String;
    const-string/jumbo v5, "IMEI"

    .line 259
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    .local v0, "deviceDetails":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "IMEI"

    .line 261
    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    return-void

    .line 268
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "formattedDeviceID":Ljava/lang/String;
    const-string/jumbo v5, "IMEI_FORMATTED"

    .line 271
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setImLauncherVisibility(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    .line 114
    if-eqz p0, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.rcs.PROVISIONING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 133
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    return-void

    .line 115
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 120
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcseProvisioningState(Z)V

    .line 121
    invoke-static {p0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v1

    .local v1, "messagingUx":I
    const/4 v2, -0x1

    .line 125
    if-eq v1, v2, :cond_3

    :goto_2
    const-string/jumbo v2, "ConvergentMessagingUx"

    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "RcseProvisioned"

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 122
    .end local v1    # "messagingUx":I
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcseEnabled(Z)V

    goto :goto_1

    .restart local v1    # "messagingUx":I
    :cond_3
    const/4 v1, 0x1

    .line 127
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setMessagingUX(I)V

    goto :goto_2
.end method

.method public static setSubscriberId(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v4, "phone"

    .line 280
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 282
    .local v1, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .local v3, "subscriberID":Ljava/lang/String;
    const-string/jumbo v4, "IMSI"

    const/4 v5, 0x0

    .line 283
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 284
    .local v2, "subscriberDetails":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "IMSI"

    .line 285
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    return-void
.end method

.method public static startFreshConfig(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setRcsStates(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    .line 243
    new-instance v0, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v0, p0, v3}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setAfterReboot(Landroid/content/Context;Z)V

    .line 246
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setEUCRStatus(I)V

    .line 247
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/DeviceUtils;->updateImLauncherVisibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {p0, v3}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsService(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static updateImLauncherVisibility(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "lastUser":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "currentUser":Ljava/lang/String;
    const-string/jumbo v5, "RCS"

    .line 140
    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "LastUserAccount"

    .line 142
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "lastUser":Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/sonymobile/rcs/permission/PermissionUtil;->redirectToPermissionInfoIfNeeded(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 151
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isRcseProvisioned()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "phone"

    .line 156
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 158
    .local v2, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "currentUser":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .local v4, "simState":I
    const/4 v2, 0x0

    .line 161
    .local v2, "mgr":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_4

    :cond_0
    if-eq v4, v8, :cond_5

    const/4 v5, 0x5

    .line 174
    invoke-static {p0, v5}, Lcom/sonymobile/rcs/utils/ContactUtils;->updateStatusTable(Landroid/content/Context;I)V

    .line 176
    :goto_1
    return v8

    .line 146
    .end local v2    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v4    # "simState":I
    .local v0, "currentUser":Ljava/lang/String;
    :cond_1
    return v7

    .line 149
    :cond_2
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {p0, v7}, Lcom/sonymobile/rcs/utils/DeviceUtils;->setImLauncherVisibility(Landroid/content/Context;Z)V

    .line 154
    return v8

    .line 161
    .local v0, "currentUser":Ljava/lang/String;
    .restart local v2    # "mgr":Landroid/telephony/TelephonyManager;
    .restart local v4    # "simState":I
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    :cond_5
    new-instance v5, Lcom/sonymobile/rcs/utils/DeviceUtils$1;

    invoke-direct {v5}, Lcom/sonymobile/rcs/utils/DeviceUtils$1;-><init>()V

    new-array v6, v8, [Landroid/content/Context;

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/DeviceUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
