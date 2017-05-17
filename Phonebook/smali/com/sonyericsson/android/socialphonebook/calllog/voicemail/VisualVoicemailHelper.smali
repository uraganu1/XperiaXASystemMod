.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;
.super Ljava/lang/Object;
.source "VisualVoicemailHelper.java"


# static fields
.field private static final VISUAL_VOICEMAIL_INTEGRATION_NAME_SETTING:Ljava/lang/String; = "somc.voicemail_call_log_integration_name"

.field public static final VISUAL_VOICEMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.visualvoicemail"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 33
    const-string/jumbo v2, "somc.voicemail_call_log_integration_name"

    .line 32
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public static isVisualVoicemail(Ljava/lang/String;)Z
    .locals 2
    .param p0, "callerVoicemailUriString"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getSourcePackageFromVoicemailUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.visualvoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
