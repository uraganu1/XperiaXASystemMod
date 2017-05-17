.class Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;
.super Landroid/os/AsyncTask;
.source "VerizonContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWriterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
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
    .line 437
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 440
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 441
    array-length v1, p1

    if-nez v1, :cond_0

    return-object v3

    .line 442
    :cond_0
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 443
    .local v0, "enable":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper$AsyncWriterTask;->this$0:Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;->-get6(Lcom/sonyericsson/android/socialphonebook/vilte/helper/VerizonContentHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "video_setting_on"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ims/ImsSettings$Volte;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    return-object v3

    .line 442
    .end local v0    # "enable":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":I
    goto :goto_0
.end method
