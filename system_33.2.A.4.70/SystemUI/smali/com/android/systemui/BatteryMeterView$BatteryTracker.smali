.class final Lcom/android/systemui/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryTracker"
.end annotation


# instance fields
.field health:I

.field level:I

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 471
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    :cond_0
    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 492
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    .line 494
    const-string/jumbo v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    .line 492
    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 496
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    .line 497
    iget v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugType:I

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 498
    const-string/jumbo v1, "health"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    .line 500
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    .line 502
    const-string/jumbo v1, "technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    .line 503
    const-string/jumbo v1, "voltage"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->voltage:I

    .line 504
    const-string/jumbo v1, "temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->temperature:I

    .line 506
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 507
    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f090109

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 487
    :cond_1
    :goto_1
    return-void

    .line 490
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 497
    goto :goto_0

    .line 509
    :cond_4
    const-string/jumbo v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 511
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
