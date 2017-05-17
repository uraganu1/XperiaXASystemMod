.class public Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;
.super Ljava/lang/Object;
.source "SIMServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$ServiceWorkData;,
        Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;
    }
.end annotation


# static fields
.field public static final ACTION_PHB_LOAD_FINISHED:Ljava/lang/String; = "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

.field public static final SERVICE_DELETE_CONTACTS:I = 0x1

.field public static final SERVICE_IDLE:I = 0x0

.field public static final SERVICE_IMPORT_CONTACTS:I = 0x3

.field public static final SERVICE_QUERY_SIM:I = 0x2

.field public static final SERVICE_SLOT_KEY:Ljava/lang/String; = "which_slot"

.field public static final SERVICE_SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription_key"

.field public static final SERVICE_WORK_DELETE:I = 0x4

.field public static final SERVICE_WORK_EDIT:I = 0x3

.field public static final SERVICE_WORK_IMPORT:I = 0x1

.field public static final SERVICE_WORK_NONE:I = 0x0

.field public static final SERVICE_WORK_REMOVE:I = 0x2

.field public static final SERVICE_WORK_TYPE:Ljava/lang/String; = "work_type"

.field public static final SERVICE_WORK_UNKNOWN:I = -0x1

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_UIM:I = 0x2

.field public static final SIM_TYPE_UNKNOWN:I = -0x1

.field public static final SIM_TYPE_USIM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SIMServiceUtils"

.field public static final TYPE_IMPORT:I = 0x1

.field public static final TYPE_REMOVE:I = 0x2

.field private static mSIMProcessorState:Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceState(J)I
    .locals 1
    .param p0, "subId"    # J

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceRunning(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 78
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;->mSIMProcessorState:Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;->mSIMProcessorState:Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;->isImportRemoveRunning(J)Z

    move-result v0

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static sendFinishIntent(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # J

    .prologue
    .line 71
    const-string/jumbo v1, "SIMServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[sendFinishIntent]subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static setSIMProcessorState(Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;)V
    .locals 0
    .param p0, "processorState"    # Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;

    .prologue
    .line 90
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils;->mSIMProcessorState:Lcom/sonyericsson/android/socialphonebook/SIMServiceUtils$SIMProcessorState;

    .line 89
    return-void
.end method
