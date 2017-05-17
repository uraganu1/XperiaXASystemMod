.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushAppView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$appScreen:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$appScreen"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->val$appScreen:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$5;->val$appScreen:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap0(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    return-void
.end method
