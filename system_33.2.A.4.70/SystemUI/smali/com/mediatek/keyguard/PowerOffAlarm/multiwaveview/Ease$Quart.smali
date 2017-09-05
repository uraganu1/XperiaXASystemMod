.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$2;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$3;
    }
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$1;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    .line 79
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$2;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    .line 84
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$3;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    .line 73
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
