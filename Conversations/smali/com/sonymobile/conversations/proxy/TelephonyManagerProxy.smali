.class public Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;
.super Ljava/lang/Object;
.source "TelephonyManagerProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;


# instance fields
.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    const-string/jumbo v1, "phone"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getPhoneType()I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/conversations/proxy/TelephonyManagerProxy;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method
