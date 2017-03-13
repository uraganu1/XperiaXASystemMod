.class public Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlowManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

.field private x:F

.field private y:F


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->alpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->radius:F

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->x:F

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->y:F

    return v0
.end method

.method public constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 70
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->alpha:F

    .line 66
    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->radius:F

    .line 96
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x1"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->x:F

    .line 72
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y1"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$GlowManager;->y:F

    .line 80
    return-void
.end method
