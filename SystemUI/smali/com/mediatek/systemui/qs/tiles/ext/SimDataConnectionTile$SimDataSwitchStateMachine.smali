.class Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;
.super Ljava/lang/Object;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimDataSwitchStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;,
        Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;
    }
.end annotation


# static fields
.field private static synthetic -com_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues:[I = null

.field private static final EVENT_SWITCH_TIME_OUT:I = 0x7d0

.field private static final SWITCH_TIME_OUT_LENGTH:I = 0x7530

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"


# instance fields
.field final synthetic $SWITCH_TABLE$com$mediatek$systemui$qs$tiles$ext$SimDataConnectionTile$SIMConnState:[I

.field private mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

.field private mDataTimerHandler:Landroid/os/Handler;

.field private mIsAirlineMode:Z

.field protected mIsUserSwitching:Z

.field mMmsOngoing:Z

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mSimConnStateTrackerReady:Z

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;


# direct methods
.method private static synthetic -getcom_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-com_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-com_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->values()[Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-virtual {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-com_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isMmsOngoing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Z)V
    .locals 0
    .param p1, "airplaneMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->setAirplaneMode(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;Z)V
    .locals 0
    .param p1, "ongoing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->setIsMmsOnging(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->unRegisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->updateSimConnTile()V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)V
    .locals 3
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget-object v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSlotCount:I

    .line 430
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mDataTimerHandler:Landroid/os/Handler;

    .line 453
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$2;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    invoke-static {p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v1

    .line 198
    const-string/jumbo v2, "phone"

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, "simIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSlotCount:I

    .line 209
    iget v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSlotCount:I

    new-array v1, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 196
    return-void
.end method

.method private addConnTile()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSimConnStateTrackerReady:Z

    .line 212
    return-void
.end method

.method private enterNextState(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;)V
    .locals 5
    .param p1, "state"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterNextState state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-getcom_mediatek_systemui_qs_tiles_ext_SimDataConnectionTile$SIMConnStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 349
    :pswitch_0
    const-string/jumbo v0, "SimDataConnectionTile"

    const-string/jumbo v1, "No Sim or one Sim do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :pswitch_1
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim1 to Sim2! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 355
    invoke-direct {p0, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 358
    :pswitch_2
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim1 to Sim2! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 361
    invoke-direct {p0, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim2 to Sim1! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 367
    invoke-direct {p0, v3}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 370
    :pswitch_4
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim2 to Sim1! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 373
    invoke-direct {p0, v3}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 376
    :pswitch_5
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim1 to Sim2! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0, v4}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 381
    :pswitch_6
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to switch from Sim2 to Sim1! mSimCurrentCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, v3}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 547
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 549
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 551
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 575
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;-><init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;II)V

    return-object v0
.end method

.method private handleDataConnectionChange(I)V
    .locals 10
    .param p1, "newSlot"    # I

    .prologue
    const/4 v9, 0x0

    .line 399
    const-string/jumbo v5, "SimDataConnectionTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDataConnectionChange, newSlot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 402
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mDataTimerHandler:Landroid/os/Handler;

    .line 403
    const-wide/16 v6, 0x7530

    .line 402
    const/16 v8, 0x7d0

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 404
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v5}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 406
    .local v2, "si":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 408
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 409
    .local v0, "dataEnabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 410
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 411
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 412
    .local v3, "subId":I
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 413
    const-string/jumbo v5, "SimDataConnectionTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDataConnectionChange. newSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 414
    const-string/jumbo v7, " subId = "

    .line 413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v5}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 416
    if-eqz v0, :cond_0

    .line 417
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 409
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    if-eqz v0, :cond_0

    .line 421
    iget-object v5, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 398
    .end local v0    # "dataEnabled":Z
    .end local v1    # "i":I
    .end local v2    # "si":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v3    # "subId":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void
.end method

.method private isAirplaneMode()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mIsAirlineMode:Z

    return v0
.end method

.method private isDataConnected()Z
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMmsOngoing()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mMmsOngoing:Z

    return v0
.end method

.method private isRadioOn(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 321
    invoke-static {p1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getFirstSubInSlot(I)I

    move-result v0

    .line 322
    .local v0, "subId1":I
    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isRadioOn(I)Z

    move-result v1

    return v1
.end method

.method private isSimEnable(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isSimInsertedBySlot(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isRadioOn(I)Z

    move-result v1

    .line 310
    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimInsertedWithUnAvaliable(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isSimInsertedBySlot(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isRadioOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimLocked(I)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimLocked(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 326
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 327
    .local v1, "simState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 328
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x1

    .line 330
    .local v0, "bSimLocked":Z
    :goto_0
    const-string/jumbo v2, "SimDataConnectionTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSimLocked, slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    const-string/jumbo v4, " bSimLocked= "

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v0

    .line 329
    .end local v0    # "bSimLocked":Z
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "bSimLocked":Z
    goto :goto_0

    .end local v0    # "bSimLocked":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bSimLocked":Z
    goto :goto_0
.end method

.method private isUserSwitching()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mIsUserSwitching:Z

    return v0
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSlotCount:I

    if-ge v0, v2, :cond_1

    .line 563
    invoke-static {v0}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->getFirstSubInSlot(I)I

    move-result v1

    .line 564
    .local v1, "subId":I
    if-ltz v1, :cond_0

    .line 565
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 566
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    .line 567
    const/4 v4, 0x1

    .line 566
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 562
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 561
    .end local v1    # "subId":I
    :cond_1
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 0
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mIsAirlineMode:Z

    .line 530
    return-void
.end method

.method private setIsMmsOnging(Z)V
    .locals 0
    .param p1, "ongoing"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mMmsOngoing:Z

    .line 522
    return-void
.end method

.method private setUserSwitching(Z)V
    .locals 0
    .param p1, "userSwitching"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mIsUserSwitching:Z

    .line 538
    return-void
.end method

.method private switchDataDefaultSIM(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->setUserSwitching(Z)V

    .line 394
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->handleDataConnectionChange(I)V

    .line 390
    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mSlotCount:I

    if-ge v0, v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    .line 589
    const/4 v3, 0x0

    .line 588
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 586
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_1
    return-void
.end method

.method private updateSimConnTile()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-wrap1(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)V

    .line 216
    return-void
.end method


# virtual methods
.method public getCurrentSimConnState()Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    return-object v0
.end method

.method public isClickable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 511
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isSimInsertedBySlot(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isSimInsertedBySlot(Landroid/content/Context;I)Z

    move-result v2

    .line 511
    if-eqz v2, :cond_2

    .line 513
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isRadioOn(I)Z

    move-result v2

    .line 511
    if-eqz v2, :cond_2

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isAirplaneMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    :cond_2
    :goto_0
    return v0

    .line 515
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isMmsOngoing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isUserSwitching()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 227
    invoke-direct {p0, v9}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimEnable(I)Z

    move-result v3

    .line 228
    .local v3, "sim1Enable":Z
    invoke-direct {p0, v10}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimEnable(I)Z

    move-result v5

    .line 230
    .local v5, "sim2Enable":Z
    const/4 v2, 0x0

    .line 231
    .local v2, "sim1Conn":Z
    const/4 v4, 0x0

    .line 233
    .local v4, "sim2Conn":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 234
    .local v1, "dataConnectionId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 235
    const/4 v2, 0x1

    .line 236
    const/4 v4, 0x0

    .line 242
    :cond_0
    :goto_0
    const-string/jumbo v6, "SimDataConnectionTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SimConnStateTracker onActualStateChange sim1Enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    const-string/jumbo v8, ", sim2Enable = "

    .line 242
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez v3, :cond_1

    if-eqz v5, :cond_f

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isDataConnected()Z

    move-result v0

    .line 247
    .local v0, "dataConnected":Z
    const-string/jumbo v6, "SimDataConnectionTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onActualStateChange, dataConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    const-string/jumbo v8, ", sim1Enable = "

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    const-string/jumbo v8, ", sim2Enable = "

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    const-string/jumbo v8, ", sim1Conn = "

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    const-string/jumbo v8, ", sim2Conn = "

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz v0, :cond_9

    .line 251
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 252
    if-eqz v2, :cond_4

    .line 253
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    .line 306
    .end local v0    # "dataConnected":Z
    :cond_2
    :goto_1
    invoke-direct {p0, v9}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->setUserSwitching(Z)V

    .line 226
    return-void

    .line 237
    :cond_3
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 238
    const/4 v2, 0x0

    .line 239
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 255
    .restart local v0    # "dataConnected":Z
    :cond_4
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 257
    :cond_5
    if-nez v3, :cond_7

    if-eqz v5, :cond_7

    .line 258
    invoke-direct {p0, v9}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 260
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 262
    :cond_6
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 264
    :cond_7
    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    .line 265
    invoke-direct {p0, v10}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 267
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 269
    :cond_8
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_E:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 273
    :cond_9
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    .line 274
    if-eqz v2, :cond_a

    .line 275
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 277
    :cond_a
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 279
    :cond_b
    if-nez v3, :cond_d

    if-eqz v5, :cond_d

    .line 280
    invoke-direct {p0, v9}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v2, :cond_c

    .line 282
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 284
    :cond_c
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 286
    :cond_d
    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    .line 287
    invoke-direct {p0, v10}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    .line 289
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_E_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 291
    :cond_e
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_D:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto :goto_1

    .line 296
    .end local v0    # "dataConnected":Z
    :cond_f
    invoke-direct {p0, v9}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v2, :cond_10

    .line 298
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM1_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto/16 :goto_1

    .line 299
    :cond_10
    invoke-direct {p0, v10}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->isSimInsertedWithUnAvaliable(I)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v4, :cond_11

    .line 301
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->SIM2_D_F:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto/16 :goto_1

    .line 303
    :cond_11
    sget-object v6, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;->NO_SIM:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    iput-object v6, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    goto/16 :goto_1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-get0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->setUserSwitching(Z)V

    .line 221
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->mCurrentSimConnState:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;

    invoke-direct {p0, v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->enterNextState(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SIMConnState;)V

    .line 335
    return-void
.end method
