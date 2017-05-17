.class Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;
.super Ljava/lang/Object;
.source "CallLogContentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 403
    sget-object v2, Lcom/sonyericsson/provider/VoIPCallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 402
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 404
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->-set0(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Z)Z

    .line 406
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 401
    :cond_0
    return-void
.end method
