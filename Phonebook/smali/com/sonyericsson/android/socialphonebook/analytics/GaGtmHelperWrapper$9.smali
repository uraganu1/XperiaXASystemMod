.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayer(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dimension:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$dimension"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->val$dimension:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->val$context:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->val$dimension:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;->mKey:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$9;->val$dimension:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaCustomDimension;->mValue:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap5(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/util/Map;)V

    .line 628
    return-void
.end method
