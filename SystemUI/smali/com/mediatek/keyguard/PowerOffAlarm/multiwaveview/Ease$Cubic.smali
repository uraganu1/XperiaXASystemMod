.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$1;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$2;,
        Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$3;
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
    .line 34
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$1;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$1;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    .line 39
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$2;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$2;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 44
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$3;

    invoke-direct {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic$3;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
