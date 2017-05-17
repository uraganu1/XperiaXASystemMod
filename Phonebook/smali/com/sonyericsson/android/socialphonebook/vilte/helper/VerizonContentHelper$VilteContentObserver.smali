.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;
.super Landroid/database/ContentObserver;
.source "VerizonContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VilteContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .line 399
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 398
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-wrap0(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V

    .line 403
    return-void
.end method
