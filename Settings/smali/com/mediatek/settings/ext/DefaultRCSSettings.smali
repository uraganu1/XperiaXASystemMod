.class public Lcom/mediatek/settings/ext/DefaultRCSSettings;
.super Ljava/lang/Object;
.source "DefaultRCSSettings.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRCSSettings;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRCSSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRCSPreference(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 23
    const-string/jumbo v0, "@M_DefaultRCSSettings"

    const-string/jumbo v1, "DefaultRCSSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public getDefaultSmsClickContentExt(Ljava/util/List;II)I
    .locals 2
    .param p2, "value"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string/jumbo v0, "@M_DefaultRCSSettings"

    const-string/jumbo v1, "getDefaultSmsClickContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return p3
.end method

.method public isNeedAskFirstItemForSms()Z
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "@M_DefaultRCSSettings"

    const-string/jumbo v1, "isNeedAskFirstItemForSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultSmsApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    return-void
.end method
