.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;
.super Lcom/gsma/services/rcs/capability/CapabilitiesListener;
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
    .line 268
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/CapabilitiesListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesReceived(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "capability"    # Lcom/gsma/services/rcs/capability/Capabilities;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get5(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get4(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1$1;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method
