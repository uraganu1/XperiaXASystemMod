.class public Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;
.super Ljava/lang/Object;
.source "AnsweringMachineUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_AM_NOTIFICATION:Ljava/lang/String; = "com.android.server.telecom.ACTION_CLEAR_ANSWERING_MACHINE_NOTIFICATION"

.field private static final AM_SUPPORTED_CONFIG_VALUE:Ljava/lang/String; = "config_enable_answering_machine"

.field private static final PHONE_APP_AM_SETTINGS_ACTIVITY:Ljava/lang/String; = "com.android.server.telecom.am.SomcAmSetting"

.field public static final SETTINGS_KEY_AM_SLOT1_ENABLED:Ljava/lang/String; = "somc.answering_machine_slot1_enabled"

.field public static final SETTINGS_KEY_AM_SLOT2_ENABLED:Ljava/lang/String; = "somc.answering_machine_slot2_enabled"

.field private static final TAG:Ljava/lang/String;

.field public static final TELECOM_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnsweringMachineSettingsIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.server.telecom"

    .line 86
    const-string/jumbo v3, "com.android.server.telecom.am.SomcAmSetting"

    .line 85
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method public static isAnsweringMachineSupported(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "answeringMachineSupported":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 64
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "com.android.server.telecom"

    .line 63
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    .local v3, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "config_enable_answering_machine"

    const-string/jumbo v6, "bool"

    .line 68
    const-string/jumbo v7, "com.android.server.telecom"

    .line 67
    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 69
    .local v4, "resourceId":I
    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    .end local v0    # "answeringMachineSupported":Z
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceId":I
    :cond_0
    :goto_0
    return v0

    .line 72
    .restart local v0    # "answeringMachineSupported":Z
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No answering machine supported info found."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
