.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$2;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$3;
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
    .line 54
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$1;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 59
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$2;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 64
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$3;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    .line 53
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
