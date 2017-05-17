.class Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;
.super Ljava/lang/Object;
.source "GaGtmHelperWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p2, "val$event"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$context:Landroid/content/Context;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 580
    if-eqz v0, :cond_0

    .line 582
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mCategory:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mLabel:Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-wide v6, v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mValue:J

    .line 582
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap2(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 579
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->this$0:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v4, v4, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mAction:Ljava/lang/String;

    .line 586
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-object v5, v5, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$7;->val$event:Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;

    iget-wide v6, v6, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper$GaEvent;->mValue:J

    .line 585
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->-wrap3(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
