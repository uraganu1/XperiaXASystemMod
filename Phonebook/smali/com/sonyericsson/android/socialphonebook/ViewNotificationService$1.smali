.class Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;
.super Ljava/lang/Object;
.source "ViewNotificationService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/android/contacts/common/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;
    .param p2, "val$startId"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V
    .locals 3
    .param p2, "contact"    # Lcom/android/contacts/common/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;",
            "Lcom/android/contacts/common/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/common/model/Contact;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->stopSelfResult(I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error reseting loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error stopping service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "contact"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p2, Lcom/android/contacts/common/model/Contact;

    .end local p2    # "contact":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ViewNotificationService$1;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method
