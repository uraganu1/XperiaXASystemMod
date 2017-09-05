.class Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "SimDataConnectionTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string/jumbo v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    const-string/jumbo v8, "state"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 462
    .local v1, "enabled":Z
    const-string/jumbo v7, "SimDataConnectionTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "airline mode changed: state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-boolean v7, v7, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimConnStateTrackerReady:Z

    if-eqz v7, :cond_2

    .line 464
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7, v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap3(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Z)V

    .line 466
    :cond_2
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto :goto_0

    .line 468
    .end local v1    # "enabled":Z
    :cond_3
    const-string/jumbo v8, "android.intent.action.ANY_DATA_STATE"

    .line 467
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 469
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v8, p2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap1(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 470
    .local v3, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const/4 v2, 0x0

    .line 471
    .local v2, "isApnTypeChange":Z
    const-string/jumbo v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "types":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 473
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "typeArray":[Ljava/lang/String;
    array-length v8, v5

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v4, v5, v7

    .line 475
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v9, "default"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 476
    const/4 v2, 0x1

    .line 481
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "typeArray":[Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_0

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v7, :cond_5

    .line 482
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v7, :cond_0

    .line 483
    :cond_5
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 484
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto/16 :goto_0

    .line 474
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "typeArray":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 486
    .end local v2    # "isApnTypeChange":Z
    .end local v3    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "typeArray":[Ljava/lang/String;
    .end local v6    # "types":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 487
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto/16 :goto_0

    .line 488
    :cond_8
    const-string/jumbo v8, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 489
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap5(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    .line 490
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    .line 491
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap2(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto/16 :goto_0

    .line 492
    :cond_9
    const-string/jumbo v8, "com.android.mms.transaction.START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 494
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-object v7, v7, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-boolean v7, v7, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimConnStateTrackerReady:Z

    if-eqz v7, :cond_0

    .line 495
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap4(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Z)V

    .line 496
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto/16 :goto_0

    .line 499
    :cond_a
    const-string/jumbo v8, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 501
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-object v8, v8, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v8}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-boolean v8, v8, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimConnStateTrackerReady:Z

    if-eqz v8, :cond_0

    .line 502
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v8, v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap4(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Z)V

    .line 503
    iget-object v7, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v7}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    goto/16 :goto_0
.end method
