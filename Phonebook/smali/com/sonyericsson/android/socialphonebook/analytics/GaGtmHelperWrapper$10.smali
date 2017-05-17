.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 635
    .local p3, "val$map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$10;->val$map:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap5(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/util/Map;)V

    .line 637
    return-void
.end method
