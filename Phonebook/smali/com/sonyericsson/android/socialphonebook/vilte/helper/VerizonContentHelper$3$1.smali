.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3$1;
.super Ljava/lang/Object;
.source "VerizonContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3$1;->this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3$1;->this$1:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;->onCapabilitesChange()V

    .line 207
    return-void
.end method
