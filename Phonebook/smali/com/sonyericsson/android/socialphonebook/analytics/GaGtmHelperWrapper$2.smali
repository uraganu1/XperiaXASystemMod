.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$2;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->unsubscribeGaSettingChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$2;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap9(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;)V

    .line 202
    return-void
.end method
