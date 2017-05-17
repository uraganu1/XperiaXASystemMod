.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1$1;
.super Ljava/lang/Object;
.source "VerizonContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;->onCapabilitiesReceived(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1$1;->this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$1;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;->onCapabilitesChange()V

    .line 276
    return-void
.end method
