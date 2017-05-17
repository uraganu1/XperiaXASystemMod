.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;
.super Landroid/os/AsyncTask;
.source "VerizonContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->readSync()Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isVilteProvisioned:Z

    if-ne v1, v2, :cond_0

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isMobileDataEnabled:Z

    if-eq v1, v2, :cond_2

    .line 424
    :cond_0
    const/4 v0, 0x1

    .line 428
    .local v0, "isVilteSupportChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->copy(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get1(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$ResolverCallback;->onConfiguration(Z)V

    .line 420
    .end local v0    # "isVilteSupportChanged":Z
    :cond_1
    return-void

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isAirplaneModeEnabled:Z

    if-ne v1, v2, :cond_0

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get3(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;->isImsVopsEnabled:Z

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isVilteSupportChanged":Z
    goto :goto_0

    .end local v0    # "isVilteSupportChanged":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isVilteSupportChanged":Z
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 420
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncReaderTask;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$VilteContentStatus;)V

    return-void
.end method
