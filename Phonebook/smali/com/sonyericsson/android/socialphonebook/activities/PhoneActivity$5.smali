.class Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$5;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->showCallScreenIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$5;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    check-cast v0, Landroid/telecom/TelecomManager;

    .line 386
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 383
    return-void
.end method
