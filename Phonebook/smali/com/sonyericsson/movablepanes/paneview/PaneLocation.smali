.class public Lcom/sonyericsson/movablepanes/paneview/PaneLocation;
.super Ljava/lang/Object;
.source "PaneLocation.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/util/Recyclable;


# static fields
.field private static sRecycledLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/movablepanes/paneview/PaneLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public drawRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->sRecycledLocations:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public static obtain()Lcom/sonyericsson/movablepanes/paneview/PaneLocation;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->sRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    invoke-direct {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;-><init>()V

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->sRecycledLocations:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->sRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    return v4

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    return v3

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 73
    return v3

    :cond_2
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    .line 75
    .local v0, "other":Lcom/sonyericsson/movablepanes/paneview/PaneLocation;
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 76
    iget-object v1, v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    .line 77
    return v3

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 79
    return v3

    .line 80
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 58
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->sRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public set(Lcom/sonyericsson/movablepanes/paneview/PaneLocation;)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/movablepanes/paneview/PaneLocation;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/sonyericsson/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    return-void
.end method
