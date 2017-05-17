.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->setupGtm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap7(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V

    .line 433
    return-void
.end method
