.class public Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;
.super Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AdapterItem"
.end annotation


# instance fields
.field protected animateMove:Z

.field protected animateMoveFrom:Landroid/graphics/Rect;

.field protected animateMoveTo:Landroid/graphics/Rect;

.field protected animateScaleUp:Z

.field private id:J

.field private position:I

.field protected viewValid:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->id:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->position:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->id:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->position:I

    return p1
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneView$Item;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 91
    iput-boolean v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateScaleUp:Z

    .line 93
    iput-boolean v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMove:Z

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveFrom:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->animateMoveTo:Landroid/graphics/Rect;

    .line 81
    return-void
.end method
