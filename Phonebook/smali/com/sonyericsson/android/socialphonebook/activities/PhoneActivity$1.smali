.class Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;
.super Landroid/database/ContentObserver;
.source "PhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 605
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 606
    const-string/jumbo v2, "com.sonymobile.one_hand_phonebook"

    .line 607
    const/4 v3, 0x0

    .line 605
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 608
    .local v0, "currentMode":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->getMode(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 609
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->setMode(I)V

    .line 610
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/OneHandedUtils;->setModeChanged(Z)V

    .line 604
    :cond_0
    return-void
.end method
