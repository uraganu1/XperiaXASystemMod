.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;
.super Landroid/telephony/PhoneStateListener;
.source "VerizonContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    if-nez v1, :cond_1

    .line 383
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 385
    .local v0, "notifyChange":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v3

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v3, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isCallStateIdle:Z

    .line 387
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;->onConfiguration(Z)V

    .line 379
    :cond_0
    return-void

    .line 382
    .end local v0    # "notifyChange":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "notifyChange":Z
    goto :goto_0

    .line 383
    .end local v0    # "notifyChange":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "notifyChange":Z
    goto :goto_0

    :cond_3
    move v1, v2

    .line 385
    goto :goto_1
.end method
