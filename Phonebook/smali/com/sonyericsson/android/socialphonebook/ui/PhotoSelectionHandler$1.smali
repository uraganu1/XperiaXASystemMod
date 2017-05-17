.class Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

.field final synthetic val$toCrop:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;
    .param p2, "val$toCrop"    # Landroid/net/Uri;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->val$toCrop:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->val$toCrop:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-wrap0(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to crop photo from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$1;->val$toCrop:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
