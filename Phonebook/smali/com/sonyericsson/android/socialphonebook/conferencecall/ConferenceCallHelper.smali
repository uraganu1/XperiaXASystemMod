.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;
.super Ljava/lang/Object;
.source "ConferenceCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    }
.end annotation


# static fields
.field private static final CALLER_ID_ENABLED_PREFS_KEY:Ljava/lang/String; = "phone_string_notify_number"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 42
    return-void
.end method


# virtual methods
.method public getConferenceCallConstraint()Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ONGOING_CALL_IN_PROGRESS:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v2

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_IN_ROAMING:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v2

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "phone_string_notify_number"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "isCallerIdEnabled":Z
    if-nez v0, :cond_2

    .line 67
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_ID_DEACTIVATED:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v2

    .line 70
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v2
.end method

.method public isConferenceCallPossible()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->getConferenceCallConstraint()Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
