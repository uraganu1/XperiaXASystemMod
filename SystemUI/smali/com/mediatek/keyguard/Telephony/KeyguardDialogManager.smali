.class public Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;
.super Ljava/lang/Object;
.source "KeyguardDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;,
        Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialogSequenceManager:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;)V

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mDialogSequenceManager:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    .line 48
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->sInstance:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->sInstance:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->sInstance:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;

    return-object v0
.end method


# virtual methods
.method public isEncryptMode()Z
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reportDialogClose()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mDialogSequenceManager:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->reportDialogClose()V

    .line 90
    return-void
.end method

.method public requestShowDialog(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager;->mDialogSequenceManager:Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogSequenceManager;->requestShowDialog(Lcom/mediatek/keyguard/Telephony/KeyguardDialogManager$DialogShowCallBack;)V

    .line 79
    return-void
.end method
