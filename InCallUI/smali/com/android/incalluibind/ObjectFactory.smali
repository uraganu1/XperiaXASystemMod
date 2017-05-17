.class public Lcom/android/incalluibind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newEmergencyCallListener()Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
