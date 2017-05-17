.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$category"    # Ljava/lang/String;
    .param p4, "val$action"    # Ljava/lang/String;
    .param p5, "val$label"    # Ljava/lang/String;
    .param p6, "val$value"    # J

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$category:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$action:Ljava/lang/String;

    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$label:Ljava/lang/String;

    iput-wide p6, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 568
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$category:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$action:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$label:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$6;->val$value:J

    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 567
    return-void
.end method
