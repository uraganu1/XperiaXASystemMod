.class Lcom/sonyericsson/android/socialphonebook/AttachImage$1;
.super Ljava/lang/Object;
.source "AttachImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/AttachImage;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/AttachImage;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/AttachImage;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AttachImage;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AttachImage;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AttachImage;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AttachImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to crop photo from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AttachImage$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
